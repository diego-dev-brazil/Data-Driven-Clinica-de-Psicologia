-- Gerado por Oracle SQL Developer Data Modeler 19.4.0.350.1424
--   em:        2026-09-25 13:24:10 BRT
--   site:      Oracle Database 12cR2
--   tipo:      Oracle Database 12cR2



CREATE SEQUENCE acompanhamentos_aco_id_seq START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE acompanhamentos_mensais_men_id_seq START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE diagnosticos_diag_id_seq START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE modalidades_mod_id_seq START WITH 1 NOCACHE ORDER;

CREATE SEQUENCE motivo_saidas_mot_id_seq START WITH 1 NOCACHE ORDER;

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
    'SituaÃ§Ã£o do cliente
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
    'PerÃ­odo
que ocorreu o acompanhamento do paciente.';

COMMENT ON COLUMN acompanhamentos_mensais.men_vezes_mes IS
    'Quantidade de vezes no mÃªs que o paciente foi consultado';

COMMENT ON COLUMN acompanhamentos_mensais.men_vezes_falta IS
    'Quantidade de vezes no mÃªs que o paciente faltou nas consultas';

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

CREATE TABLE hacompanhamentos (
    haco_id             NUMBER NOT NULL,
    haco_nome_paciente  VARCHAR2(255) NOT NULL,
    haco_status         NUMBER NOT NULL,
    haco_data_inicio    DATE NOT NULL,
    haco_data_fim       DATE,
    haco_mot_id         NUMBER,
    haco_mod_id         NUMBER NOT NULL,
    haco_dt_entrada     DATE NOT NULL
)
LOGGING;

COMMENT ON TABLE hacompanhamentos IS
    'Essa entidade possui como
objetivo registrar os acompanhamentos do paciente.';

COMMENT ON COLUMN hacompanhamentos.haco_id IS
    'Identificador para a
entidade chamada acompanhamento do cliente';

COMMENT ON COLUMN hacompanhamentos.haco_status IS
    'SituaÃ§Ã£o do cliente
no sistema: ativo ou inativo';

COMMENT ON COLUMN hacompanhamentos.haco_data_inicio IS
    'Data do inicio
do acompanhamento do cliente';

COMMENT ON COLUMN hacompanhamentos.haco_data_fim IS
    'Data do fim do
acompanhamento do cliente';

ALTER TABLE hacompanhamentos ADD CONSTRAINT pk_hacompanhamentos PRIMARY KEY ( haco_id , haco_dt_entrada);

CREATE TABLE hacompanhamentos_diagnosticos (
    hacod_diag_id  NUMBER NOT NULL,
    hacod_aco_id   NUMBER NOT NULL,
    hacod_dt_entrada DATE NOT NULL
)
LOGGING;

ALTER TABLE hacompanhamentos_diagnosticos ADD CONSTRAINT pk_aco_diag PRIMARY KEY ( hacod_diag_id,
                                                                                   hacod_aco_id, hacod_dt_entrada );

CREATE TABLE hacompanhamentos_mensais (
    hmen_id            NUMBER NOT NULL,
    hmen_periodo       DATE NOT NULL,
    hmen_vezes_mes     NUMBER(2) NOT NULL,
    hmen_vezes_falta   NUMBER(2),
    hmen_valor_mensal  NUMBER(6, 2) NOT NULL,
    hmen_aco_id        NUMBER NOT NULL,
    hmen_dt_entrada    DATE NOT NULL
)
LOGGING;

COMMENT ON TABLE hacompanhamentos_mensais IS
    'Essa entidade tem como
objetivo registrar dados do acompanhamento mensal do paciente.';

COMMENT ON COLUMN hacompanhamentos_mensais.hmen_id IS
    'Identificador
da entidade acompanhamento mensal.';

COMMENT ON COLUMN hacompanhamentos_mensais.hmen_periodo IS
    'PerÃ­odo
que ocorreu o acompanhamento do paciente.';

COMMENT ON COLUMN hacompanhamentos_mensais.hmen_vezes_mes IS
    'Quantidade de vezes no mÃªs que o paciente foi consultado';

COMMENT ON COLUMN hacompanhamentos_mensais.hmen_vezes_falta IS
    'Quantidade de vezes no mÃªs que o paciente faltou nas consultas';

COMMENT ON COLUMN hacompanhamentos_mensais.hmen_valor_mensal IS
    'Valor pago pelo paciente mensalmente';

ALTER TABLE hacompanhamentos_mensais ADD CONSTRAINT pk_hacompanhamentos_mensais PRIMARY KEY ( hmen_id, hmen_dt_entrada );

CREATE TABLE hdiagnosticos (
    hdiag_id          NUMBER NOT NULL,
    hdiag_nome        VARCHAR2(255) NOT NULL,
    hdiag_dt_entrada  DATE NOT NULL
)
LOGGING;

COMMENT ON TABLE hdiagnosticos IS
    'Essa entidade possui como objetivo
armazenar os diagnostico dos pacientes';

COMMENT ON COLUMN hdiagnosticos.hdiag_id IS
    'Identificador da entidade
diagnostico.';

COMMENT ON COLUMN hdiagnosticos.hdiag_nome IS
    'Nome do diagnostico';

ALTER TABLE hdiagnosticos ADD CONSTRAINT pk_hdiagnosticos PRIMARY KEY ( hdiag_id, hdiag_dt_entrada );

CREATE TABLE hmodalidades (
    hmod_id          NUMBER NOT NULL,
    hmod_nome        VARCHAR2(10),
    hmod_dt_entrada  DATE NOT NULL
)
LOGGING;

COMMENT ON TABLE hmodalidades IS
    'Essa identidade tem como objetivo
abranger as modalidades em que ma consulta pode ser realizada';

COMMENT ON COLUMN hmodalidades.hmod_id IS
    'Identificador da entidade
modalidade';

COMMENT ON COLUMN hmodalidades.hmod_nome IS
    'O modo do qual o paciente
deseja realizar as consultas.';

ALTER TABLE hmodalidades ADD CONSTRAINT pk_hmodalidades PRIMARY KEY ( hmod_id, hmod_dt_entrada  );

CREATE TABLE hmotivo_saidas (
    hmot_id          NUMBER NOT NULL,
    hmot_nome        VARCHAR2(170) NOT NULL,
    hmot_dt_entrada  DATE NOT NULL
)
LOGGING;

COMMENT ON TABLE hmotivo_saidas IS
    'Essa entidade tem como objetivo
registrar os motivos das saidas dos pacientes';

COMMENT ON COLUMN hmotivo_saidas.hmot_id IS
    'Identificador da entidade
motivo saida';

COMMENT ON COLUMN hmotivo_saidas.hmot_nome IS
    'Motivo do porquÃª o
paciente parou de frequentar as consultas';

ALTER TABLE hmotivo_saidas ADD CONSTRAINT pk_hmotivo_saidas PRIMARY KEY ( hmot_id, hmot_dt_entrada  );

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
    'Motivo do porquÃª o
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

CREATE OR REPLACE TRIGGER acompanhamentos_aco_id_trg 
    BEFORE INSERT ON acompanhamentos 
    FOR EACH ROW 
BEGIN
    :new.aco_id := acompanhamentos_aco_id_seq.nextval;
END; 
/

CREATE OR REPLACE TRIGGER acompanhamentos_mensais_men_id_trg 
    BEFORE INSERT ON acompanhamentos_mensais 
    FOR EACH ROW 
BEGIN
    :new.men_id := acompanhamentos_mensais_men_id_seq.nextval;
END; 
/

CREATE OR REPLACE TRIGGER diagnosticos_diag_id_trg 
    BEFORE INSERT ON diagnosticos 
    FOR EACH ROW 
BEGIN
    :new.diag_id := diagnosticos_diag_id_seq.nextval;
END; 
/

CREATE OR REPLACE TRIGGER modalidades_mod_id_trg 
    BEFORE INSERT ON modalidades 
    FOR EACH ROW 
BEGIN
    :new.mod_id := modalidades_mod_id_seq.nextval;
END; 
/

CREATE OR REPLACE TRIGGER motivo_saidas_mot_id_trg 
    BEFORE INSERT ON motivo_saidas 
    FOR EACH ROW 
BEGIN
    :new.mot_id := motivo_saidas_mot_id_seq.nextval;
END; 
/

-- triggers de historiamento

CREATE OR REPLACE TRIGGER tg_haco BEFORE
    UPDATE OR DELETE ON acompanhamentos
    FOR EACH ROW
BEGIN
    insert into hacompanhamentos values (:old.aco_id, :old.aco_nome_paciente, :old.aco_status, :old.aco_data_inicio, :old.aco_data_fim, :old.aco_mot_id, :old.aco_mod_id, sysdate);
END;
/

CREATE OR REPLACE TRIGGER tg_hacod BEFORE
    UPDATE OR DELETE ON acompanhamentos_diagnosticos
    FOR EACH ROW
BEGIN
    insert into hacompanhamentos_diagnosticos values (:old.acod_diag_id, :old.acod_aco_id, sysdate);
END;
/

CREATE OR REPLACE TRIGGER tg_hdiag BEFORE
    UPDATE OR DELETE ON diagnosticos
    FOR EACH ROW
BEGIN
    insert into hdiagnosticos values (:old.diag_id, :old.diag_nome, sysdate);
END;
/

CREATE OR REPLACE TRIGGER tg_hmen BEFORE
    UPDATE OR DELETE ON acompanhamentos_mensais
    FOR EACH ROW
BEGIN
    insert into hacompanhamentos_mensais values (:old.men_id, :old.men_periodo, :old.men_vezes_mes, :old.men_vezes_falta, :old.men_valor_mensal, :old.men_aco_id, sysdate);
END;
/

CREATE OR REPLACE TRIGGER tg_hmod BEFORE
    UPDATE OR DELETE ON modalidades
    FOR EACH ROW
BEGIN
    insert into hmodalidades values (:old.mod_id, :old.mod_nome, sysdate);
END;
/

CREATE OR REPLACE TRIGGER tg_hmot BEFORE
    UPDATE OR DELETE ON motivo_saidas
    FOR EACH ROW
BEGIN
    insert into hmotivo_saidas values (:old.mot_id, :old.mot_nome, sysdate);
END;
/


-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            12
-- CREATE INDEX                             0
-- ALTER TABLE                             17
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                          11
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
-- CREATE SEQUENCE                          5
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
