-- Gerado por Oracle SQL Developer Data Modeler 19.4.0.350.1424
--   em:        2026-09-18 16:19:17 BRT
--   site:      Oracle Database 12cR2
--   tipo:      Oracle Database 12cR2



CREATE TABLE acompanhamentos (
    aco_id             NUMBER NOT NULL,
    aco_nome_paciente  VARCHAR2(255) NOT NULL,
    aco_status         NUMBER NOT NULL,
    aco_data_inicio    DATE NOT NULL,
    aco_data_fim       DATE,
    aco_mot_id         NUMBER,
    aco_mod_id         NUMBER NOT NULL
)
LOGGING;

COMMENT ON TABLE acompanhamentos IS
    'Essa entidade possui como
objetivo registrar os acompanhamentos do paciente.';

COMMENT ON COLUMN acompanhamentos.aco_id IS
    'Identificador para a
entidade chamada acompanhamento do cliente';

COMMENT ON COLUMN acompanhamentos.aco_status IS
    'Situação do cliente
no sistema: ativo ou inativo';

COMMENT ON COLUMN acompanhamentos.aco_data_inicio IS
    'Data do inicio
do acompanhamento do cliente';

COMMENT ON COLUMN acompanhamentos.aco_data_fim IS
    'Data do fim do
acompanhamento do cliente';

ALTER TABLE acompanhamentos ADD CONSTRAINT pk_acompanhamento PRIMARY KEY ( aco_id );

CREATE TABLE acompanhamentos_diagnosticos (
    acod_diag_id  NUMBER NOT NULL,
    acod_aco_id   NUMBER NOT NULL
)
LOGGING;

ALTER TABLE acompanhamentos_diagnosticos ADD CONSTRAINT pk_acod PRIMARY KEY ( acod_diag_id,
                                                                              acod_aco_id );

CREATE TABLE acompanhamentos_mensais (
    men_id            NUMBER NOT NULL,
    men_periodo       DATE NOT NULL,
    men_vezes_mes     NUMBER(2) NOT NULL,
    men_vezes_falta   NUMBER(2),
    men_valor_mensal  NUMBER(6, 2) NOT NULL,
    men_aco_id        NUMBER NOT NULL
)
LOGGING;

COMMENT ON TABLE acompanhamentos_mensais IS
    'Essa entidade tem como
objetivo registrar dados do acompanhamento mensal do paciente.';

COMMENT ON COLUMN acompanhamentos_mensais.men_id IS
    'Identificador
da entidade acompanhamento mensal.';

COMMENT ON COLUMN acompanhamentos_mensais.men_periodo IS
    'Período
que ocorreu o acompanhamento do paciente.';

COMMENT ON COLUMN acompanhamentos_mensais.men_vezes_mes IS
    'Quantidade de vezes no mês que o paciente foi consultado';

COMMENT ON COLUMN acompanhamentos_mensais.men_vezes_falta IS
    'Quantidade de vezes no mês que o paciente faltou nas consultas';

COMMENT ON COLUMN acompanhamentos_mensais.men_valor_mensal IS
    'Valor pago pelo paciente mensalmente';

ALTER TABLE acompanhamentos_mensais ADD CONSTRAINT pk_men PRIMARY KEY ( men_id );

CREATE TABLE diagnosticos (
    diag_id    NUMBER NOT NULL,
    diag_nome  VARCHAR2(255) NOT NULL
)
LOGGING;

COMMENT ON TABLE diagnosticos IS
    'Essa entidade possui como objetivo
armazenar os diagnostico dos pacientes';

COMMENT ON COLUMN diagnosticos.diag_id IS
    'Identificador da entidade
diagnostico.';

COMMENT ON COLUMN diagnosticos.diag_nome IS
    'Nome do diagnostico';

ALTER TABLE diagnosticos ADD CONSTRAINT pk_diagnostico PRIMARY KEY ( diag_id );

CREATE TABLE modalidades (
    mod_id    NUMBER NOT NULL,
    mod_nome  VARCHAR2(10)
)
LOGGING;

COMMENT ON TABLE modalidades IS
    'Essa identidade tem como objetivo
abranger as modalidades em que ma consulta pode ser realizada';

COMMENT ON COLUMN modalidades.mod_id IS
    'Identificador da entidade
modalidade';

COMMENT ON COLUMN modalidades.mod_nome IS
    'O modo do qual o paciente
deseja realizar as consultas.';

ALTER TABLE modalidades ADD CONSTRAINT pk_modalidade PRIMARY KEY ( mod_id );

CREATE TABLE motivo_saidas (
    mot_id    NUMBER NOT NULL,
    mot_nome  VARCHAR2(170) NOT NULL
)
LOGGING;

COMMENT ON TABLE motivo_saidas IS
    'Essa entidade tem como objetivo
registrar os motivos das saidas dos pacientes';

COMMENT ON COLUMN motivo_saidas.mot_id IS
    'Identificador da entidade
motivo saida';

COMMENT ON COLUMN motivo_saidas.mot_nome IS
    'Motivo do porquê o
paciente parou de frequentar as consultas';

ALTER TABLE motivo_saidas ADD CONSTRAINT pk_mot PRIMARY KEY ( mot_id );

ALTER TABLE acompanhamentos
    ADD CONSTRAINT fk_aco_mod FOREIGN KEY ( aco_mod_id )
        REFERENCES modalidades ( mod_id )
    NOT DEFERRABLE;

ALTER TABLE acompanhamentos
    ADD CONSTRAINT fk_aco_mot FOREIGN KEY ( aco_mot_id )
        REFERENCES motivo_saidas ( mot_id )
    NOT DEFERRABLE;

ALTER TABLE acompanhamentos_diagnosticos
    ADD CONSTRAINT fk_acod_aco FOREIGN KEY ( acod_aco_id )
        REFERENCES acompanhamentos ( aco_id )
    NOT DEFERRABLE;

ALTER TABLE acompanhamentos_diagnosticos
    ADD CONSTRAINT fk_acod_diag FOREIGN KEY ( acod_diag_id )
        REFERENCES diagnosticos ( diag_id )
    NOT DEFERRABLE;

ALTER TABLE acompanhamentos_mensais
    ADD CONSTRAINT fk_men_aco FOREIGN KEY ( men_aco_id )
        REFERENCES acompanhamentos ( aco_id )
    NOT DEFERRABLE;

CREATE SEQUENCE acompanhamentos_aco_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER acompanhamentos_aco_id_trg BEFORE
    INSERT ON acompanhamentos
    FOR EACH ROW
BEGIN
    :new.aco_id := acompanhamentos_aco_id_seq.nextval;
END;
/

CREATE SEQUENCE acompanhamentos_diagnosticos_acod_diag_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER acompanhamentos_diagnosticos_acod_diag_id_trg BEFORE
    INSERT ON acompanhamentos_diagnosticos
    FOR EACH ROW
BEGIN
    :new.acod_diag_id := acompanhamentos_diagnosticos_acod_diag_id_seq.nextval;
END;
/

CREATE SEQUENCE acompanhamentos_mensais_men_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER acompanhamentos_mensais_men_id_trg BEFORE
    INSERT ON acompanhamentos_mensais
    FOR EACH ROW
BEGIN
    :new.men_id := acompanhamentos_mensais_men_id_seq.nextval;
END;
/

CREATE SEQUENCE diagnosticos_diag_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER diagnosticos_diag_id_trg BEFORE
    INSERT ON diagnosticos
    FOR EACH ROW
BEGIN
    :new.diag_id := diagnosticos_diag_id_seq.nextval;
END;
/

CREATE SEQUENCE modalidades_mod_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER modalidades_mod_id_trg BEFORE
    INSERT ON modalidades
    FOR EACH ROW
BEGIN
    :new.mod_id := modalidades_mod_id_seq.nextval;
END;
/

CREATE SEQUENCE motivo_saidas_mot_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER motivo_saidas_mot_id_trg BEFORE
    INSERT ON motivo_saidas
    FOR EACH ROW
BEGIN
    :new.mot_id := motivo_saidas_mot_id_seq.nextval;
END;
/



-- Relat�rio do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             6
-- CREATE INDEX                             0
-- ALTER TABLE                             11
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           6
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          6
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
