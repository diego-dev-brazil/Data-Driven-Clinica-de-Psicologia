-- Executar conectado como APP para validar as VIEWS.
-- As contagens devem ser iguais a atual + historico em cada par de tabelas.

SELECT
    (SELECT COUNT(*) FROM acompanhamentos) +
    (SELECT COUNT(*) FROM hacompanhamentos) AS esperado,
    (SELECT COUNT(*) FROM VW_BI_ACOMPANHAMENTOS) AS view_total
FROM dual;

SELECT
    (SELECT COUNT(*) FROM acompanhamentos_mensais) +
    (SELECT COUNT(*) FROM hacompanhamentos_mensais) AS esperado,
    (SELECT COUNT(*) FROM VW_BI_MENSAL) AS view_total
FROM dual;

SELECT
    (SELECT COUNT(*) FROM diagnosticos) +
    (SELECT COUNT(*) FROM hdiagnosticos) AS esperado,
    (SELECT COUNT(*) FROM VW_BI_DIAGNOSTICOS) AS view_total
FROM dual;

SELECT
    (SELECT COUNT(*) FROM acompanhamentos_diagnosticos) +
    (SELECT COUNT(*) FROM hacompanhamentos_diagnosticos) AS esperado,
    (SELECT COUNT(*) FROM VW_BI_RELACOES_DIAGNOSTICOS) AS view_total
FROM dual;

-- Conferir distribuicao por origem.
SELECT origem_registro, COUNT(*) AS quantidade
FROM VW_BI_ACOMPANHAMENTOS
GROUP BY origem_registro
ORDER BY origem_registro;

SELECT origem_registro, COUNT(*) AS quantidade
FROM VW_BI_MENSAL
GROUP BY origem_registro
ORDER BY origem_registro;

SELECT origem_registro, COUNT(*) AS quantidade
FROM VW_BI_DIAGNOSTICOS
GROUP BY origem_registro
ORDER BY origem_registro;

SELECT origem_registro, COUNT(*) AS quantidade
FROM VW_BI_RELACOES_DIAGNOSTICOS
GROUP BY origem_registro
ORDER BY origem_registro;

-- Exemplo: evolucao de consultas, faltas e faturamento por mes e origem.
SELECT
    ano,
    mes,
    origem_registro,
    SUM(quantidade_consultas) AS total_consultas,
    SUM(quantidade_faltas) AS total_faltas,
    SUM(valor_mensal) AS total_valor
FROM VW_BI_MENSAL
GROUP BY ano, mes, origem_registro
ORDER BY ano, mes, origem_registro;
