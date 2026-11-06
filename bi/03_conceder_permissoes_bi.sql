-- Executar conectado como APP, proprietario das VIEWS.
-- O usuario BI deve ter sido criado previamente pelo administrador.

GRANT SELECT ON VW_BI_ACOMPANHAMENTOS TO BI;
GRANT SELECT ON VW_BI_MENSAL TO BI;
GRANT SELECT ON VW_BI_DIAGNOSTICOS TO BI;
GRANT SELECT ON VW_BI_RELACOES_DIAGNOSTICOS TO BI;
