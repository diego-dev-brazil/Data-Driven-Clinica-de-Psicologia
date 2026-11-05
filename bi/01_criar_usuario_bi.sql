-- Executar conectado como SYS ou outro usuário com privilégios de administração.
-- Troque a senha de exemplo por uma senha forte.
-- Não reutilize a senha do APP e não versione senhas reais.

CREATE USER BI IDENTIFIED BY "TROQUE_ESSA_SENHA"
    QUOTA 0 ON USERS;

GRANT CREATE SESSION TO BI;

-- O usuário BI não recebe permissões de escrita, RESOURCE ou DBA.
-- As permissões SELECT nas VIEWS serão concedidas pelo proprietário APP
-- após a criação delas (script 03_conceder_permissoes_bi.sql).
