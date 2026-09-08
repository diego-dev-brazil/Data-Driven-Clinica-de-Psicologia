-- Gerado por Oracle SQL Developer Data Modeler 24.3.1.351.0831
--   em:        2026-09-03 14:05:24 BRT
--   site:      Oracle Database 21c
--   tipo:      Oracle Database 21c



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE ACOMPANHAMENTO 
    ( 
     aco_id              NUMBER  NOT NULL , 
     aco_status          NUMBER  NOT NULL , 
     aco_data_inicio     DATE  NOT NULL , 
     aco_data_fim        DATE , 
     PACIENTE_pac_id     NUMBER  NOT NULL , 
     MOTIVO_SAIDA_mot_id NUMBER  NOT NULL , 
     MODALIDADE_mod_id   NUMBER  NOT NULL 
    ) 
;

COMMENT ON TABLE ACOMPANHAMENTO IS 'Essa entidade possui como objetivo registrar os acompanhamentos do paciente.'
;

COMMENT ON COLUMN ACOMPANHAMENTO.aco_id IS 'Identificador para a entidade chamada acompanhamento do cliente' 
;

COMMENT ON COLUMN ACOMPANHAMENTO.aco_status IS 'Situação do cliente no sistema: ativo ou inativo' 
;

COMMENT ON COLUMN ACOMPANHAMENTO.aco_data_inicio IS 'Data do inicio do acompanhamento do cliente' 
;

COMMENT ON COLUMN ACOMPANHAMENTO.aco_data_fim IS 'Data do fim do acompanhamento do cliente' 
;

ALTER TABLE ACOMPANHAMENTO 
    ADD CONSTRAINT ACOMPANHAMENTO_PK PRIMARY KEY ( aco_id ) ;

CREATE TABLE ACOMPANHAMENTO_DIAGNOSTICO 
    ( 
     DIAGNOSTICO_diag_id   NUMBER  NOT NULL , 
     ACOMPANHAMENTO_aco_id NUMBER  NOT NULL 
    ) 
;

ALTER TABLE ACOMPANHAMENTO_DIAGNOSTICO 
    ADD CONSTRAINT Relation_7_PK PRIMARY KEY ( DIAGNOSTICO_diag_id, ACOMPANHAMENTO_aco_id ) ;

CREATE TABLE ACOMPANHAMENTO_MENSAL 
    ( 
     men_id                NUMBER  NOT NULL , 
     men_periodo           DATE  NOT NULL , 
     men_vezes_mes         NUMBER (2)  NOT NULL , 
     men_vezes_falta       NUMBER (2) , 
     men_valor_mensal      NUMBER (6,2)  NOT NULL , 
     ACOMPANHAMENTO_aco_id NUMBER  NOT NULL 
    ) 
;

COMMENT ON TABLE ACOMPANHAMENTO_MENSAL IS 'Essa entidade tem como objetivo registrar dados do acompanhamento mensal do paciente.'
;

COMMENT ON COLUMN ACOMPANHAMENTO_MENSAL.men_id IS 'Identificador da entidade acompanhamento mensal.' 
;

COMMENT ON COLUMN ACOMPANHAMENTO_MENSAL.men_periodo IS 'Período que ocorreu o acompanhamento do paciente.' 
;

COMMENT ON COLUMN ACOMPANHAMENTO_MENSAL.men_vezes_mes IS 'Quantidade de vezes no mês que o paciente foi consultado' 
;

COMMENT ON COLUMN ACOMPANHAMENTO_MENSAL.men_vezes_falta IS 'Quantidade de vezes no mês que o paciente faltou nas consultas' 
;

COMMENT ON COLUMN ACOMPANHAMENTO_MENSAL.men_valor_mensal IS 'Valor pago pelo paciente mensalmente' 
;

ALTER TABLE ACOMPANHAMENTO_MENSAL 
    ADD CONSTRAINT ACOMPANHAMENTO_MENSAL_PK PRIMARY KEY ( men_id ) ;

CREATE TABLE DIAGNOSTICO 
    ( 
     diag_id   NUMBER  NOT NULL , 
     diag_nome VARCHAR2 (255)  NOT NULL 
    ) 
;

COMMENT ON TABLE DIAGNOSTICO IS 'Essa entidade possui como objetivo armazenar os diagnostico dos pacietes'
;

COMMENT ON COLUMN DIAGNOSTICO.diag_id IS 'Identificador da entidade diagnostico.' 
;

COMMENT ON COLUMN DIAGNOSTICO.diag_nome IS 'Nome do diagnostico' 
;

ALTER TABLE DIAGNOSTICO 
    ADD CONSTRAINT DIAGNOSTICO_PK PRIMARY KEY ( diag_id ) ;

CREATE TABLE MODALIDADE 
    ( 
     mod_id   NUMBER  NOT NULL , 
     mod_nome VARCHAR2 (10) 
    ) 
;

COMMENT ON TABLE MODALIDADE IS 'Essa identidade tem como obetivo abranger as modalidades em que ma consulta pode ser realizada'
;

COMMENT ON COLUMN MODALIDADE.mod_id IS 'Identificador da entidade modalidade' 
;

COMMENT ON COLUMN MODALIDADE.mod_nome IS 'O modo do qual o paciente deseja realizar as consultas.' 
;

ALTER TABLE MODALIDADE 
    ADD CONSTRAINT MODALIDADE_PK PRIMARY KEY ( mod_id ) ;

CREATE TABLE MOTIVO_SAIDA 
    ( 
     mot_id   NUMBER  NOT NULL , 
     mot_nome VARCHAR2 (170)  NOT NULL 
    ) 
;

COMMENT ON TABLE MOTIVO_SAIDA IS 'Essea entidade tem como objetivo registrar os motivos das saidas dos pacientes'
;

COMMENT ON COLUMN MOTIVO_SAIDA.mot_id IS 'Identificador da entidade motivo saida' 
;

COMMENT ON COLUMN MOTIVO_SAIDA.mot_nome IS 'Motivo do porquê o paciente parou de frequentar as consultas' 
;

ALTER TABLE MOTIVO_SAIDA 
    ADD CONSTRAINT MOTIVO_SAIDA_PK PRIMARY KEY ( mot_id ) ;

CREATE TABLE PACIENTE 
    ( 
     pac_id   NUMBER  NOT NULL , 
     pac_nome VARCHAR2 (255)  NOT NULL 
    ) 
;

COMMENT ON TABLE PACIENTE IS 'Essa entidade possui como objetivo registrar os pacientes registrando seu nome.'
;

COMMENT ON COLUMN PACIENTE.pac_id IS 'Identificador da entidade paciente.' 
;

COMMENT ON COLUMN PACIENTE.pac_nome IS 'Nome do paciente' 
;

ALTER TABLE PACIENTE 
    ADD CONSTRAINT PACIENTE_PK PRIMARY KEY ( pac_id ) ;

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE ACOMPANHAMENTO_MENSAL 
    ADD CONSTRAINT ACOMPANHAMENTO_MENSAL_ACOMPANHAMENTO_FK FOREIGN KEY 
    ( 
     ACOMPANHAMENTO_aco_id
    ) 
    REFERENCES ACOMPANHAMENTO 
    ( 
     aco_id
    ) 
;

ALTER TABLE ACOMPANHAMENTO 
    ADD CONSTRAINT ACOMPANHAMENTO_MODALIDADE_FK FOREIGN KEY 
    ( 
     MODALIDADE_mod_id
    ) 
    REFERENCES MODALIDADE 
    ( 
     mod_id
    ) 
;

ALTER TABLE ACOMPANHAMENTO 
    ADD CONSTRAINT ACOMPANHAMENTO_MOTIVO_SAIDA_FK FOREIGN KEY 
    ( 
     MOTIVO_SAIDA_mot_id
    ) 
    REFERENCES MOTIVO_SAIDA 
    ( 
     mot_id
    ) 
;

ALTER TABLE ACOMPANHAMENTO 
    ADD CONSTRAINT ACOMPANHAMENTO_PACIENTE_FK FOREIGN KEY 
    ( 
     PACIENTE_pac_id
    ) 
    REFERENCES PACIENTE 
    ( 
     pac_id
    ) 
;

ALTER TABLE ACOMPANHAMENTO_DIAGNOSTICO 
    ADD CONSTRAINT Relation_7_ACOMPANHAMENTO_FK FOREIGN KEY 
    ( 
     ACOMPANHAMENTO_aco_id
    ) 
    REFERENCES ACOMPANHAMENTO 
    ( 
     aco_id
    ) 
;

ALTER TABLE ACOMPANHAMENTO_DIAGNOSTICO 
    ADD CONSTRAINT Relation_7_DIAGNOSTICO_FK FOREIGN KEY 
    ( 
     DIAGNOSTICO_diag_id
    ) 
    REFERENCES DIAGNOSTICO 
    ( 
     diag_id
    ) 
;



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             7
-- CREATE INDEX                             0
-- ALTER TABLE                             13
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
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
-- CREATE SEQUENCE                          0
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
-- ERRORS                                   1
-- WARNINGS                                 0
