-- ============================================================
-- CARGA 1 - ACOMPANHAMENTOS COM INICIO ATE 2022
-- Executar as cargas em ordem: 1 -> 2 -> 3
-- Adaptada para o modelo relacional/DDL atual.
--
-- Os IDs proprios (PKs) NAO sao informados nos INSERTs.
-- Eles sao gerados automaticamente pelas sequences/triggers do banco.
-- Os valores usados nas FKs correspondem aos IDs gerados pela ordem
-- de execucao deste povoamento. Executar em um banco vazio, com as
-- sequences iniciadas em 1, e sem alterar a ordem dos INSERTs.
-- IDs de acompanhamentos gerados nesta carga: 1 a 35.
-- As tabelas de historico NAO recebem povoamento inicial.
-- ============================================================

-- ============================================================
-- TABELAS DE DOMINIO
-- Inseridas somente na Carga 1.
-- ============================================================

-- MODALIDADES
INSERT INTO modalidades (mod_nome) VALUES ('Híbrido');
INSERT INTO modalidades (mod_nome) VALUES ('Online');
INSERT INTO modalidades (mod_nome) VALUES ('Presencial');

-- MOTIVO_SAIDAS
INSERT INTO motivo_saidas (mot_nome) VALUES ('Alta');
INSERT INTO motivo_saidas (mot_nome) VALUES ('Alta com Sessões Avulsas');
INSERT INTO motivo_saidas (mot_nome) VALUES ('Apenas sessões avulsas');
INSERT INTO motivo_saidas (mot_nome) VALUES ('Apenas uma vez');
INSERT INTO motivo_saidas (mot_nome) VALUES ('Desistência');
INSERT INTO motivo_saidas (mot_nome) VALUES ('Encaminhamento');
INSERT INTO motivo_saidas (mot_nome) VALUES ('Falecimento');
INSERT INTO motivo_saidas (mot_nome) VALUES ('Financeiro');
INSERT INTO motivo_saidas (mot_nome) VALUES ('Indeterminado');
INSERT INTO motivo_saidas (mot_nome) VALUES ('Pausa');

-- DIAGNOSTICOS
INSERT INTO diagnosticos (diag_nome) VALUES ('Acompanhamento Terapêutico');
INSERT INTO diagnosticos (diag_nome) VALUES ('Acompanhamento psicológico devido a um câncer');
INSERT INTO diagnosticos (diag_nome) VALUES ('Alcoolismo');
INSERT INTO diagnosticos (diag_nome) VALUES ('Alto Conhecimento');
INSERT INTO diagnosticos (diag_nome) VALUES ('Ansiedade');
INSERT INTO diagnosticos (diag_nome) VALUES ('Ansiedade + Autoconhecimento');
INSERT INTO diagnosticos (diag_nome) VALUES ('Ansiedade + Depressão');
INSERT INTO diagnosticos (diag_nome) VALUES ('Ansiedade + Relacionamento Afetivo');
INSERT INTO diagnosticos (diag_nome) VALUES ('Ansiedade e Relac.');
INSERT INTO diagnosticos (diag_nome) VALUES ('Autoconhecimento');
INSERT INTO diagnosticos (diag_nome) VALUES ('Bipolar');
INSERT INTO diagnosticos (diag_nome) VALUES ('Borderline');
INSERT INTO diagnosticos (diag_nome) VALUES ('Burnout');
INSERT INTO diagnosticos (diag_nome) VALUES ('Buscando Autoconhecimento');
INSERT INTO diagnosticos (diag_nome) VALUES ('Dep. Emocional');
INSERT INTO diagnosticos (diag_nome) VALUES ('Depressão');
INSERT INTO diagnosticos (diag_nome) VALUES ('Depressão e Estresse');
INSERT INTO diagnosticos (diag_nome) VALUES ('Depressão em Tratamento');
INSERT INTO diagnosticos (diag_nome) VALUES ('Dermatilomania');
INSERT INTO diagnosticos (diag_nome) VALUES ('Fase de Desenvolvimento');
INSERT INTO diagnosticos (diag_nome) VALUES ('Fobia Social');
INSERT INTO diagnosticos (diag_nome) VALUES ('Hipocondríaca');
INSERT INTO diagnosticos (diag_nome) VALUES ('Insegurança');
INSERT INTO diagnosticos (diag_nome) VALUES ('Luto');
INSERT INTO diagnosticos (diag_nome) VALUES ('Obesidade');
INSERT INTO diagnosticos (diag_nome) VALUES ('Orientação Vocacional');
INSERT INTO diagnosticos (diag_nome) VALUES ('Pensamentos Invasivos');
INSERT INTO diagnosticos (diag_nome) VALUES ('Perda de Emprego');
INSERT INTO diagnosticos (diag_nome) VALUES ('Relacionamento');
INSERT INTO diagnosticos (diag_nome) VALUES ('Relacionamento Afetivo');
INSERT INTO diagnosticos (diag_nome) VALUES ('Relacionamento Afetivo + Insegurança');
INSERT INTO diagnosticos (diag_nome) VALUES ('Relacionamento Familiar');
INSERT INTO diagnosticos (diag_nome) VALUES ('Relacionamento Interpessoal');
INSERT INTO diagnosticos (diag_nome) VALUES ('Separação');
INSERT INTO diagnosticos (diag_nome) VALUES ('TDAH');
INSERT INTO diagnosticos (diag_nome) VALUES ('Trabalho');
INSERT INTO diagnosticos (diag_nome) VALUES ('Transição de Gênero do Filho');
INSERT INTO diagnosticos (diag_nome) VALUES ('Trat. Câncer');
INSERT INTO diagnosticos (diag_nome) VALUES ('Vai por demanda');
INSERT INTO diagnosticos (diag_nome) VALUES ('Verificação de Diagnóstico de Autismo');
INSERT INTO diagnosticos (diag_nome) VALUES ('Indeterminado');

-- ============================================================
-- ACOMPANHAMENTOS
-- ============================================================
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Andre', 1, TO_DATE('01/05/2022','DD/MM/YYYY'), NULL, NULL, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Bianca Um', 0, TO_DATE('01/05/2022','DD/MM/YYYY'), TO_DATE('01/07/2024','DD/MM/YYYY'), 1, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Caio', 0, TO_DATE('01/05/2020','DD/MM/YYYY'), TO_DATE('01/04/2023','DD/MM/YYYY'), 1, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Camila 2', 0, TO_DATE('01/05/2022','DD/MM/YYYY'), TO_DATE('01/02/2024','DD/MM/YYYY'), 1, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Carla Um', 1, TO_DATE('01/05/2018','DD/MM/YYYY'), NULL, NULL, 1);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Eduardo', 0, TO_DATE('01/01/2021','DD/MM/YYYY'), TO_DATE('01/07/2023','DD/MM/YYYY'), 8, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Gabriela', 1, TO_DATE('01/05/2019','DD/MM/YYYY'), NULL, NULL, 1);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Gabriele', 0, TO_DATE('01/05/2022','DD/MM/YYYY'), TO_DATE('01/07/2025','DD/MM/YYYY'), 6, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Isa', 0, TO_DATE('02/01/2021','DD/MM/YYYY'), TO_DATE('01/06/2024','DD/MM/YYYY'), 1, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('João Pedro', 0, TO_DATE('01/06/2019','DD/MM/YYYY'), TO_DATE('01/07/2025','DD/MM/YYYY'), 8, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Jose', 1, TO_DATE('01/05/2021','DD/MM/YYYY'), NULL, NULL, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Laura', 0, TO_DATE('01/05/2022','DD/MM/YYYY'), TO_DATE('01/05/2023','DD/MM/YYYY'), 1, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Leandra', 0, TO_DATE('01/04/2022','DD/MM/YYYY'), TO_DATE('01/04/2026','DD/MM/YYYY'), 6, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Luana', 1, TO_DATE('01/06/2020','DD/MM/YYYY'), NULL, NULL, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Luiz', 1, TO_DATE('01/10/2021','DD/MM/YYYY'), NULL, NULL, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Mariluce', 1, TO_DATE('03/03/2019','DD/MM/YYYY'), NULL, NULL, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Matheus', 1, TO_DATE('01/05/2020','DD/MM/YYYY'), NULL, NULL, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Michelan', 1, TO_DATE('01/05/2021','DD/MM/YYYY'), NULL, NULL, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Milton', 0, TO_DATE('02/05/2022','DD/MM/YYYY'), TO_DATE('03/01/2023','DD/MM/YYYY'), 1, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Mitsue', 0, TO_DATE('02/02/2021','DD/MM/YYYY'), NULL, 1, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Mota', 0, TO_DATE('10/05/2022','DD/MM/YYYY'), TO_DATE('01/06/2024','DD/MM/YYYY'), 1, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Natalia', 1, TO_DATE('03/04/2018','DD/MM/YYYY'), NULL, 9, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Neli', 0, TO_DATE('03/08/2022','DD/MM/YYYY'), TO_DATE('02/06/2023','DD/MM/YYYY'), 8, 2);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Poliana', 0, TO_DATE('15/06/2021','DD/MM/YYYY'), TO_DATE('02/01/2023','DD/MM/YYYY'), 6, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Regina', 0, TO_DATE('08/07/2021','DD/MM/YYYY'), TO_DATE('03/06/2026','DD/MM/YYYY'), 1, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Renata 1', 1, TO_DATE('24/04/2021','DD/MM/YYYY'), NULL, 9, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Renata 2', 0, TO_DATE('08/07/2017','DD/MM/YYYY'), TO_DATE('03/09/2024','DD/MM/YYYY'), 1, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Samantha', 1, TO_DATE('03/05/2018','DD/MM/YYYY'), NULL, 9, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Shophie', 0, TO_DATE('12/12/2022','DD/MM/YYYY'), TO_DATE('03/02/2023','DD/MM/YYYY'), 6, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Sophia', 0, TO_DATE('08/04/2020','DD/MM/YYYY'), TO_DATE('25/06/2023','DD/MM/YYYY'), 6, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Verônica', 0, TO_DATE('20/02/2020','DD/MM/YYYY'), TO_DATE('07/01/2023','DD/MM/YYYY'), 1, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Victor', 0, TO_DATE('12/08/2021','DD/MM/YYYY'), TO_DATE('15/02/2023','DD/MM/YYYY'), 1, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Yan', 0, TO_DATE('08/06/2022','DD/MM/YYYY'), TO_DATE('03/02/2025','DD/MM/YYYY'), 10, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Yumi', 0, TO_DATE('06/12/2022','DD/MM/YYYY'), TO_DATE('29/09/2025','DD/MM/YYYY'), 1, 2);

-- ============================================================
-- ACOMPANHAMENTOS_DIAGNOSTICOS
-- ============================================================
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (1, 1);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (29, 2);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (16, 3);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (26, 4);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (10, 5);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (29, 6);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (5, 7);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (12, 8);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (5, 9);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (20, 10);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (30, 11);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (24, 12);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (16, 13);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (21, 14);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (27, 15);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (10, 16);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (6, 17);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (16, 18);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (13, 19);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (30, 20);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (30, 21);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (16, 22);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (4, 23);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (5, 24);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (5, 25);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (9, 26);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (29, 27);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (19, 28);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (10, 29);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (16, 30);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (12, 31);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (32, 32);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (16, 33);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (30, 34);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (32, 35);

-- ============================================================
-- ACOMPANHAMENTOS_MENSAIS
-- ============================================================
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 4, 0, 460.00, 1);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 2, 0, 310.00, 1);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 2, 0, 310.00, 1);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 2, 0, 310.00, 1);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 1, 0, 215.00, 1);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 1, 0, 215.00, 1);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 1, 0, 150.00, 2);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 3, 0, 150.00, 2);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 2, 0, 220.00, 3);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/04/2023','DD/MM/YYYY'), 3, 1, 230.00, 3);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/05/2023','DD/MM/YYYY'), 3, 0, 240.00, 3);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 1, 0, 120.00, 4);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/06/2023','DD/MM/YYYY'), 1, 0, 155.00, 4);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/07/2023','DD/MM/YYYY'), 1, 0, 155.00, 4);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 1, 0, 150.00, 5);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 2, 0, 150.00, 5);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 2, 0, 150.00, 5);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 2, 0, 150.00, 5);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 2, 0, 340.00, 5);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 2, 0, 340.00, 5);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/01/2023','DD/MM/YYYY'), 1, 0, 530.00, 6);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/02/2023','DD/MM/YYYY'), 1, 0, 300.00, 6);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/02/2023','DD/MM/YYYY'), 2, 0, 300.00, 6);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 4, 0, 600.00, 6);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/05/2023','DD/MM/YYYY'), 2, 1, 560.00, 6);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/07/2023','DD/MM/YYYY'), 5, 4, 200.00, 6);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 3, 0, 0.00, 7);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 2, 0, 310.00, 7);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 4, 0, 460.00, 7);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 4, 0, 460.00, 7);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 2, 0, 310.00, 7);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 2, 0, 340.00, 7);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 2, 0, 340.00, 7);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 2, 0, 310.00, 8);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 2, 0, 275.00, 8);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/02/2023','DD/MM/YYYY'), 1, 0, 115.00, 8);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 5, 1, 460.00, 8);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/07/2023','DD/MM/YYYY'), 2, 0, 300.00, 8);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 4, 0, 460.00, 8);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 4, 0, 460.00, 8);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 4, 0, 460.00, 8);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 4, 0, 460.00, 8);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/01/2023','DD/MM/YYYY'), 4, 0, 460.00, 8);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/02/2023','DD/MM/YYYY'), 1, 0, 115.00, 8);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 4, 2, 460.00, 8);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/04/2023','DD/MM/YYYY'), 4, 1, 345.00, 8);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 1, 0, 200.00, 9);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/04/2023','DD/MM/YYYY'), 1, 0, 200.00, 9);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/05/2023','DD/MM/YYYY'), 2, 0, 300.00, 9);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 1, 0, 150.00, 9);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 1, 0, 150.00, 10);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 1, 0, 150.00, 10);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 1, 0, 150.00, 10);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 1, 0, 150.00, 10);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 1, 0, 200.00, 11);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 1, 0, 200.00, 11);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 2, 0, 340.00, 11);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 2, 0, 340.00, 11);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/04/2023','DD/MM/YYYY'), 1, 0, 150.00, 11);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/05/2023','DD/MM/YYYY'), 1, 0, 150.00, 11);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 1, 0, 300.00, 12);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 2, 0, 310.00, 13);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 1, 0, 200.00, 13);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 1, 0, 0.00, 13);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/02/2023','DD/MM/YYYY'), 2, 0, 260.00, 14);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 2, 0, 260.00, 14);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/05/2023','DD/MM/YYYY'), 2, 0, 260.00, 14);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 1, 4, 0.00, 14);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 1, 0, 0.00, 14);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 1, 0, 0.00, 14);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 1, 4, 0.00, 14);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 1, 0, 215.00, 14);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 1, 0, 200.00, 15);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 2, 0, 270.00, 15);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/04/2023','DD/MM/YYYY'), 1, 0, 200.00, 15);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 2, 0, 310.00, 15);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 4, 0, 460.00, 15);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 2, 0, 310.00, 15);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 1, 0, 215.00, 15);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 2, 0, 310.00, 15);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 1, 0, 215.00, 15);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 1, 0, 200.00, 16);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 1, 0, 200.00, 16);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 1, 0, 200.00, 16);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 1, 0, 200.00, 16);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 1, 0, 200.00, 16);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 1, 0, 215.00, 16);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 1, 0, 215.00, 16);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2026','DD/MM/YYYY'), 1, 0, 100.00, 16);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 2, 0, 230.00, 17);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 3, 0, 345.00, 17);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/04/2023','DD/MM/YYYY'), 4, 1, 345.00, 17);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/05/2023','DD/MM/YYYY'), 2, 0, 230.00, 17);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/07/2023','DD/MM/YYYY'), 5, 2, 115.00, 17);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 4, 0, 460.00, 17);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 2, 0, 310.00, 17);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 2, 0, 310.00, 17);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 2, 0, 310.00, 17);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 2, 0, 340.00, 17);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 2, 0, 340.00, 17);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 1, 0, 150.00, 18);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 1, 0, 150.00, 18);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/04/2023','DD/MM/YYYY'), 2, 1, 150.00, 18);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/05/2023','DD/MM/YYYY'), 2, 0, 300.00, 18);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/06/2023','DD/MM/YYYY'), 1, 0, 200.00, 18);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/07/2023','DD/MM/YYYY'), 1, 0, 200.00, 18);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/08/2023','DD/MM/YYYY'), 1, 0, 200.00, 18);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 1, 0, 0.00, 18);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 1, 0, 0.00, 18);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 1, 0, 0.00, 18);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 2, 0, 0.00, 18);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 1, 0, 0.00, 18);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 1, 0, 0.00, 18);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 1, 0, 345.00, 19);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 4, 2, 230.00, 19);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/01/2023','DD/MM/YYYY'), 2, 0, 270.00, 20);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/02/2023','DD/MM/YYYY'), 2, 0, 270.00, 20);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 1, 0, 105.00, 21);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 2, 0, 200.00, 21);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 2, 0, 270.00, 21);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 1, 0, 0.00, 20);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 1, 0, 200.00, 22);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/05/2023','DD/MM/YYYY'), 1, 0, 200.00, 23);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 1, 0, 0.00, 23);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 1, 0, 0.00, 23);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 1, 0, 0.00, 23);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 1, 0, 0.00, 23);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 1, 0, 0.00, 23);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 1, 0, 110.00, 24);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 1, 0, 100.00, 25);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/01/2023','DD/MM/YYYY'), 2, 1, 120.00, 26);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/02/2023','DD/MM/YYYY'), 2, 1, 150.00, 26);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 2, 0, 300.00, 26);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 2, 0, 310.00, 26);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 1, 0, 200.00, 26);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 1, 0, 200.00, 26);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 1, 0, 200.00, 26);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/01/2023','DD/MM/YYYY'), 2, 0, 300.00, 27);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/02/2023','DD/MM/YYYY'), 2, 1, 150.00, 27);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 2, 1, 150.00, 27);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 2, 1, 130.00, 28);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/04/2023','DD/MM/YYYY'), 2, 0, 260.00, 28);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 1, 0, 200.00, 28);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 2, 0, 310.00, 28);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 1, 0, 200.00, 28);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 1, 0, 200.00, 28);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 1, 0, 0.00, 28);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 1, 0, 0.00, 28);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/01/2023','DD/MM/YYYY'), 1, 0, 150.00, 29);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/02/2023','DD/MM/YYYY'), 1, 0, 75.00, 29);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 1, 0, 150.00, 29);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/06/2023','DD/MM/YYYY'), 2, 0, 350.00, 30);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/07/2023','DD/MM/YYYY'), 4, 0, 460.00, 30);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/01/2023','DD/MM/YYYY'), 1, 0, 100.00, 31);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/02/2023','DD/MM/YYYY'), 1, 0, 180.00, 32);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/02/2023','DD/MM/YYYY'), 2, 0, 360.00, 32);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 1, 0, 180.00, 32);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 2, 0, 470.00, 32);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/06/2023','DD/MM/YYYY'), 2, 0, 230.00, 32);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/12/2023','DD/MM/YYYY'), 1, 0, 640.00, 32);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/02/2023','DD/MM/YYYY'), 1, 0, 115.00, 33);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 1, 0, 115.00, 33);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 2, 0, 240.00, 33);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/02/2023','DD/MM/YYYY'), 2, 0, 305.00, 34);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 1, 0, 155.00, 34);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/02/2025','DD/MM/YYYY'), 1, 0, 150.00, 34);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 3, 0, 430.00, 35);

COMMIT;
