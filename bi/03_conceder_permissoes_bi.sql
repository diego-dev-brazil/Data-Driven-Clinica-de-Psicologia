-- Executar conectado como APP, proprietário das VIEWS.
-- O usuário BI deve ter sido criado previamente pelo administrador.

GRANT SELECT ON VW_BI_ACOMPANHAMENTOS TO BI;
GRANT SELECT ON VW_BI_MENSAL TO BI;
GRANT SELECT ON VW_BI_DIAGNOSTICOS TO BI;
