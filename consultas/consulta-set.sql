-- CONSULTAS DO DIEGO

-- Consulta 01: Porcentagem de faltas ao longo do período
SELECT 
    TO_CHAR(NVL(m.men_periodo, hm.hmen_periodo), 'YYYY-MM') AS periodo,
    ROUND(
        (SUM(NVL(m.men_vezes_falta, NVL(hm.hmen_vezes_falta, 0))) / 
         NULLIF(SUM(NVL(m.men_vezes_mes, hm.hmen_vezes_mes)), 0)) * 100, 
        2
    ) AS perc_faltas
FROM acompanhamentos_mensais m
FULL OUTER JOIN hacompanhamentos_mensais hm 
    ON m.men_id = hm.hmen_id
GROUP BY TO_CHAR(NVL(m.men_periodo, hm.hmen_periodo), 'YYYY-MM')
ORDER BY periodo;

-- Consulta 02: Valor recebido ao longo do tempo por cada cliente
SELECT 
    ha.haco_nome_paciente AS paciente,
    TO_CHAR(hm.hmen_periodo, 'YYYY-MM') AS periodo,
    SUM(hm.hmen_vezes_mes) AS total_vezes,
    SUM(hm.hmen_valor_mensal) AS total_recebido
FROM hacompanhamentos_mensais hm
JOIN hacompanhamentos ha ON ha.haco_id = hm.hmen_aco_id
GROUP BY ha.haco_nome_paciente, TO_CHAR(hm.hmen_periodo, 'YYYY-MM')
ORDER BY ha.haco_nome_paciente, periodo;

--Consulta do Rafael:

-- Consulta 01: Total de altas por diagnóstico considerando todo o período
SELECT 
    d.diag_nome AS diagnostico,
    COUNT(DISTINCT ha.haco_id) AS total_altas
FROM hacompanhamentos ha
JOIN motivo_saidas ms ON ms.mot_id = ha.haco_mot_id
JOIN hacompanhamentos_diagnosticos had ON had.hacod_aco_id = ha.haco_id
JOIN diagnosticos d ON d.diag_id = had.hacod_diag_id
WHERE ms.mot_nome LIKE 'Alta%'
GROUP BY d.diag_nome
ORDER BY total_altas DESC;

-- Consulta 02: Tempo médio de permanência por diagnóstico e seus motivos
SELECT 
    d.diag_nome AS diagnostico,
    ROUND(MEDIAN(MONTHS_BETWEEN(ha.haco_data_fim, ha.haco_data_inicio)), 1) AS mediana_permanencia_meses,
    STATS_MODE(ms.mot_nome) AS motivo_saida_mais_comum
FROM hacompanhamentos ha
JOIN motivo_saidas ms 
    ON ms.mot_id = ha.haco_mot_id
JOIN hacompanhamentos_diagnosticos had 
    ON had.hacod_aco_id = ha.haco_id
JOIN diagnosticos d 
    ON d.diag_id = had.hacod_diag_id
WHERE ha.haco_mot_id IS NOT NULL
  AND ha.haco_data_fim IS NOT NULL
GROUP BY d.diag_nome
ORDER BY mediana_permanencia_meses DESC;

--Consulta do Pedro

-- Consulta 01: Volume mensal de encerramentos históricos por modalidade
SELECT
    TO_CHAR(h.haco_data_fim, 'YYYY-MM') AS periodo,
    m.mod_nome AS modalidade,
    COUNT(DISTINCT h.haco_id) AS total_encerramentos
FROM hacompanhamentos h
JOIN modalidades m
    ON h.haco_mod_id = m.mod_id
WHERE h.haco_data_fim IS NOT NULL
GROUP BY
    TO_CHAR(h.haco_data_fim, 'YYYY-MM'),
    m.mod_nome
ORDER BY
    periodo,
    modalidade;
    
-- Consulta 02: Tempo médio até a saída por modalidade
SELECT
    m.mod_nome AS modalidade,
    ROUND(
        AVG(
            MONTHS_BETWEEN(
                h.haco_data_fim,
                h.haco_data_inicio
            )
        ),
        2
    ) AS tempo_medio_meses,
    COUNT(DISTINCT h.haco_id) AS total_encerramentos
FROM hacompanhamentos h
JOIN modalidades m
    ON h.haco_mod_id = m.mod_id
WHERE h.haco_data_inicio IS NOT NULL
  AND h.haco_data_fim IS NOT NULL
GROUP BY
    m.mod_nome
ORDER BY
    modalidade;
    
-- Consultas do Mateus
   
-- Consulta 01: Faturamento por ano
WITH dados AS (

    SELECT
        a.aco_nome_paciente AS paciente,
        a.aco_data_inicio AS inicio,
        m.men_periodo AS periodo,
        m.men_vezes_mes AS vezes_mes,
        m.men_valor_mensal AS valor_mensal
    FROM acompanhamentos_mensais m
    JOIN acompanhamentos a
        ON a.aco_id = m.men_aco_id

    UNION ALL

    SELECT
        ha.haco_nome_paciente,
        ha.haco_data_inicio,
        hm.hmen_periodo,
        hm.hmen_vezes_mes,
        hm.hmen_valor_mensal
    FROM hacompanhamentos_mensais hm
    JOIN hacompanhamentos ha
        ON ha.haco_id = hm.hmen_aco_id
    WHERE hm.hmen_dt_entrada = (
        SELECT MAX(hm2.hmen_dt_entrada)
        FROM hacompanhamentos_mensais hm2
        WHERE hm2.hmen_id = hm.hmen_id
    )
    AND ha.haco_dt_entrada = (
        SELECT MAX(ha2.haco_dt_entrada)
        FROM hacompanhamentos ha2
        WHERE ha2.haco_id = ha.haco_id
    )
    AND NOT EXISTS (
        SELECT 1
        FROM acompanhamentos a
        JOIN acompanhamentos_mensais m
            ON m.men_aco_id = a.aco_id
        WHERE a.aco_nome_paciente = ha.haco_nome_paciente
          AND a.aco_data_inicio = ha.haco_data_inicio
          AND m.men_periodo = hm.hmen_periodo
    )
)

SELECT
    EXTRACT(YEAR FROM periodo) AS ano,
    SUM(vezes_mes) AS total_consultas,
    SUM(valor_mensal) AS faturamento_total
FROM dados
GROUP BY EXTRACT(YEAR FROM periodo)
ORDER BY ano;

-- Consulta 02: Quantidade de saída por motivos 
WITH dados AS (

    SELECT
        a.aco_nome_paciente AS paciente,
        a.aco_data_inicio AS inicio,
        a.aco_status AS status,
        a.aco_mot_id AS motivo_id
    FROM acompanhamentos a

    UNION ALL

    SELECT
        ha.haco_nome_paciente,
        ha.haco_data_inicio,
        ha.haco_status,
        ha.haco_mot_id
    FROM hacompanhamentos ha
    WHERE ha.haco_dt_entrada = (
        SELECT MAX(ha2.haco_dt_entrada)
        FROM hacompanhamentos ha2
        WHERE ha2.haco_id = ha.haco_id
    )
    AND NOT EXISTS (
        SELECT 1
        FROM acompanhamentos a
        WHERE a.aco_nome_paciente = ha.haco_nome_paciente
          AND a.aco_data_inicio = ha.haco_data_inicio
    )
)

SELECT
    ms.mot_nome AS motivo_saida,
    COUNT(*) AS quantidade_pacientes
FROM dados d
JOIN motivo_saidas ms
    ON ms.mot_id = d.motivo_id
WHERE d.status = 0
GROUP BY ms.mot_nome
ORDER BY quantidade_pacientes DESC;
