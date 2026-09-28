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

-- Consulta 02: Tempo médio de permanência por diagnóstico
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
