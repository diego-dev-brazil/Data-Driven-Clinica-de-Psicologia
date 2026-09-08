--------------------------------------------------------
-- SEQUENCE PARA ACOMPANHAMENTO
--------------------------------------------------------

CREATE SEQUENCE SEQ_ACO
MINVALUE 1
MAXVALUE 9999999999999999999999999999
INCREMENT BY 1
START WITH 1
NOCACHE
NOORDER
NOCYCLE
NOKEEP
NOSCALE
GLOBAL;


--------------------------------------------------------
-- TRIGGER PARA ACOMPANHAMENTO
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE TRIGGER TG_SEQ_ACO
BEFORE INSERT ON ACOMPANHAMENTO
FOR EACH ROW
BEGIN

    :NEW.ACO_ID := SEQ_ACO.NEXTVAL;

END;
/

ALTER TRIGGER TG_SEQ_ACO ENABLE;


--------------------------------------------------------
-- SEQUENCE PARA ACOMPANHAMENTO_MENSAL
--------------------------------------------------------

CREATE SEQUENCE SEQ_MEN
MINVALUE 1
MAXVALUE 9999999999999999999999999999
INCREMENT BY 1
START WITH 1
NOCACHE
NOORDER
NOCYCLE
NOKEEP
NOSCALE
GLOBAL;


--------------------------------------------------------
-- TRIGGER PARA ACOMPANHAMENTO_MENSAL
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE TRIGGER TG_SEQ_MEN
BEFORE INSERT ON ACOMPANHAMENTO_MENSAL
FOR EACH ROW
BEGIN

    :NEW.MEN_ID := SEQ_MEN.NEXTVAL;

END;
/

ALTER TRIGGER TG_SEQ_MEN ENABLE;


--------------------------------------------------------
-- SEQUENCE PARA DIAGNOSTICO
--------------------------------------------------------

CREATE SEQUENCE SEQ_DIAG
MINVALUE 1
MAXVALUE 9999999999999999999999999999
INCREMENT BY 1
START WITH 1
NOCACHE
NOORDER
NOCYCLE
NOKEEP
NOSCALE
GLOBAL;


--------------------------------------------------------
-- TRIGGER PARA DIAGNOSTICO
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE TRIGGER TG_SEQ_DIAG
BEFORE INSERT ON DIAGNOSTICO
FOR EACH ROW
BEGIN

    :NEW.DIAG_ID := SEQ_DIAG.NEXTVAL;

END;
/

ALTER TRIGGER TG_SEQ_DIAG ENABLE;


--------------------------------------------------------
-- SEQUENCE PARA MODALIDADE
--------------------------------------------------------

CREATE SEQUENCE SEQ_MOD
MINVALUE 1
MAXVALUE 9999999999999999999999999999
INCREMENT BY 1
START WITH 1
NOCACHE
NOORDER
NOCYCLE
NOKEEP
NOSCALE
GLOBAL;


--------------------------------------------------------
-- TRIGGER PARA MODALIDADE
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE TRIGGER TG_SEQ_MOD
BEFORE INSERT ON MODALIDADE
FOR EACH ROW
BEGIN

    :NEW.MOD_ID := SEQ_MOD.NEXTVAL;

END;
/

ALTER TRIGGER TG_SEQ_MOD ENABLE;


--------------------------------------------------------
-- SEQUENCE PARA MOTIVO_SAIDA
--------------------------------------------------------

CREATE SEQUENCE SEQ_MOT
MINVALUE 1
MAXVALUE 9999999999999999999999999999
INCREMENT BY 1
START WITH 1
NOCACHE
NOORDER
NOCYCLE
NOKEEP
NOSCALE
GLOBAL;


--------------------------------------------------------
-- TRIGGER PARA MOTIVO_SAIDA
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE TRIGGER TG_SEQ_MOT
BEFORE INSERT ON MOTIVO_SAIDA
FOR EACH ROW
BEGIN

    :NEW.MOT_ID := SEQ_MOT.NEXTVAL;

END;
/

ALTER TRIGGER TG_SEQ_MOT ENABLE;


--------------------------------------------------------
-- SEQUENCE PARA PACIENTE
--------------------------------------------------------

CREATE SEQUENCE SEQ_PAC
MINVALUE 1
MAXVALUE 9999999999999999999999999999
INCREMENT BY 1
START WITH 1
NOCACHE
NOORDER
NOCYCLE
NOKEEP
NOSCALE
GLOBAL;


--------------------------------------------------------
-- TRIGGER PARA PACIENTE
--------------------------------------------------------

CREATE OR REPLACE NONEDITIONABLE TRIGGER TG_SEQ_PAC
BEFORE INSERT ON PACIENTE
FOR EACH ROW
BEGIN

    :NEW.PAC_ID := SEQ_PAC.NEXTVAL;

END;
/

ALTER TRIGGER TG_SEQ_PAC ENABLE;