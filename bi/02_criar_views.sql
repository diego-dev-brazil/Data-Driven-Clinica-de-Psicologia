-- Executar conectado como APP, depois da criação das tabelas e das cargas.
-- Oracle Database 12cR2
--
-- Estratégia para tabelas com histórico:
-- 1. A linha atual tem prioridade.
-- 2. Se não houver linha atual, usa-se a versão histórica mais recente.
--
-- IMPORTANTE:
-- As VIEWS não expõem nomes de pacientes nem o vínculo individual
-- entre paciente e diagnóstico. A VIEW de diagnósticos é agregada.

------------------------------------------------------------------------
-- 1) UMA LINHA POR ACOMPANHAMENTO
------------------------------------------------------------------------

CREATE OR REPLACE VIEW VW_BI_ACOMPANHAMENTOS AS
WITH
acompanhamentos_base AS (
    SELECT
        a.aco_id,
        a.aco_status,
        a.aco_data_inicio,
        a.aco_data_fim,
        a.aco_mot_id,
        a.aco_mod_id
    FROM acompanhamentos a

    UNION ALL

    SELECT
        h.haco_id,
        h.haco_status,
        h.haco_data_inicio,
        h.haco_data_fim,
        h.haco_mot_id,
        h.haco_mod_id
    FROM (
        SELECT
            ha.*,
            ROW_NUMBER() OVER (
                PARTITION BY ha.haco_id
                ORDER BY ha.haco_dt_entrada DESC
            ) AS rn
        FROM hacompanhamentos ha
        WHERE NOT EXISTS (
            SELECT 1
            FROM acompanhamentos a
            WHERE a.aco_id = ha.haco_id
        )
    ) h
    WHERE h.rn = 1
),
modalidades_base AS (
    SELECT mod_id, mod_nome
    FROM modalidades

    UNION ALL

    SELECT h.hmod_id, h.hmod_nome
    FROM (
        SELECT
            hm.*,
            ROW_NUMBER() OVER (
                PARTITION BY hm.hmod_id
                ORDER BY hm.hmod_dt_entrada DESC
            ) AS rn
        FROM hmodalidades hm
        WHERE NOT EXISTS (
            SELECT 1
            FROM modalidades m
            WHERE m.mod_id = hm.hmod_id
        )
    ) h
    WHERE h.rn = 1
),
motivos_base AS (
    SELECT mot_id, mot_nome
    FROM motivo_saidas

    UNION ALL

    SELECT h.hmot_id, h.hmot_nome
    FROM (
        SELECT
            hm.*,
            ROW_NUMBER() OVER (
                PARTITION BY hm.hmot_id
                ORDER BY hm.hmot_dt_entrada DESC
            ) AS rn
        FROM hmotivo_saidas hm
        WHERE NOT EXISTS (
            SELECT 1
            FROM motivo_saidas m
            WHERE m.mot_id = hm.hmot_id
        )
    ) h
    WHERE h.rn = 1
)
SELECT
    a.aco_id AS id_acompanhamento,
    a.aco_status AS status,
    CASE
        WHEN a.aco_status = 1 THEN 'Ativo'
        WHEN a.aco_status = 0 THEN 'Inativo'
        ELSE 'Não identificado'
    END AS descricao_status,
    a.aco_data_inicio AS data_inicio,
    a.aco_data_fim AS data_fim,
    m.mod_nome AS modalidade,
    ms.mot_nome AS motivo_saida
FROM acompanhamentos_base a
LEFT JOIN modalidades_base m
    ON m.mod_id = a.aco_mod_id
LEFT JOIN motivos_base ms
    ON ms.mot_id = a.aco_mot_id;


------------------------------------------------------------------------
-- 2) UMA LINHA POR REGISTRO MENSAL
------------------------------------------------------------------------

CREATE OR REPLACE VIEW VW_BI_MENSAL AS
WITH
acompanhamentos_base AS (
    SELECT
        a.aco_id,
        a.aco_status,
        a.aco_data_inicio,
        a.aco_data_fim,
        a.aco_mot_id,
        a.aco_mod_id
    FROM acompanhamentos a

    UNION ALL

    SELECT
        h.haco_id,
        h.haco_status,
        h.haco_data_inicio,
        h.haco_data_fim,
        h.haco_mot_id,
        h.haco_mod_id
    FROM (
        SELECT
            ha.*,
            ROW_NUMBER() OVER (
                PARTITION BY ha.haco_id
                ORDER BY ha.haco_dt_entrada DESC
            ) AS rn
        FROM hacompanhamentos ha
        WHERE NOT EXISTS (
            SELECT 1
            FROM acompanhamentos a
            WHERE a.aco_id = ha.haco_id
        )
    ) h
    WHERE h.rn = 1
),
mensais_base AS (
    SELECT
        m.men_id,
        m.men_periodo,
        m.men_vezes_mes,
        m.men_vezes_falta,
        m.men_valor_mensal,
        m.men_aco_id
    FROM acompanhamentos_mensais m

    UNION ALL

    SELECT
        h.hmen_id,
        h.hmen_periodo,
        h.hmen_vezes_mes,
        h.hmen_vezes_falta,
        h.hmen_valor_mensal,
        h.hmen_aco_id
    FROM (
        SELECT
            hm.*,
            ROW_NUMBER() OVER (
                PARTITION BY hm.hmen_id
                ORDER BY hm.hmen_dt_entrada DESC
            ) AS rn
        FROM hacompanhamentos_mensais hm
        WHERE NOT EXISTS (
            SELECT 1
            FROM acompanhamentos_mensais m
            WHERE m.men_id = hm.hmen_id
        )
    ) h
    WHERE h.rn = 1
)
SELECT
    m.men_id AS id_registro_mensal,
    m.men_aco_id AS id_acompanhamento,
    TRUNC(m.men_periodo, 'MM') AS periodo,
    EXTRACT(YEAR FROM m.men_periodo) AS ano,
    EXTRACT(MONTH FROM m.men_periodo) AS mes,
    m.men_vezes_mes AS quantidade_consultas,
    NVL(m.men_vezes_falta, 0) AS quantidade_faltas,
    m.men_valor_mensal AS valor_mensal,
    a.aco_status AS status_acompanhamento,
    a.aco_mod_id AS id_modalidade,
    a.aco_mot_id AS id_motivo_saida
FROM mensais_base m
LEFT JOIN acompanhamentos_base a
    ON a.aco_id = m.men_aco_id;


------------------------------------------------------------------------
-- 3) INDICADORES AGREGADOS POR DIAGNÓSTICO
------------------------------------------------------------------------
-- Não retorna o ID do acompanhamento nem permite identificar
-- diretamente qual paciente possui determinado diagnóstico.
-- Mesmo dados agregados podem ser sensíveis em grupos muito pequenos.

CREATE OR REPLACE VIEW VW_BI_DIAGNOSTICOS AS
WITH
diagnosticos_base AS (
    SELECT
        d.diag_id,
        d.diag_nome
    FROM diagnosticos d

    UNION ALL

    SELECT
        h.hdiag_id,
        h.hdiag_nome
    FROM (
        SELECT
            hd.*,
            ROW_NUMBER() OVER (
                PARTITION BY hd.hdiag_id
                ORDER BY hd.hdiag_dt_entrada DESC
            ) AS rn
        FROM hdiagnosticos hd
        WHERE NOT EXISTS (
            SELECT 1
            FROM diagnosticos d
            WHERE d.diag_id = hd.hdiag_id
        )
    ) h
    WHERE h.rn = 1
),
relacoes_base AS (
    SELECT
        ad.acod_diag_id,
        ad.acod_aco_id
    FROM acompanhamentos_diagnosticos ad

    UNION ALL

    SELECT
        h.hacod_diag_id,
        h.hacod_aco_id
    FROM (
        SELECT
            had.*,
            ROW_NUMBER() OVER (
                PARTITION BY had.hacod_diag_id, had.hacod_aco_id
                ORDER BY had.hacod_dt_entrada DESC
            ) AS rn
        FROM hacompanhamentos_diagnosticos had
        WHERE NOT EXISTS (
            SELECT 1
            FROM acompanhamentos_diagnosticos ad
            WHERE ad.acod_diag_id = had.hacod_diag_id
              AND ad.acod_aco_id = had.hacod_aco_id
        )
    ) h
    WHERE h.rn = 1
)
SELECT
    d.diag_id AS id_diagnostico,
    d.diag_nome AS diagnostico,
    COUNT(DISTINCT r.acod_aco_id) AS quantidade_acompanhamentos
FROM diagnosticos_base d
LEFT JOIN relacoes_base r
    ON r.acod_diag_id = d.diag_id
GROUP BY
    d.diag_id,
    d.diag_nome;

-- Fim das VIEWS.
