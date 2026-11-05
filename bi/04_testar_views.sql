-- Executar conectado como APP para validar as VIEWS.
-- As contagens ajudam a identificar erros de criação e duplicidade.

SELECT COUNT(*) AS total_acompanhamentos
FROM VW_BI_ACOMPANHAMENTOS;

SELECT COUNT(*) AS total_registros_mensais
FROM VW_BI_MENSAL;

SELECT COUNT(*) AS total_diagnosticos
FROM VW_BI_DIAGNOSTICOS;

-- Indicadores iniciais para conferir os resultados.

SELECT
    descricao_status,
    COUNT(*) AS quantidade
FROM VW_BI_ACOMPANHAMENTOS
GROUP BY descricao_status
ORDER BY descricao_status;

SELECT
    ano,
    mes,
    SUM(quantidade_consultas) AS total_consultas,
    SUM(quantidade_faltas) AS total_faltas,
    SUM(valor_mensal) AS total_valor
FROM VW_BI_MENSAL
GROUP BY ano, mes
ORDER BY ano, mes;

SELECT
    diagnostico,
    quantidade_acompanhamentos
FROM VW_BI_DIAGNOSTICOS
ORDER BY quantidade_acompanhamentos DESC;
