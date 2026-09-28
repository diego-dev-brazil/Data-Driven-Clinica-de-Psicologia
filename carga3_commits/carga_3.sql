-- ============================================================
-- CARGA 3 - ACOMPANHAMENTOS COM INICIO EM 2024, 2025 E 2026
-- Executar as cargas em ordem: 1 -> 2 -> 3
-- Adaptada para o modelo relacional/DDL atual.
--
-- Os IDs proprios (PKs) NAO sao informados nos INSERTs.
-- Eles sao gerados automaticamente pelas sequences/triggers do banco.
-- Os valores usados nas FKs correspondem aos IDs gerados pela ordem
-- de execucao deste povoamento. Executar em um banco vazio, com as
-- sequences iniciadas em 1, e sem alterar a ordem dos INSERTs.
-- IDs de acompanhamentos gerados nesta carga: 67 a 114.
-- As tabelas de historico NAO recebem povoamento inicial.
-- ============================================================

-- ============================================================
-- ACOMPANHAMENTOS
-- ============================================================
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Andressa Dois', 0, TO_DATE('03/01/2025','DD/MM/YYYY'), TO_DATE('01/05/2025','DD/MM/YYYY'), 1, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Ari', 1, TO_DATE('01/07/2025','DD/MM/YYYY'), NULL, NULL, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Benedita', 0, TO_DATE('01/06/2024','DD/MM/YYYY'), TO_DATE('01/11/2025','DD/MM/YYYY'), 1, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Bianca Dois', 0, TO_DATE('01/07/2024','DD/MM/YYYY'), TO_DATE('01/07/2025','DD/MM/YYYY'), 6, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Bruna', 1, TO_DATE('01/05/2026','DD/MM/YYYY'), NULL, NULL, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Caique', 1, TO_DATE('01/11/2024','DD/MM/YYYY'), NULL, NULL, 1);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Carla Dois', 0, TO_DATE('01/06/2024','DD/MM/YYYY'), TO_DATE('01/03/2025','DD/MM/YYYY'), 8, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Carla Tres', 0, TO_DATE('01/07/2024','DD/MM/YYYY'), TO_DATE('01/07/2025','DD/MM/YYYY'), 7, 2);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Cintia', 1, TO_DATE('01/07/2025','DD/MM/YYYY'), NULL, NULL, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Claudia', 0, TO_DATE('01/06/2024','DD/MM/YYYY'), TO_DATE('01/08/2024','DD/MM/YYYY'), 6, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Daniela', 1, TO_DATE('01/03/2026','DD/MM/YYYY'), NULL, NULL, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Evelyn', 1, TO_DATE('01/03/2026','DD/MM/YYYY'), NULL, NULL, 2);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Felipe', 1, TO_DATE('01/03/2026','DD/MM/YYYY'), NULL, NULL, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Fernanda Dois', 1, TO_DATE('01/06/2024','DD/MM/YYYY'), NULL, NULL, 2);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Fernando', 1, TO_DATE('01/07/2025','DD/MM/YYYY'), NULL, NULL, 2);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Gabriel', 1, TO_DATE('01/06/2024','DD/MM/YYYY'), NULL, NULL, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Giovana', 1, TO_DATE('01/07/2024','DD/MM/YYYY'), NULL, NULL, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Gustavo', 0, TO_DATE('01/06/2024','DD/MM/YYYY'), TO_DATE('01/05/2026','DD/MM/YYYY'), 3, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Henrique', 0, TO_DATE('01/07/2024','DD/MM/YYYY'), TO_DATE('07/01/2024','DD/MM/YYYY'), 4, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Homero', 0, TO_DATE('01/06/2024','DD/MM/YYYY'), TO_DATE('01/07/2024','DD/MM/YYYY'), 8, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Jackson', 1, TO_DATE('01/07/2024','DD/MM/YYYY'), NULL, NULL, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Jader', 0, TO_DATE('01/09/2025','DD/MM/YYYY'), TO_DATE('01/11/2025','DD/MM/YYYY'), 6, 2);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Joao Dercio', 0, TO_DATE('01/06/2024','DD/MM/YYYY'), TO_DATE('01/11/2024','DD/MM/YYYY'), 1, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Jonatas', 1, TO_DATE('01/06/2024','DD/MM/YYYY'), NULL, NULL, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Juliana', 0, TO_DATE('01/06/2024','DD/MM/YYYY'), TO_DATE('01/05/2025','DD/MM/YYYY'), 1, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Leticia', 1, TO_DATE('01/07/2024','DD/MM/YYYY'), NULL, NULL, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Lurdinha', 0, TO_DATE('01/06/2024','DD/MM/YYYY'), TO_DATE('01/07/2024','DD/MM/YYYY'), 3, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Marcela', 0, TO_DATE('01/06/2024','DD/MM/YYYY'), TO_DATE('01/07/2024','DD/MM/YYYY'), 8, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Marcos', 0, TO_DATE('01/06/2024','DD/MM/YYYY'), TO_DATE('01/05/2026','DD/MM/YYYY'), 10, 1);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Marisa', 1, TO_DATE('01/07/2024','DD/MM/YYYY'), NULL, NULL, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Paula', 0, TO_DATE('02/04/2026','DD/MM/YYYY'), TO_DATE('01/06/2026','DD/MM/YYYY'), 10, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Paulinho', 1, TO_DATE('27/05/2024','DD/MM/YYYY'), NULL, 9, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Pedro', 0, TO_DATE('01/05/2026','DD/MM/YYYY'), TO_DATE('03/06/2026','DD/MM/YYYY'), 10, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Priscila', 0, TO_DATE('03/03/2024','DD/MM/YYYY'), TO_DATE('02/02/2026','DD/MM/YYYY'), 10, 2);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Raysa', 0, TO_DATE('26/09/2025','DD/MM/YYYY'), TO_DATE('28/02/2026','DD/MM/YYYY'), 10, 2);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Regina', 1, TO_DATE('01/07/2025','DD/MM/YYYY'), TO_DATE('03/06/2026','DD/MM/YYYY'), 9, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Ricardo', 1, TO_DATE('06/02/2025','DD/MM/YYYY'), NULL, 9, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Rosaria', 1, TO_DATE('06/05/2024','DD/MM/YYYY'), NULL, 9, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Sabrina', 0, TO_DATE('03/01/2026','DD/MM/YYYY'), TO_DATE('03/01/2026','DD/MM/YYYY'), 3, 2);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Sandra', 0, TO_DATE('08/02/2024','DD/MM/YYYY'), TO_DATE('23/05/2024','DD/MM/YYYY'), 10, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Sergio', 0, TO_DATE('18/05/2024','DD/MM/YYYY'), TO_DATE('12/04/2026','DD/MM/YYYY'), 8, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Sirlene', 1, TO_DATE('24/05/2024','DD/MM/YYYY'), NULL, 9, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Tamara', 0, TO_DATE('07/01/2025','DD/MM/YYYY'), TO_DATE('07/01/2025','DD/MM/YYYY'), 3, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Tatiane', 0, TO_DATE('03/01/2026','DD/MM/YYYY'), TO_DATE('03/01/2026','DD/MM/YYYY'), 3, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Vinicius', 0, TO_DATE('06/03/2024','DD/MM/YYYY'), TO_DATE('01/07/2025','DD/MM/YYYY'), 8, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Vínicius', 0, TO_DATE('06/03/2024','DD/MM/YYYY'), TO_DATE('01/07/2025','DD/MM/YYYY'), 8, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Yara', 0, TO_DATE('28/06/2024','DD/MM/YYYY'), TO_DATE('27/02/2025','DD/MM/YYYY'), 1, 3);
INSERT INTO acompanhamentos (aco_nome_paciente, aco_status, aco_data_inicio, aco_data_fim, aco_mot_id, aco_mod_id) VALUES ('Yasmin', 0, TO_DATE('05/06/2025','DD/MM/YYYY'), TO_DATE('03/01/2026','DD/MM/YYYY'), 9, 2);

-- ============================================================
-- ACOMPANHAMENTOS_DIAGNOSTICOS
-- ============================================================
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (29, 67);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (34, 68);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (16, 69);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (5, 70);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (7, 71);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (5, 72);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (24, 73);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (5, 74);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (2, 75);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (29, 76);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (24, 77);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (5, 78);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (29, 79);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (29, 80);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (13, 81);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (23, 82);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (5, 83);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (29, 84);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (24, 85);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (10, 86);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (35, 87);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (40, 88);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (28, 89);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (7, 90);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (33, 91);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (8, 92);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (39, 93);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (25, 94);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (16, 95);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (5, 96);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (29, 97);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (29, 98);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (11, 99);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (5, 100);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (5, 101);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (35, 102);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (3, 103);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (16, 104);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (24, 105);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (5, 106);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (3, 107);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (10, 108);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (29, 109);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (10, 110);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (15, 111);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (41, 112);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (38, 113);
INSERT INTO acompanhamentos_diagnosticos (acod_diag_id, acod_aco_id) VALUES (11, 114);

-- ============================================================
-- ACOMPANHAMENTOS_MENSAIS
-- ============================================================
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 4, 0, 0.00, 67);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 2, 0, 340.00, 68);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 2, 0, 340.00, 68);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 2, 0, 0.00, 68);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 2, 0, 310.00, 69);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 1, 0, 200.00, 69);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 2, 0, 310.00, 70);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 4, 0, 520.00, 71);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 3, 0, 150.00, 72);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 3, 0, 150.00, 72);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 2, 0, 310.00, 73);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 2, 0, 310.00, 73);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 2, 0, 310.00, 73);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 1, 0, 200.00, 74);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 2, 0, 310.00, 74);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 2, 0, 310.00, 74);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 4, 0, 520.00, 75);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 2, 0, 340.00, 75);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 2, 0, 340.00, 75);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 1, 0, 0.00, 76);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 3, 0, 0.00, 76);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 4, 0, 0.00, 77);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 4, 0, 0.00, 78);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 4, 0, 0.00, 78);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 4, 0, 0.00, 79);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 2, 0, 0.00, 79);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 4, 0, 460.00, 80);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 1, 0, 200.00, 80);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 1, 0, 0.00, 80);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 1, 0, 0.00, 80);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 1, 0, 0.00, 80);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 4, 0, 520.00, 81);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 2, 0, 340.00, 81);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 4, 0, 520.00, 81);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 1, 0, 200.00, 82);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 3, 0, 405.00, 82);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 4, 0, 460.00, 82);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 4, 0, 460.00, 82);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 4, 0, 520.00, 82);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 2, 0, 340.00, 82);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 1, 0, 155.00, 83);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 2, 0, 310.00, 83);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 2, 0, 310.00, 83);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 2, 0, 340.00, 83);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 1, 0, 215.00, 83);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 1, 0, 200.00, 84);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 1, 0, 225.00, 84);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 1, 0, 200.00, 85);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 2, 1, 300.00, 86);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 1, 0, 200.00, 86);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 4, 0, 520.00, 87);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 4, 0, 520.00, 87);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 2, 0, 340.00, 87);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 1, 0, 270.00, 88);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 2, 0, 310.00, 89);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 1, 0, 200.00, 89);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 1, 0, 200.00, 90);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 2, 0, 200.00, 90);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 2, 0, 200.00, 90);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 1, 0, 100.00, 90);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 1, 1, 0.00, 90);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 1, 0, 0.00, 90);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 2, 0, 310.00, 91);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 4, 0, 460.00, 92);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 2, 0, 310.00, 92);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 2, 0, 310.00, 92);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 2, 0, 340.00, 92);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 2, 0, 340.00, 92);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 1, 0, 150.00, 93);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 4, 1, 405.00, 94);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 1, 0, 200.00, 94);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 2, 0, 310.00, 95);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 2, 3, 0.00, 95);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 2, 0, 310.00, 95);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 2, 4, 0.00, 95);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 4, 0, 0.00, 96);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 4, 0, 0.00, 96);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 2, 0, 0.00, 96);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 4, 0, 0.00, 97);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 1, 0, 200.00, 98);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 1, 0, 200.00, 98);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 1, 0, 200.00, 98);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 1, 0, 200.00, 98);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 1, 0, 215.00, 98);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 1, 0, 215.00, 98);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 4, 0, 520.00, 99);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 2, 0, 340.00, 100);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 2, 0, 300.00, 100);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 2, 0, 310.00, 101);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 4, 0, 520.00, 101);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 1, 0, 225.00, 102);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 4, 0, 0.00, 103);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 4, 0, 0.00, 103);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 2, 0, 0.00, 103);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 4, 0, 0.00, 103);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 3, 0, 405.00, 103);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 4, 0, 460.00, 103);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 2, 0, 310.00, 104);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 2, 0, 310.00, 104);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 1, 0, 0.00, 104);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 1, 0, 0.00, 104);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 1, 0, 200.00, 105);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 4, 0, 460.00, 106);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 2, 0, 310.00, 107);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 1, 0, 200.00, 107);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 1, 0, 200.00, 107);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 1, 0, 200.00, 107);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('06/01/2024','DD/MM/YYYY'), 1, 0, 190.00, 108);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 1, 0, 200.00, 108);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 1, 0, 200.00, 108);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 1, 0, 200.00, 108);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 1, 0, 215.00, 108);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('05/01/2026','DD/MM/YYYY'), 1, 0, 215.00, 108);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/05/2024','DD/MM/YYYY'), 1, 0, 175.00, 108);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 1, 0, 215.00, 109);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 1, 0, 175.00, 110);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 2, 0, 340.00, 111);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 4, 0, 520.00, 111);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 2, 0, 0.00, 112);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2024','DD/MM/YYYY'), 1, 0, 200.00, 113);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2025','DD/MM/YYYY'), 4, 0, 400.00, 113);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 2, 0, 340.00, 113);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('07/01/2025','DD/MM/YYYY'), 1, 0, 200.00, 114);
INSERT INTO acompanhamentos_mensais (men_periodo, men_vezes_mes, men_vezes_falta, men_valor_mensal, men_aco_id) VALUES (TO_DATE('03/01/2026','DD/MM/YYYY'), 3, 0, 405.00, 114);

COMMIT;
