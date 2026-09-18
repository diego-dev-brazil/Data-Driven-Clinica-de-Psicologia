----------------
-- Tabela Acompanhamento
----------------

CREATE TABLE ACOMPANHAMENTO
(
aco_id NUMBER NOT NULL ,
aco_nome_paciente VARCHAR2 (255) NOT NULL,
aco_status NUMBER NOT NULL ,
aco_data_inicio DATE NOT NULL ,
aco_data_fim DATE ,
aco_mot_id NUMBER ,
aco_mod_id NUMBER NOT NULL
)
;
COMMENT ON TABLE ACOMPANHAMENTO IS 'Essa entidade possui como
objetivo registrar os acompanhamentos do paciente.'
;
COMMENT ON COLUMN ACOMPANHAMENTO.aco_id IS 'Identificador para a
entidade chamada acompanhamento do cliente'
;
COMMENT ON COLUMN ACOMPANHAMENTO.aco_status IS 'Situação do cliente
no sistema: ativo ou inativo'
;
COMMENT ON COLUMN ACOMPANHAMENTO.aco_data_inicio IS 'Data do inicio
do acompanhamento do cliente'
;
COMMENT ON COLUMN ACOMPANHAMENTO.aco_data_fim IS 'Data do fim do
acompanhamento do cliente'
;
ALTER TABLE ACOMPANHAMENTO
ADD CONSTRAINT ACOMPANHAMENTO_PK PRIMARY KEY ( aco_id ) ;
CREATE TABLE ACOMPANHAMENTO_DIAGNOSTICO
(
acod_diag_id NUMBER NOT NULL ,
acod_aco_id NUMBER NOT NULL
)
;
ALTER TABLE ACOMPANHAMENTO_DIAGNOSTICO
ADD CONSTRAINT PK_acod PRIMARY KEY ( acod_diag_id,
acod_aco_id ) ;

------------------
-- Tabela acompanhamento mensal
------------------
CREATE TABLE ACOMPANHAMENTO_MENSAL
(
men_id NUMBER NOT NULL ,
men_periodo DATE NOT NULL ,
men_vezes_mes NUMBER (2) NOT NULL ,
men_vezes_falta NUMBER (2) ,
men_valor_mensal NUMBER (6,2) NOT NULL ,
men_aco_id NUMBER NOT NULL
)
;
COMMENT ON TABLE ACOMPANHAMENTO_MENSAL IS 'Essa entidade tem como
objetivo registrar dados do acompanhamento mensal do paciente.'
;
COMMENT ON COLUMN ACOMPANHAMENTO_MENSAL.men_id IS 'Identificador
da entidade acompanhamento mensal.'
;
COMMENT ON COLUMN ACOMPANHAMENTO_MENSAL.men_periodo IS 'Período
que ocorreu o acompanhamento do paciente.'
;
COMMENT ON COLUMN ACOMPANHAMENTO_MENSAL.men_vezes_mes IS
'Quantidade de vezes no mês que o paciente foi consultado'
;
COMMENT ON COLUMN ACOMPANHAMENTO_MENSAL.men_vezes_falta IS
'Quantidade de vezes no mês que o paciente faltou nas consultas'
;
COMMENT ON COLUMN ACOMPANHAMENTO_MENSAL.men_valor_mensal IS
'Valor pago pelo paciente mensalmente'
;
ALTER TABLE ACOMPANHAMENTO_MENSAL
ADD CONSTRAINT PK_men PRIMARY KEY ( men_id ) ;
---------------------
-- Tabela Diagnostico
---------------------
CREATE TABLE DIAGNOSTICO
(
diag_id NUMBER NOT NULL ,
diag_nome VARCHAR2 (255) NOT NULL
)
;
COMMENT ON TABLE DIAGNOSTICO IS 'Essa entidade possui como objetivo
armazenar os diagnostico dos pacientes'
;
COMMENT ON COLUMN DIAGNOSTICO.diag_id IS 'Identificador da entidade
diagnostico.'
;
COMMENT ON COLUMN DIAGNOSTICO.diag_nome IS 'Nome do diagnostico'
;
ALTER TABLE DIAGNOSTICO
ADD CONSTRAINT DIAGNOSTICO_PK PRIMARY KEY ( diag_id ) ;
---------------
-- Tabela Modalidade
---------------
CREATE TABLE MODALIDADE
(
mod_id NUMBER NOT NULL ,
mod_nome VARCHAR2 (10)
)
;
COMMENT ON TABLE MODALIDADE IS 'Essa identidade tem como objetivo
abranger as modalidades em que ma consulta pode ser realizada'
;
COMMENT ON COLUMN MODALIDADE.mod_id IS 'Identificador da entidade
modalidade'
;
COMMENT ON COLUMN MODALIDADE.mod_nome IS 'O modo do qual o paciente
deseja realizar as consultas.'
;
ALTER TABLE MODALIDADE
ADD CONSTRAINT MODALIDADE_PK PRIMARY KEY ( mod_id ) ;
---------------------
-- Tabela Motivo Saida
---------------------
CREATE TABLE MOTIVO_SAIDA
(
mot_id NUMBER NOT NULL ,
mot_nome VARCHAR2 (170) NOT NULL
)
;
COMMENT ON TABLE MOTIVO_SAIDA IS 'Essa entidade tem como objetivo
registrar os motivos das saidas dos pacientes'
;
COMMENT ON COLUMN MOTIVO_SAIDA.mot_id IS 'Identificador da entidade
motivo saida'
;
COMMENT ON COLUMN MOTIVO_SAIDA.mot_nome IS 'Motivo do porquê o
paciente parou de frequentar as consultas'
;
ALTER TABLE MOTIVO_SAIDA
ADD CONSTRAINT PK_mot PRIMARY KEY ( mot_id ) ;

------------------
-- Colocando foreign key em acompanhamento mensal vindo de acompanhamento
------------------
ALTER TABLE ACOMPANHAMENTO_MENSAL
ADD CONSTRAINT FK_men_aco
FOREIGN KEY
(
men_aco_id
)
REFERENCES ACOMPANHAMENTO
(
aco_id
)
;
------------------
-- Colocando foreign key em acompanhamento vindo de modalidade
------------------
ALTER TABLE ACOMPANHAMENTO
ADD CONSTRAINT FK_aco_mod FOREIGN KEY
(
aco_mod_id
)
REFERENCES MODALIDADE
(
mod_id
)
;
------------------
-- Colocando foreign key em acompanhamento mensal vindo de motivo_saida
------------------
ALTER TABLE ACOMPANHAMENTO
ADD CONSTRAINT FK_aco_mot FOREIGN KEY
(
aco_mot_id
)
REFERENCES MOTIVO_SAIDA
(
mot_id
)
;
------------------
-- Colocando foreign key em acompanhamento_diagnostico mensal vindo de acompanhamento
------------------
ALTER TABLE ACOMPANHAMENTO_DIAGNOSTICO
ADD CONSTRAINT FK_acod_aco FOREIGN KEY
(
acod_aco_id
)
REFERENCES ACOMPANHAMENTO
(
aco_id
)
;
------------------
-- Colocando foreign key em acompanhamento_diagnostico mensal vindo de diagnostico
------------------
ALTER TABLE ACOMPANHAMENTO_DIAGNOSTICO
ADD CONSTRAINT FK_acod_diag FOREIGN KEY
(
acod_diag_id
)
REFERENCES DIAGNOSTICO
(
diag_id
)
;
