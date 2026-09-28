-- ============================================================
-- CARGA 2 - ACOMPANHAMENTOS COM INICIO EM 2023
-- Executar as cargas em ordem: 1 -> 2 -> 3
-- Adaptada para o modelo relacional/DDL atual.
--
-- Os IDs proprios (PKs) NAO sao informados nos INSERTs.
-- Eles sao gerados automaticamente pelas sequences/triggers do banco.
-- Os valores usados nas FKs correspondem aos IDs gerados pela ordem
-- de execucao deste povoamento. Executar em um banco vazio, com as
-- sequences iniciadas em 1, e sem alterar a ordem dos INSERTs.
-- IDs de acompanhamentos gerados nesta carga: 36 a 66.
-- As tabelas de historico NAO recebem povoamento inicial.
-- ============================================================

-- ============================================================
-- ACOMPANHAMENTOS
-- ============================================================
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Adilson', 1, TO_DATE('01/01/2023','DD/MM/YYYY'), NULL, NULL, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Ana', 0, TO_DATE('01/08/2023','DD/MM/YYYY'), NULL, 5, 1);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Ana 1', 0, TO_DATE('01/03/2023','DD/MM/YYYY'), TO_DATE('01/06/2023','DD/MM/YYYY'), 9, 2);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Ana 2', 0, TO_DATE('01/03/2023','DD/MM/YYYY'), TO_DATE('01/12/2023','DD/MM/YYYY'), 5, 1);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Ana 3', 0, TO_DATE('01/04/2023','DD/MM/YYYY'), TO_DATE('01/08/2023','DD/MM/YYYY'), 1, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Angela', 0, TO_DATE('01/03/2023','DD/MM/YYYY'), TO_DATE('01/03/2025','DD/MM/YYYY'), 1, 2);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Antonio', 0, TO_DATE('01/08/2023','DD/MM/YYYY'), TO_DATE('01/08/2024','DD/MM/YYYY'), 8, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Ariane', 0, TO_DATE('01/01/2023','DD/MM/YYYY'), TO_DATE('01/02/2024','DD/MM/YYYY'), 1, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Camila', 0, TO_DATE('01/06/2023','DD/MM/YYYY'), TO_DATE('01/09/2025','DD/MM/YYYY'), 1, 2);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Carol', 0, TO_DATE('01/06/2023','DD/MM/YYYY'), TO_DATE('01/07/2024','DD/MM/YYYY'), 1, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Cristiane', 0, TO_DATE('01/03/2023','DD/MM/YYYY'), TO_DATE('01/07/2024','DD/MM/YYYY'), 2, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Diamantina', 0, TO_DATE('01/03/2023','DD/MM/YYYY'), TO_DATE('01/08/2024','DD/MM/YYYY'), 1, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Fabiana', 0, TO_DATE('01/02/2023','DD/MM/YYYY'), TO_DATE('01/06/2023','DD/MM/YYYY'), 8, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Fernanda Um', 0, TO_DATE('01/03/2023','DD/MM/YYYY'), TO_DATE('01/03/2025','DD/MM/YYYY'), 6, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Flavia', 1, TO_DATE('01/03/2023','DD/MM/YYYY'), NULL, NULL, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Flávia 1', 0, TO_DATE('01/03/2023','DD/MM/YYYY'), TO_DATE('01/06/2024','DD/MM/YYYY'), 1, 2);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Guilherme', 1, TO_DATE('01/06/2023','DD/MM/YYYY'), NULL, NULL, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Harue', 1, TO_DATE('01/02/2023','DD/MM/YYYY'), NULL, NULL, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Isabel', 0, TO_DATE('01/01/2023','DD/MM/YYYY'), TO_DATE('01/05/2025','DD/MM/YYYY'), 8, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Jacqueline 1', 0, TO_DATE('01/02/2023','DD/MM/YYYY'), TO_DATE('01/03/2023','DD/MM/YYYY'), 8, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Jacqueline 2', 1, TO_DATE('01/02/2023','DD/MM/YYYY'), TO_DATE('01/09/2023','DD/MM/YYYY'), 8, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Lúcia', 0, TO_DATE('01/10/2023','DD/MM/YYYY'), TO_DATE('01/06/2025','DD/MM/YYYY'), 1, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Marli', 0, TO_DATE('01/04/2023','DD/MM/YYYY'), TO_DATE('01/05/2023','DD/MM/YYYY'), 6, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Mayra', 0, TO_DATE('01/01/2023','DD/MM/YYYY'), TO_DATE('01/03/2025','DD/MM/YYYY'), 6, 2);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Michelle', 0, TO_DATE('03/01/2023','DD/MM/YYYY'), TO_DATE('03/01/2026','DD/MM/YYYY'), 9, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Renato', 1, TO_DATE('05/05/2023','DD/MM/YYYY'), NULL, 9, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Sam', 0, TO_DATE('04/07/2023','DD/MM/YYYY'), TO_DATE('28/05/2024','DD/MM/YYYY'), 1, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Silvine', 0, TO_DATE('26/12/2023','DD/MM/YYYY'), TO_DATE('26/02/2025','DD/MM/YYYY'), 1, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Simone', 1, TO_DATE('03/12/2023','DD/MM/YYYY'), NULL, 9, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Solange', 0, TO_DATE('24/10/2023','DD/MM/YYYY'), TO_DATE('07/01/2025','DD/MM/YYYY'), 1, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Tiago', 0, TO_DATE('01/07/2023','DD/MM/YYYY'), TO_DATE('01/08/2023','DD/MM/YYYY'), 9, 1);

-- ============================================================
-- ACOMPANHAMENTOS_DIAGNOSTICOS
-- ============================================================
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (18, 36);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (14, 37);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (5, 38);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (35, 39);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (29, 40);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (5, 41);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (34, 42);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (5, 43);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (13, 44);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (5, 45);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (32, 46);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (37, 47);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (29, 48);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (12, 49);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (32, 50);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (24, 51);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (12, 52);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (32, 53);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (5, 54);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (29, 55);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (29, 56);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (31, 57);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (36, 58);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (13, 59);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (5, 60);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (17, 61);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (13, 62);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (22, 63);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (5, 64);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (41, 64);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (5, 65);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (41, 66);

-- ============================================================
-- ACOMPANHAMENTOS_MENSAIS
-- ============================================================
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/01/2023','DD/MM/YYYY'), 1, 0, 120.00, 36);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/02/2023','DD/MM/YYYY'), 1, 0, 120.00, 36);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 2, 0, 120.00, 36);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/06/2023','DD/MM/YYYY'), 2, 1, 120.00, 36);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/06/2024','DD/MM/YYYY'), 1, 0, 200.00, 36);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/07/2024','DD/MM/YYYY'), 1, 0, 200.00, 36);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 1, 0, 200.00, 36);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 1, 0, 200.00, 36);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 1, 0, 215.00, 36);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 1, 0, 215.00, 36);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/08/2023','DD/MM/YYYY'), 1, 0, 120.00, 37);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 1, 0, 200.00, 37);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 3, 0, 405.00, 37);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 4, 0, 460.00, 37);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 4, 0, 460.00, 37);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 1, 0, 115.00, 38);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/04/2023','DD/MM/YYYY'), 4, 2, 230.00, 38);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/05/2023','DD/MM/YYYY'), 4, 1, 345.00, 38);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/06/2023','DD/MM/YYYY'), 4, 2, 115.00, 38);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 1, 0, 115.00, 39);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 3, 1, 230.00, 39);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/04/2023','DD/MM/YYYY'), 4, 1, 345.00, 39);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/05/2023','DD/MM/YYYY'), 4, 1, 230.00, 39);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/04/2023','DD/MM/YYYY'), 2, 0, 300.00, 40);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/05/2023','DD/MM/YYYY'), 1, 0, 200.00, 40);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/06/2023','DD/MM/YYYY'), 2, 1, 150.00, 40);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/07/2023','DD/MM/YYYY'), 2, 0, 150.00, 40);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/08/2023','DD/MM/YYYY'), 2, 0, 150.00, 40);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 1, 0, 200.00, 41);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/08/2023','DD/MM/YYYY'), 1, 0, 120.00, 42);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/01/2023','DD/MM/YYYY'), 1, 0, 120.00, 43);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/02/2023','DD/MM/YYYY'), 1, 0, 120.00, 43);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/02/2023','DD/MM/YYYY'), 1, 0, 155.00, 43);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 1, 0, 120.00, 43);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 2, 0, 310.00, 43);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/04/2023','DD/MM/YYYY'), 1, 0, 120.00, 43);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/04/2023','DD/MM/YYYY'), 3, 2, 155.00, 43);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/05/2023','DD/MM/YYYY'), 2, 0, 310.00, 43);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/12/2023','DD/MM/YYYY'), 2, 0, 310.00, 43);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/07/2023','DD/MM/YYYY'), 1, 0, 120.00, 44);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/08/2023','DD/MM/YYYY'), 1, 0, 115.00, 44);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 2, 0, 310.00, 44);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 2, 0, 310.00, 44);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 2, 0, 310.00, 44);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 2, 0, 310.00, 44);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/06/2023','DD/MM/YYYY'), 1, 1, 120.00, 45);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 1, 0, 400.00, 45);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 1, 0, 240.00, 46);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/04/2023','DD/MM/YYYY'), 2, 1, 115.00, 46);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 2, 0, 310.00, 46);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 2, 0, 310.00, 46);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 1, 0, 150.00, 47);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/01/2023','DD/MM/YYYY'), 1, 0, 150.00, 48);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/01/2023','DD/MM/YYYY'), 1, 0, 150.00, 48);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 1, 0, 150.00, 48);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/01/2023','DD/MM/YYYY'), 1, 0, 150.00, 48);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 5, 1, 495.00, 48);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 2, 0, 300.00, 49);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 4, 0, 460.00, 49);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 4, 0, 460.00, 49);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 4, 0, 460.00, 49);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 2, 0, 310.00, 50);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 2, 0, 310.00, 50);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 1, 0, 200.00, 50);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 1, 0, 200.00, 50);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 1, 0, 215.00, 50);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 1, 0, 225.00, 50);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/02/2023','DD/MM/YYYY'), 1, 0, 200.00, 50);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 2, 0, 300.00, 50);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 1, 0, 200.00, 50);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/04/2023','DD/MM/YYYY'), 2, 1, 200.00, 50);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/05/2023','DD/MM/YYYY'), 2, 0, 350.00, 50);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/06/2023','DD/MM/YYYY'), 1, 0, 200.00, 50);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/07/2023','DD/MM/YYYY'), 2, 1, 200.00, 50);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/02/2023','DD/MM/YYYY'), 1, 0, 150.00, 51);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 1, 0, 150.00, 51);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/04/2023','DD/MM/YYYY'), 2, 0, 300.00, 51);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/05/2023','DD/MM/YYYY'), 2, 0, 150.00, 51);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/06/2023','DD/MM/YYYY'), 1, 0, 150.00, 51);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 2, 0, 340.00, 52);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 2, 0, 340.00, 52);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 2, 0, 340.00, 52);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 3, 0, 345.00, 53);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/01/2023','DD/MM/YYYY'), 1, 0, 150.00, 54);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 3, 0, 465.00, 54);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 1, 0, 155.00, 54);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/02/2023','DD/MM/YYYY'), 3, 0, 465.00, 54);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 2, 0, 310.00, 54);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 2, 0, 310.00, 54);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/01/2023','DD/MM/YYYY'), 1, 0, 150.00, 55);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/02/2023','DD/MM/YYYY'), 2, 0, 300.00, 56);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 1, 0, 300.00, 57);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 2, 0, 310.00, 57);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 1, 0, 200.00, 57);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 2, 0, 310.00, 57);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 1, 0, 200.00, 57);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/04/2023','DD/MM/YYYY'), 3, 0, 112.50, 58);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/05/2023','DD/MM/YYYY'), 5, 0, 150.00, 58);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/01/2023','DD/MM/YYYY'), 1, 0, 100.00, 59);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/02/2023','DD/MM/YYYY'), 2, 0, 240.00, 59);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/04/2023','DD/MM/YYYY'), 2, 0, 240.00, 59);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 1, 0, 200.00, 59);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 1, 0, 200.00, 59);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 1, 0, 200.00, 59);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 2, 0, 310.00, 60);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/04/2023','DD/MM/YYYY'), 2, 0, 310.00, 60);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/05/2023','DD/MM/YYYY'), 3, 0, 465.00, 60);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 1, 0, 0.00, 60);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 2, 0, 0.00, 60);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 2, 0, 0.00, 60);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 2, 0, 310.00, 61);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 2, 0, 310.00, 61);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 2, 0, 310.00, 61);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 2, 0, 310.00, 61);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 2, 0, 340.00, 61);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 2, 0, 340.00, 61);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 2, 0, 310.00, 62);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 2, 0, 150.00, 62);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 2, 0, 310.00, 62);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 2, 0, 300.00, 62);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 2, 0, 340.00, 62);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 2, 0, 340.00, 62);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 1, 0, 0.00, 63);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 1, 0, 200.00, 63);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/01/2023','DD/MM/YYYY'), 4, 0, 460.00, 64);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/02/2023','DD/MM/YYYY'), 4, 0, 460.00, 64);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/03/2023','DD/MM/YYYY'), 1, 0, 115.00, 64);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/04/2023','DD/MM/YYYY'), 4, 0, 460.00, 64);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/05/2023','DD/MM/YYYY'), 4, 2, 230.00, 64);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 2, 0, 310.00, 65);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 2, 0, 310.00, 65);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 2, 0, 310.00, 65);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 2, 0, 310.00, 65);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/07/2023','DD/MM/YYYY'), 1, 0, 150.00, 66);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('01/08/2023','DD/MM/YYYY'), 2, 0, 150.00, 66);

COMMIT;
