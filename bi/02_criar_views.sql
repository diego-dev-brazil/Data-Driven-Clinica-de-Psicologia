-- Executar conectado como APP, proprietario das tabelas.
-- Oracle Database 12cR2
--
-- Objetivo: disponibilizar TODO o periodo para analise no Power BI.
-- Cada VIEW une os registros atuais e TODAS as versoes historicas.
-- UNION ALL e intencional: nao elimina versoes repetidas.
-- Nenhuma versao historica e filtrada por NOT EXISTS ou ROW_NUMBER.
--
-- Nas linhas atuais, DATA_REGISTRO_HISTORICO fica NULL.
-- Nas linhas historicas, essa coluna recebe *_DT_ENTRADA, que representa
-- quando o trigger arquivou a versao (nao a data do atendimento).
--
-- As views mantem granularidades separadas para evitar multiplicacao
-- de valores quando um acompanhamento possui varios meses/diagnosticos.
-- Nomes de pacientes nao sao expostos.

------------------------------------------------------------------------
-- 1) ACOMPANHAMENTOS: uma linha por registro atual ou versao historica
------------------------------------------------------------------------

CREATE OR REPLACE VIEW VW_BI_ACOMPANHAMENTOS AS
SELECT
    a.aco_id AS id_acompanhamento,
    a.aco_status AS status,
    a.aco_data_inicio AS data_inicio,
    a.aco_data_fim AS data_fim,
    a.aco_mot_id AS id_motivo_saida,
    a.aco_mod_id AS id_modalidade,
    'ATUAL' AS origem_registro,
    CAST(NULL AS DATE) AS data_registro_historico
FROM acompanhamentos a

UNION ALL

SELECT
    h.haco_id,
    h.haco_status,
    h.haco_data_inicio,
    h.haco_data_fim,
    h.haco_mot_id,
    h.haco_mod_id,
    'HISTORICO',
    h.haco_dt_entrada
FROM hacompanhamentos h;


------------------------------------------------------------------------
-- 2) FINANCEIRO / MENSAL: uma linha por registro mensal atual ou historico
------------------------------------------------------------------------

CREATE OR REPLACE VIEW VW_BI_MENSAL AS
SELECT
    m.men_id AS id_registro_mensal,
    m.men_aco_id AS id_acompanhamento,
    m.men_periodo AS periodo,
    EXTRACT(YEAR FROM m.men_periodo) AS ano,
    EXTRACT(MONTH FROM m.men_periodo) AS mes,
    m.men_vezes_mes AS quantidade_consultas,
    NVL(m.men_vezes_falta, 0) AS quantidade_faltas,
    m.men_valor_mensal AS valor_mensal,
    'ATUAL' AS origem_registro,
    CAST(NULL AS DATE) AS data_registro_historico
FROM acompanhamentos_mensais m

UNION ALL

SELECT
    h.hmen_id,
    h.hmen_aco_id,
    h.hmen_periodo,
    EXTRACT(YEAR FROM h.hmen_periodo),
    EXTRACT(MONTH FROM h.hmen_periodo),
    h.hmen_vezes_mes,
    NVL(h.hmen_vezes_falta, 0),
    h.hmen_valor_mensal,
    'HISTORICO',
    h.hmen_dt_entrada
FROM hacompanhamentos_mensais h;


------------------------------------------------------------------------
-- 3) DIAGNOSTICOS: uma linha por registro atual ou versao historica
------------------------------------------------------------------------

CREATE OR REPLACE VIEW VW_BI_DIAGNOSTICOS AS
SELECT
    d.diag_id AS id_diagnostico,
    d.diag_nome AS diagnostico,
    'ATUAL' AS origem_registro,
    CAST(NULL AS DATE) AS data_registro_historico
FROM diagnosticos d

UNION ALL

SELECT
    h.hdiag_id,
    h.hdiag_nome,
    'HISTORICO',
    h.hdiag_dt_entrada
FROM hdiagnosticos h;


------------------------------------------------------------------------
-- 4) VINCULOS: uma linha por relacao atual ou historica diagnostico/acompanhamento
------------------------------------------------------------------------
-- Mantida separada da VIEW mensal para evitar efeito multiplicador
-- nas somas de consultas, faltas e valores.

CREATE OR REPLACE VIEW VW_BI_RELACOES_DIAGNOSTICOS AS
SELECT
    ad.acod_aco_id AS id_acompanhamento,
    ad.acod_diag_id AS id_diagnostico,
    'ATUAL' AS origem_registro,
    CAST(NULL AS DATE) AS data_registro_historico
FROM acompanhamentos_diagnosticos ad

UNION ALL

SELECT
    h.hacod_aco_id,
    h.hacod_diag_id,
    'HISTORICO',
    h.hacod_dt_entrada
FROM hacompanhamentos_diagnosticos h;

-- Fim das VIEWS.
