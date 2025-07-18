--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: josep
--

INSERT INTO public._prisma_migrations VALUES ('04b9b73f-bcfa-4580-a4dc-b84d3f69a3c5', '3dc7e6208afbcc9de852385c46b740fbe048aaa9ea24602d66c46330959ca982', '2025-06-03 21:15:24.638701-06', '20250603171542_init', NULL, NULL, '2025-06-03 21:15:24.498007-06', 1);


--
-- Data for Name: cursos; Type: TABLE DATA; Schema: public; Owner: josep
--

INSERT INTO public.cursos VALUES (1, 'Programaci├│n I', 'Aperiam aufero cicuta venia depono spero capto peior vis.', 4, 'INTERMEDIO', 1500.43, '2025-06-04 03:15:42.96', '2025-06-04 03:15:42.96');
INSERT INTO public.cursos VALUES (2, 'C├ílculo I', 'Absorbeo suus depraedor iste curto conatus vulnero laborum statua.', 5, 'AVANZADO', 933.24, '2025-06-04 03:15:42.963', '2025-06-04 03:15:42.963');
INSERT INTO public.cursos VALUES (3, 'F├¡sica B├ísica', 'Denuo deleniti amo audax cito.', 3, 'ESPECIALIZADO', 1219.05, '2025-06-04 03:15:42.964', '2025-06-04 03:15:42.964');
INSERT INTO public.cursos VALUES (4, 'Qu├¡mica General', 'Triduana arca comptus doloribus viriliter tricesimus volubilis adsum derelinquo.', 4, 'BASICO', 1833.54, '2025-06-04 03:15:42.965', '2025-06-04 03:15:42.965');
INSERT INTO public.cursos VALUES (5, 'Derecho Constitucional', 'Deduco tondeo credo theca ubi desolo videlicet.', 5, 'INTERMEDIO', 629.33, '2025-06-04 03:15:42.966', '2025-06-04 03:15:42.966');
INSERT INTO public.cursos VALUES (6, 'Anatom├¡a Humana', 'Verecundia basium eius.', 3, 'AVANZADO', 1549.02, '2025-06-04 03:15:42.968', '2025-06-04 03:15:42.968');
INSERT INTO public.cursos VALUES (7, 'Dise├▒o Arquitect├│nico', 'Cena sollers vulariter corporis acsi tabesco.', 4, 'ESPECIALIZADO', 758.32, '2025-06-04 03:15:42.969', '2025-06-04 03:15:42.969');
INSERT INTO public.cursos VALUES (8, 'Contabilidad I', 'Adhuc consuasor tristis comedo aeternus tui beatus balbus.', 5, 'BASICO', 775.46, '2025-06-04 03:15:42.971', '2025-06-04 03:15:42.971');
INSERT INTO public.cursos VALUES (9, 'Psicolog├¡a General', 'Utique deleniti corrumpo.', 3, 'INTERMEDIO', 1674.36, '2025-06-04 03:15:42.972', '2025-06-04 03:15:42.972');
INSERT INTO public.cursos VALUES (10, 'Biolog├¡a Celular', 'Arx argentum arguo annus viscus taceo absens calculus.', 4, 'AVANZADO', 581.67, '2025-06-04 03:15:42.973', '2025-06-04 03:15:42.973');
INSERT INTO public.cursos VALUES (11, 'Bases de Datos', 'Sordeo statua decor.', 5, 'ESPECIALIZADO', 1078.50, '2025-06-04 03:15:42.973', '2025-06-04 03:15:42.973');
INSERT INTO public.cursos VALUES (12, 'Estructuras', 'Apparatus considero dolores aer pel caritas aqua valetudo.', 3, 'BASICO', 813.83, '2025-06-04 03:15:42.974', '2025-06-04 03:15:42.974');
INSERT INTO public.cursos VALUES (13, 'Psicopatolog├¡a', 'Vespillo officia cruentus omnis officia asporto avaritia.', 4, 'INTERMEDIO', 1736.97, '2025-06-04 03:15:42.975', '2025-06-04 03:15:42.975');
INSERT INTO public.cursos VALUES (14, 'Farmacolog├¡a', 'Vociferor addo capillus subito quibusdam triduana.', 5, 'AVANZADO', 874.11, '2025-06-04 03:15:42.977', '2025-06-04 03:15:42.977');
INSERT INTO public.cursos VALUES (15, 'Urbanismo', 'Collum adipisci cohibeo demoror antea assumenda vado villa totam.', 3, 'ESPECIALIZADO', 1281.19, '2025-06-04 03:15:42.978', '2025-06-04 03:15:42.978');
INSERT INTO public.cursos VALUES (16, 'Finanzas', 'Umquam umerus degero quidem ambitus soluta dolor theologus.', 4, 'BASICO', 946.94, '2025-06-04 03:15:42.979', '2025-06-04 03:15:42.979');
INSERT INTO public.cursos VALUES (17, 'Derecho Penal', 'Dedecor arx adaugeo summisse.', 5, 'INTERMEDIO', 653.48, '2025-06-04 03:15:42.98', '2025-06-04 03:15:42.98');
INSERT INTO public.cursos VALUES (18, 'Gen├®tica', 'Conspergo uxor spero bardus deficio sollers desparatus.', 3, 'AVANZADO', 1452.91, '2025-06-04 03:15:42.98', '2025-06-04 03:15:42.98');
INSERT INTO public.cursos VALUES (19, 'Redes', 'Ventosus clementia viscus rerum terminatio capillus ait stella atrocitas.', 4, 'ESPECIALIZADO', 855.90, '2025-06-04 03:15:42.981', '2025-06-04 03:15:42.981');
INSERT INTO public.cursos VALUES (20, 'Mec├ínica', 'Corrupti calco adficio.', 5, 'BASICO', 1061.04, '2025-06-04 03:15:42.982', '2025-06-04 03:15:42.982');


--
-- Data for Name: maestros; Type: TABLE DATA; Schema: public; Owner: josep
--

INSERT INTO public.maestros VALUES (1, 'Stephen', 'Padberg', 'profesor1_Franecki25@hotmail.com', '52631419', '2025-06-04 03:15:42.933', '2025-06-04 03:15:42.933');
INSERT INTO public.maestros VALUES (2, 'Zoe', 'Reynolds', 'profesor226@hotmail.com', '53876907', '2025-06-04 03:15:42.939', '2025-06-04 03:15:42.939');
INSERT INTO public.maestros VALUES (3, 'Maude', 'Huels', 'profesor3_Boyer42@gmail.com', '58753827', '2025-06-04 03:15:42.941', '2025-06-04 03:15:42.941');
INSERT INTO public.maestros VALUES (4, 'Breanna', 'Larson', 'profesor4_Dare26@yahoo.com', '59296217', '2025-06-04 03:15:42.942', '2025-06-04 03:15:42.942');
INSERT INTO public.maestros VALUES (5, 'Olen', 'Gislason', 'profesor5.Brakus11@yahoo.com', '54566524', '2025-06-04 03:15:42.943', '2025-06-04 03:15:42.943');
INSERT INTO public.maestros VALUES (6, 'Christine', 'Smith', 'profesor69@gmail.com', '58646880', '2025-06-04 03:15:42.944', '2025-06-04 03:15:42.944');
INSERT INTO public.maestros VALUES (7, 'Gilbert', 'Lowe', 'profesor765@gmail.com', '57110601', '2025-06-04 03:15:42.945', '2025-06-04 03:15:42.945');
INSERT INTO public.maestros VALUES (8, 'Dolly', 'Marks', 'profesor8_Borer@gmail.com', '56341087', '2025-06-04 03:15:42.946', '2025-06-04 03:15:42.946');
INSERT INTO public.maestros VALUES (9, 'Hubert', 'Larkin-Macejkovic', 'profesor92@yahoo.com', '54927343', '2025-06-04 03:15:42.947', '2025-06-04 03:15:42.947');
INSERT INTO public.maestros VALUES (10, 'Berenice', 'Spencer', 'profesor10_Yundt79@yahoo.com', '56420060', '2025-06-04 03:15:42.948', '2025-06-04 03:15:42.948');
INSERT INTO public.maestros VALUES (11, 'Malinda', 'Mohr', 'profesor1116@gmail.com', '54116376', '2025-06-04 03:15:42.948', '2025-06-04 03:15:42.948');
INSERT INTO public.maestros VALUES (12, 'Shanie', 'Stoltenberg', 'profesor12.Emmerich@hotmail.com', '55509408', '2025-06-04 03:15:42.95', '2025-06-04 03:15:42.95');
INSERT INTO public.maestros VALUES (13, 'Cornelius', 'Stamm', 'profesor13.Borer@gmail.com', '52996215', '2025-06-04 03:15:42.951', '2025-06-04 03:15:42.951');
INSERT INTO public.maestros VALUES (14, 'Kendrick', 'Wunsch', 'profesor14_Huels@gmail.com', '57897655', '2025-06-04 03:15:42.951', '2025-06-04 03:15:42.951');
INSERT INTO public.maestros VALUES (15, 'Chris', 'Crist', 'profesor15_Ward21@gmail.com', '55382121', '2025-06-04 03:15:42.954', '2025-06-04 03:15:42.954');
INSERT INTO public.maestros VALUES (16, 'Enrique', 'Gerlach', 'profesor16.Hilll@hotmail.com', '53904613', '2025-06-04 03:15:42.955', '2025-06-04 03:15:42.955');
INSERT INTO public.maestros VALUES (17, 'Estrella', 'Lesch', 'profesor17_Gutmann31@yahoo.com', '54686173', '2025-06-04 03:15:42.956', '2025-06-04 03:15:42.956');
INSERT INTO public.maestros VALUES (18, 'Cordell', 'Oberbrunner', 'profesor18.Sipes@hotmail.com', '57235119', '2025-06-04 03:15:42.957', '2025-06-04 03:15:42.957');
INSERT INTO public.maestros VALUES (19, 'Reggie', 'Pollich', 'profesor19.Rowe@hotmail.com', '58296578', '2025-06-04 03:15:42.957', '2025-06-04 03:15:42.957');
INSERT INTO public.maestros VALUES (20, 'Marie', 'O''Conner', 'profesor2040@yahoo.com', '54326592', '2025-06-04 03:15:42.958', '2025-06-04 03:15:42.958');


--
-- Data for Name: salones; Type: TABLE DATA; Schema: public; Owner: josep
--

INSERT INTO public.salones VALUES (1, 'A-1A', 25);
INSERT INTO public.salones VALUES (2, 'A-2B', 30);
INSERT INTO public.salones VALUES (3, 'A-3C', 35);
INSERT INTO public.salones VALUES (4, 'A-4D', 40);
INSERT INTO public.salones VALUES (5, 'A-5E', 45);
INSERT INTO public.salones VALUES (6, 'A-6F', 50);
INSERT INTO public.salones VALUES (7, 'A-7G', 55);
INSERT INTO public.salones VALUES (8, 'A-8H', 60);
INSERT INTO public.salones VALUES (9, 'A-9I', 65);
INSERT INTO public.salones VALUES (10, 'A-10J', 70);


--
-- Data for Name: secciones; Type: TABLE DATA; Schema: public; Owner: josep
--

INSERT INTO public.secciones VALUES (1, 1, 1, 2);
INSERT INTO public.secciones VALUES (2, 2, 2, 3);
INSERT INTO public.secciones VALUES (3, 3, 3, 4);
INSERT INTO public.secciones VALUES (4, 4, 4, 5);
INSERT INTO public.secciones VALUES (5, 5, 5, 6);
INSERT INTO public.secciones VALUES (6, 6, 6, 7);
INSERT INTO public.secciones VALUES (7, 7, 7, 8);
INSERT INTO public.secciones VALUES (8, 8, 8, 9);
INSERT INTO public.secciones VALUES (9, 9, 9, 10);
INSERT INTO public.secciones VALUES (10, 10, 10, 1);
INSERT INTO public.secciones VALUES (11, 11, 11, 2);
INSERT INTO public.secciones VALUES (12, 12, 12, 3);
INSERT INTO public.secciones VALUES (13, 13, 13, 4);
INSERT INTO public.secciones VALUES (14, 14, 14, 5);
INSERT INTO public.secciones VALUES (15, 15, 15, 6);
INSERT INTO public.secciones VALUES (16, 16, 16, 7);
INSERT INTO public.secciones VALUES (17, 17, 17, 8);
INSERT INTO public.secciones VALUES (18, 18, 18, 9);
INSERT INTO public.secciones VALUES (19, 19, 19, 10);
INSERT INTO public.secciones VALUES (20, 20, 20, 1);


--
-- Data for Name: actividades; Type: TABLE DATA; Schema: public; Owner: josep
--

INSERT INTO public.actividades VALUES (1, 1, 'Actividad 1: certe adsum triduana', 13.90, 'PRESENTACION');
INSERT INTO public.actividades VALUES (2, 1, 'Actividad 2: curtus canonicus spiculum', 6.60, 'PRESENTACION');
INSERT INTO public.actividades VALUES (3, 1, 'Actividad 3: defungo utilis aliqua', 6.80, 'LABORATORIO');
INSERT INTO public.actividades VALUES (4, 1, 'Actividad 4: deserunt celebrer curis', 8.90, 'LABORATORIO');
INSERT INTO public.actividades VALUES (5, 1, 'Actividad 5: confugo tenus tergum', 18.50, 'LABORATORIO');
INSERT INTO public.actividades VALUES (6, 2, 'Actividad 6: tardus adamo confugo', 14.30, 'PROYECTO');
INSERT INTO public.actividades VALUES (7, 2, 'Actividad 7: vitae damno auctus', 15.20, 'LABORATORIO');
INSERT INTO public.actividades VALUES (8, 2, 'Actividad 8: voluptate volaticus verus', 15.00, 'PROYECTO');
INSERT INTO public.actividades VALUES (9, 2, 'Actividad 9: via animi pecco', 16.20, 'EXAMEN');
INSERT INTO public.actividades VALUES (10, 2, 'Actividad 10: natus cilicium cicuta', 14.30, 'PRESENTACION');
INSERT INTO public.actividades VALUES (11, 3, 'Actividad 11: depereo venio paens', 9.40, 'PRESENTACION');
INSERT INTO public.actividades VALUES (12, 3, 'Actividad 12: terror saepe appono', 9.80, 'TAREA');
INSERT INTO public.actividades VALUES (13, 3, 'Actividad 13: comitatus nihil villa', 19.30, 'LABORATORIO');
INSERT INTO public.actividades VALUES (14, 3, 'Actividad 14: aqua baiulus necessitatibus', 11.80, 'TAREA');
INSERT INTO public.actividades VALUES (15, 3, 'Actividad 15: accusamus vicissitudo nesciunt', 12.00, 'LABORATORIO');
INSERT INTO public.actividades VALUES (16, 4, 'Actividad 16: magni patrocinor admoneo', 16.70, 'EXAMEN');
INSERT INTO public.actividades VALUES (17, 4, 'Actividad 17: depono somniculosus asperiores', 9.70, 'EXAMEN');
INSERT INTO public.actividades VALUES (18, 4, 'Actividad 18: uredo uredo patruus', 14.60, 'TAREA');
INSERT INTO public.actividades VALUES (19, 4, 'Actividad 19: conicio cupio crepusculum', 10.10, 'LABORATORIO');
INSERT INTO public.actividades VALUES (20, 4, 'Actividad 20: sponte delectatio atqui', 17.90, 'PROYECTO');
INSERT INTO public.actividades VALUES (21, 5, 'Actividad 21: termes uxor cilicium', 19.30, 'LABORATORIO');
INSERT INTO public.actividades VALUES (22, 5, 'Actividad 22: tener deinde vulgivagus', 5.30, 'EXAMEN');
INSERT INTO public.actividades VALUES (23, 5, 'Actividad 23: arca reprehenderit nulla', 15.60, 'LABORATORIO');
INSERT INTO public.actividades VALUES (24, 5, 'Actividad 24: tergo stabilis tribuo', 15.20, 'PRESENTACION');
INSERT INTO public.actividades VALUES (25, 5, 'Actividad 25: conicio tonsor aeger', 12.20, 'PRESENTACION');
INSERT INTO public.actividades VALUES (26, 6, 'Actividad 26: blandior complectus taedium', 6.60, 'EXAMEN');
INSERT INTO public.actividades VALUES (27, 6, 'Actividad 27: vox corpus acervus', 14.00, 'EXAMEN');
INSERT INTO public.actividades VALUES (28, 6, 'Actividad 28: consectetur asper basium', 9.60, 'PRESENTACION');
INSERT INTO public.actividades VALUES (29, 6, 'Actividad 29: templum sumptus desparatus', 18.20, 'LABORATORIO');
INSERT INTO public.actividades VALUES (30, 6, 'Actividad 30: tener angelus conqueror', 11.80, 'PROYECTO');
INSERT INTO public.actividades VALUES (31, 7, 'Actividad 31: summisse animadverto eaque', 9.10, 'PROYECTO');
INSERT INTO public.actividades VALUES (32, 7, 'Actividad 32: abundans voluptate creber', 19.10, 'TAREA');
INSERT INTO public.actividades VALUES (33, 7, 'Actividad 33: abstergo atqui vapulus', 17.10, 'LABORATORIO');
INSERT INTO public.actividades VALUES (34, 7, 'Actividad 34: nobis ulciscor voro', 5.30, 'PROYECTO');
INSERT INTO public.actividades VALUES (35, 7, 'Actividad 35: vilitas caritas amitto', 12.40, 'PROYECTO');
INSERT INTO public.actividades VALUES (36, 8, 'Actividad 36: cilicium demens ceno', 5.70, 'EXAMEN');
INSERT INTO public.actividades VALUES (37, 8, 'Actividad 37: bestia aduro theca', 17.10, 'PRESENTACION');
INSERT INTO public.actividades VALUES (38, 8, 'Actividad 38: desidero arx appello', 5.60, 'LABORATORIO');
INSERT INTO public.actividades VALUES (39, 8, 'Actividad 39: infit tonsor valens', 6.10, 'PROYECTO');
INSERT INTO public.actividades VALUES (40, 8, 'Actividad 40: substantia angelus usus', 5.60, 'PROYECTO');
INSERT INTO public.actividades VALUES (41, 9, 'Actividad 41: dolorum curso bardus', 6.10, 'LABORATORIO');
INSERT INTO public.actividades VALUES (42, 9, 'Actividad 42: baiulus aggredior blanditiis', 11.40, 'PROYECTO');
INSERT INTO public.actividades VALUES (43, 9, 'Actividad 43: crur conspergo viriliter', 7.90, 'EXAMEN');
INSERT INTO public.actividades VALUES (44, 9, 'Actividad 44: aliquid amissio brevis', 13.30, 'LABORATORIO');
INSERT INTO public.actividades VALUES (45, 9, 'Actividad 45: denuo soleo vulgaris', 7.30, 'EXAMEN');
INSERT INTO public.actividades VALUES (46, 10, 'Actividad 46: pel provident vigilo', 6.10, 'PROYECTO');
INSERT INTO public.actividades VALUES (47, 10, 'Actividad 47: acsi vallum sub', 10.30, 'PROYECTO');
INSERT INTO public.actividades VALUES (48, 10, 'Actividad 48: angustus voluptatem ter', 17.70, 'EXAMEN');
INSERT INTO public.actividades VALUES (49, 10, 'Actividad 49: altus cumque defleo', 7.30, 'LABORATORIO');
INSERT INTO public.actividades VALUES (50, 10, 'Actividad 50: absconditus reiciendis audentia', 14.40, 'TAREA');
INSERT INTO public.actividades VALUES (51, 11, 'Actividad 51: currus assumenda quasi', 18.10, 'TAREA');
INSERT INTO public.actividades VALUES (52, 11, 'Actividad 52: pecco dignissimos absum', 19.00, 'PROYECTO');
INSERT INTO public.actividades VALUES (53, 11, 'Actividad 53: amitto corrigo avarus', 17.90, 'EXAMEN');
INSERT INTO public.actividades VALUES (54, 11, 'Actividad 54: defetiscor verecundia defluo', 19.90, 'EXAMEN');
INSERT INTO public.actividades VALUES (55, 11, 'Actividad 55: mollitia soleo sto', 10.60, 'TAREA');
INSERT INTO public.actividades VALUES (56, 12, 'Actividad 56: tot cetera ratione', 19.30, 'LABORATORIO');
INSERT INTO public.actividades VALUES (57, 12, 'Actividad 57: ancilla cinis compello', 7.40, 'EXAMEN');
INSERT INTO public.actividades VALUES (58, 12, 'Actividad 58: suffoco cunctatio utique', 6.80, 'PROYECTO');
INSERT INTO public.actividades VALUES (59, 12, 'Actividad 59: cubitum aestas strues', 7.10, 'LABORATORIO');
INSERT INTO public.actividades VALUES (60, 12, 'Actividad 60: barba suspendo spiritus', 7.00, 'PRESENTACION');
INSERT INTO public.actividades VALUES (61, 13, 'Actividad 61: saepe caritas adopto', 9.60, 'EXAMEN');
INSERT INTO public.actividades VALUES (62, 13, 'Actividad 62: adstringo quae cupressus', 17.90, 'EXAMEN');
INSERT INTO public.actividades VALUES (63, 13, 'Actividad 63: certe carmen adeo', 10.90, 'EXAMEN');
INSERT INTO public.actividades VALUES (64, 13, 'Actividad 64: assentator terebro suus', 7.20, 'PRESENTACION');
INSERT INTO public.actividades VALUES (65, 13, 'Actividad 65: adhuc viduo validus', 10.80, 'EXAMEN');
INSERT INTO public.actividades VALUES (66, 14, 'Actividad 66: itaque angulus necessitatibus', 5.90, 'EXAMEN');
INSERT INTO public.actividades VALUES (67, 14, 'Actividad 67: curis aedificium demoror', 14.90, 'PRESENTACION');
INSERT INTO public.actividades VALUES (68, 14, 'Actividad 68: vigilo taceo in', 12.00, 'TAREA');
INSERT INTO public.actividades VALUES (69, 14, 'Actividad 69: demulceo soluta vitae', 17.20, 'PROYECTO');
INSERT INTO public.actividades VALUES (70, 14, 'Actividad 70: vulticulus tunc error', 12.90, 'PRESENTACION');
INSERT INTO public.actividades VALUES (71, 15, 'Actividad 71: maxime trans delinquo', 10.60, 'TAREA');
INSERT INTO public.actividades VALUES (72, 15, 'Actividad 72: astrum altus confugo', 16.90, 'PRESENTACION');
INSERT INTO public.actividades VALUES (73, 15, 'Actividad 73: addo confido natus', 16.50, 'LABORATORIO');
INSERT INTO public.actividades VALUES (74, 15, 'Actividad 74: altus spoliatio vaco', 11.30, 'PRESENTACION');
INSERT INTO public.actividades VALUES (75, 15, 'Actividad 75: clam appello autus', 5.30, 'PROYECTO');
INSERT INTO public.actividades VALUES (76, 16, 'Actividad 76: tantum calamitas undique', 13.40, 'EXAMEN');
INSERT INTO public.actividades VALUES (77, 16, 'Actividad 77: curia curriculum utique', 11.60, 'PRESENTACION');
INSERT INTO public.actividades VALUES (78, 16, 'Actividad 78: denique deleniti peccatus', 13.20, 'EXAMEN');
INSERT INTO public.actividades VALUES (79, 16, 'Actividad 79: bardus casso volup', 8.20, 'EXAMEN');
INSERT INTO public.actividades VALUES (80, 16, 'Actividad 80: cena attero alienus', 7.00, 'LABORATORIO');
INSERT INTO public.actividades VALUES (81, 17, 'Actividad 81: nemo tabernus tumultus', 8.60, 'LABORATORIO');
INSERT INTO public.actividades VALUES (82, 17, 'Actividad 82: absum ars subiungo', 15.50, 'PROYECTO');
INSERT INTO public.actividades VALUES (83, 17, 'Actividad 83: nisi autem vis', 8.40, 'PRESENTACION');
INSERT INTO public.actividades VALUES (84, 17, 'Actividad 84: atrox denuncio tactus', 14.10, 'TAREA');
INSERT INTO public.actividades VALUES (85, 17, 'Actividad 85: denuncio cornu temporibus', 5.90, 'TAREA');
INSERT INTO public.actividades VALUES (86, 18, 'Actividad 86: adsuesco talio capitulus', 15.50, 'PROYECTO');
INSERT INTO public.actividades VALUES (87, 18, 'Actividad 87: abeo alius basium', 11.80, 'LABORATORIO');
INSERT INTO public.actividades VALUES (88, 18, 'Actividad 88: vis neque aspicio', 8.20, 'LABORATORIO');
INSERT INTO public.actividades VALUES (89, 18, 'Actividad 89: asporto cogo eius', 9.20, 'TAREA');
INSERT INTO public.actividades VALUES (90, 18, 'Actividad 90: uterque viridis eos', 7.90, 'TAREA');
INSERT INTO public.actividades VALUES (91, 19, 'Actividad 91: canis coerceo universe', 10.90, 'PROYECTO');
INSERT INTO public.actividades VALUES (92, 19, 'Actividad 92: culpa volva conscendo', 15.30, 'EXAMEN');
INSERT INTO public.actividades VALUES (93, 19, 'Actividad 93: deleo tenetur damno', 18.10, 'LABORATORIO');
INSERT INTO public.actividades VALUES (94, 19, 'Actividad 94: soluta amitto somnus', 17.20, 'PROYECTO');
INSERT INTO public.actividades VALUES (95, 19, 'Actividad 95: ademptio est paens', 7.80, 'EXAMEN');
INSERT INTO public.actividades VALUES (96, 20, 'Actividad 96: mollitia custodia stella', 11.30, 'EXAMEN');
INSERT INTO public.actividades VALUES (97, 20, 'Actividad 97: asper vesco spes', 11.80, 'PROYECTO');
INSERT INTO public.actividades VALUES (98, 20, 'Actividad 98: ultra umbra attollo', 6.30, 'PROYECTO');
INSERT INTO public.actividades VALUES (99, 20, 'Actividad 99: voveo viscus dens', 14.70, 'TAREA');
INSERT INTO public.actividades VALUES (100, 20, 'Actividad 100: venustas demens cuppedia', 10.10, 'PROYECTO');


--
-- Data for Name: autores; Type: TABLE DATA; Schema: public; Owner: josep
--

INSERT INTO public.autores VALUES (1, 'Pablo Fadel');
INSERT INTO public.autores VALUES (2, 'Miss Eloise Cartwright');
INSERT INTO public.autores VALUES (3, 'Theresa Feil');
INSERT INTO public.autores VALUES (4, 'Judy Dickens V');
INSERT INTO public.autores VALUES (5, 'Alexander Muller');
INSERT INTO public.autores VALUES (6, 'Julio Schowalter-Lueilwitz');
INSERT INTO public.autores VALUES (7, 'Sadie Sanford');
INSERT INTO public.autores VALUES (8, 'Beulah Gerhold');
INSERT INTO public.autores VALUES (9, 'Ms. Christy Blanda');
INSERT INTO public.autores VALUES (10, 'Jennie Keebler');


--
-- Data for Name: becas; Type: TABLE DATA; Schema: public; Owner: josep
--

INSERT INTO public.becas VALUES (1, 'Beca Excelencia Acad├®mica', 50);
INSERT INTO public.becas VALUES (2, 'Beca Deportiva', 75);
INSERT INTO public.becas VALUES (3, 'Beca Art├¡stica', 100);
INSERT INTO public.becas VALUES (4, 'Beca Socioecon├│mica', 25);
INSERT INTO public.becas VALUES (5, 'Beca Investigaci├│n', 50);


--
-- Data for Name: facultades; Type: TABLE DATA; Schema: public; Owner: josep
--

INSERT INTO public.facultades VALUES (1, 'Facultad de Arquitectura');
INSERT INTO public.facultades VALUES (2, 'Facultad de Medicina');
INSERT INTO public.facultades VALUES (3, 'Facultad de Ciencias Sociales');
INSERT INTO public.facultades VALUES (4, 'Facultad de Ciencias Econ├│micas');
INSERT INTO public.facultades VALUES (5, 'Facultad de Ingenier├¡a');


--
-- Data for Name: carreras; Type: TABLE DATA; Schema: public; Owner: josep
--

INSERT INTO public.carreras VALUES (1, 1, 'Ingenier├¡a en Sistemas', 'Vobis consuasor volaticus tergeo cervus.');
INSERT INTO public.carreras VALUES (2, 1, 'Ingenier├¡a Civil', 'Ater velit vespillo.');
INSERT INTO public.carreras VALUES (3, 2, 'Psicolog├¡a', 'Trado defessus tredecim arbustum talio.');
INSERT INTO public.carreras VALUES (4, 2, 'Medicina', 'Depono quasi cras.');
INSERT INTO public.carreras VALUES (5, 3, 'Arquitectura', 'Aeger creo canonicus derideo admoneo color libero modi ea excepturi.');
INSERT INTO public.carreras VALUES (6, 3, 'Administraci├│n de Empresas', 'Vapulus deinde vos ustilo amiculum adulescens cotidie.');
INSERT INTO public.carreras VALUES (7, 4, 'Derecho', 'Careo repellat agnitio.');
INSERT INTO public.carreras VALUES (8, 4, 'Biolog├¡a', 'Adeo verbum depraedor.');
INSERT INTO public.carreras VALUES (9, 5, 'Dise├▒o Gr├ífico', 'Aegrotatio cometes eum ea facilis apostolus debilito.');
INSERT INTO public.carreras VALUES (10, 5, 'Contadur├¡a P├║blica', 'Volup vicinus amplexus.');


--
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: josep
--

INSERT INTO public.items VALUES (1, 'Libro-1', false, 3);
INSERT INTO public.items VALUES (2, 'Libro-2', true, 5);
INSERT INTO public.items VALUES (3, 'Libro-3', true, 5);
INSERT INTO public.items VALUES (4, 'Libro-4', true, 2);
INSERT INTO public.items VALUES (5, 'Libro-5', false, 1);
INSERT INTO public.items VALUES (6, 'Libro-6', true, 5);
INSERT INTO public.items VALUES (7, 'Libro-7', false, 4);
INSERT INTO public.items VALUES (8, 'Libro-8', false, 3);
INSERT INTO public.items VALUES (9, 'Libro-9', true, 3);
INSERT INTO public.items VALUES (10, 'Libro-10', true, 2);
INSERT INTO public.items VALUES (11, 'Libro-11', true, 5);
INSERT INTO public.items VALUES (12, 'Libro-12', true, 3);
INSERT INTO public.items VALUES (13, 'Libro-13', false, 5);
INSERT INTO public.items VALUES (14, 'Libro-14', false, 1);
INSERT INTO public.items VALUES (15, 'Libro-15', false, 5);
INSERT INTO public.items VALUES (16, 'Libro-16', false, 1);
INSERT INTO public.items VALUES (17, 'Libro-17', true, 2);
INSERT INTO public.items VALUES (18, 'Libro-18', false, 2);
INSERT INTO public.items VALUES (19, 'Libro-19', true, 2);
INSERT INTO public.items VALUES (20, 'Libro-20', false, 2);
INSERT INTO public.items VALUES (21, 'Libro-21', true, 2);
INSERT INTO public.items VALUES (22, 'Libro-22', false, 5);
INSERT INTO public.items VALUES (23, 'Libro-23', false, 3);
INSERT INTO public.items VALUES (24, 'Libro-24', false, 2);
INSERT INTO public.items VALUES (25, 'Libro-25', true, 2);
INSERT INTO public.items VALUES (26, 'Dispositivo-1', true, 1);
INSERT INTO public.items VALUES (27, 'Dispositivo-2', false, 1);
INSERT INTO public.items VALUES (28, 'Dispositivo-3', false, 1);
INSERT INTO public.items VALUES (29, 'Dispositivo-4', true, 1);
INSERT INTO public.items VALUES (30, 'Dispositivo-5', true, 1);
INSERT INTO public.items VALUES (31, 'Dispositivo-6', false, 1);
INSERT INTO public.items VALUES (32, 'Dispositivo-7', true, 1);
INSERT INTO public.items VALUES (33, 'Dispositivo-8', false, 1);
INSERT INTO public.items VALUES (34, 'Dispositivo-9', false, 1);
INSERT INTO public.items VALUES (35, 'Dispositivo-10', true, 1);
INSERT INTO public.items VALUES (36, 'Dispositivo-11', false, 1);
INSERT INTO public.items VALUES (37, 'Dispositivo-12', false, 1);
INSERT INTO public.items VALUES (38, 'Dispositivo-13', true, 1);
INSERT INTO public.items VALUES (39, 'Dispositivo-14', true, 1);
INSERT INTO public.items VALUES (40, 'Dispositivo-15', false, 1);
INSERT INTO public.items VALUES (41, 'Dispositivo-16', false, 1);
INSERT INTO public.items VALUES (42, 'Dispositivo-17', false, 1);
INSERT INTO public.items VALUES (43, 'Dispositivo-18', true, 1);
INSERT INTO public.items VALUES (44, 'Dispositivo-19', false, 1);
INSERT INTO public.items VALUES (45, 'Dispositivo-20', false, 1);
INSERT INTO public.items VALUES (46, 'Dispositivo-21', false, 1);
INSERT INTO public.items VALUES (47, 'Dispositivo-22', true, 1);
INSERT INTO public.items VALUES (48, 'Dispositivo-23', false, 1);
INSERT INTO public.items VALUES (49, 'Dispositivo-24', false, 1);
INSERT INTO public.items VALUES (50, 'Dispositivo-25', true, 1);


--
-- Data for Name: dispositivos; Type: TABLE DATA; Schema: public; Owner: josep
--

INSERT INTO public.dispositivos VALUES (1, 26, 'Tablet');
INSERT INTO public.dispositivos VALUES (2, 27, 'Router');
INSERT INTO public.dispositivos VALUES (3, 28, 'Impresora');
INSERT INTO public.dispositivos VALUES (4, 29, 'Esc├íner');
INSERT INTO public.dispositivos VALUES (5, 30, 'Calculadora');
INSERT INTO public.dispositivos VALUES (6, 31, 'Proyector');
INSERT INTO public.dispositivos VALUES (7, 32, 'Esc├íner');
INSERT INTO public.dispositivos VALUES (8, 33, 'C├ímara');
INSERT INTO public.dispositivos VALUES (9, 34, 'Router');
INSERT INTO public.dispositivos VALUES (10, 35, 'Impresora');
INSERT INTO public.dispositivos VALUES (11, 36, 'Aud├¡fonos');
INSERT INTO public.dispositivos VALUES (12, 37, 'Esc├íner');
INSERT INTO public.dispositivos VALUES (13, 38, 'Router');
INSERT INTO public.dispositivos VALUES (14, 39, 'Aud├¡fonos');
INSERT INTO public.dispositivos VALUES (15, 40, 'Tablet');
INSERT INTO public.dispositivos VALUES (16, 41, 'Laptop');
INSERT INTO public.dispositivos VALUES (17, 42, 'Esc├íner');
INSERT INTO public.dispositivos VALUES (18, 43, 'Aud├¡fonos');
INSERT INTO public.dispositivos VALUES (19, 44, 'C├ímara');
INSERT INTO public.dispositivos VALUES (20, 45, 'Calculadora');
INSERT INTO public.dispositivos VALUES (21, 46, 'Laptop');
INSERT INTO public.dispositivos VALUES (22, 47, 'Laptop');
INSERT INTO public.dispositivos VALUES (23, 48, 'Esc├íner');
INSERT INTO public.dispositivos VALUES (24, 49, 'Laptop');
INSERT INTO public.dispositivos VALUES (25, 50, 'Esc├íner');


--
-- Data for Name: estudiantes; Type: TABLE DATA; Schema: public; Owner: josep
--

INSERT INTO public.estudiantes VALUES (1, '20250001', 2, 2, 'Rigoberto', 'McLaughlin', 'estudiante1_Lemke72@hotmail.com', '1996-08-17 21:50:24.673', false, '41037635', 85, '2025-06-04 03:15:43.013', '2025-06-04 03:15:43.013');
INSERT INTO public.estudiantes VALUES (2, '20230002', 3, 3, 'Reba', 'Nienow', 'estudiante20@gmail.com', '2002-09-06 07:03:19.428', false, '49528288', 51, '2025-06-04 03:15:43.019', '2025-06-04 03:15:43.019');
INSERT INTO public.estudiantes VALUES (3, '20230003', 4, 4, 'Lisette', 'Spinka', 'estudiante312@yahoo.com', '2002-02-16 16:55:07.455', true, '44412364', 1, '2025-06-04 03:15:43.02', '2025-06-04 03:15:43.02');
INSERT INTO public.estudiantes VALUES (4, '20240004', 5, 5, 'Dorcas', 'Mayer', 'estudiante498@hotmail.com', '1996-08-22 19:09:52.136', false, '40633740', 60, '2025-06-04 03:15:43.022', '2025-06-04 03:15:43.022');
INSERT INTO public.estudiantes VALUES (5, '20220005', 6, NULL, 'Angela', 'Schaefer', 'estudiante598@yahoo.com', '1998-06-18 15:40:58.44', true, '45292180', 47, '2025-06-04 03:15:43.023', '2025-06-04 03:15:43.023');
INSERT INTO public.estudiantes VALUES (6, '20240006', 7, 2, 'Kira', 'Hirthe', 'estudiante675@hotmail.com', '2001-06-27 02:17:33.498', true, '45512917', 40, '2025-06-04 03:15:43.024', '2025-06-04 03:15:43.024');
INSERT INTO public.estudiantes VALUES (7, '20250007', 8, 3, 'Zetta', 'Roob', 'estudiante7.Effertz@gmail.com', '2006-12-07 20:27:53.249', false, '41744250', 24, '2025-06-04 03:15:43.025', '2025-06-04 03:15:43.025');
INSERT INTO public.estudiantes VALUES (8, '20210008', 9, 4, 'Muriel', 'Hackett', 'estudiante867@yahoo.com', '1999-05-01 08:07:05.061', false, '44952041', 86, '2025-06-04 03:15:43.026', '2025-06-04 03:15:43.026');
INSERT INTO public.estudiantes VALUES (9, '20230009', 10, 5, 'Christop', 'Lesch', 'estudiante9_Schinner80@yahoo.com', '2002-02-17 01:08:50.984', false, '40556561', 48, '2025-06-04 03:15:43.027', '2025-06-04 03:15:43.027');
INSERT INTO public.estudiantes VALUES (10, '20250010', 1, NULL, 'Nelda', 'Ruecker', 'estudiante10_Heller@hotmail.com', '2004-03-14 06:07:55.598', true, '41568336', 45, '2025-06-04 03:15:43.028', '2025-06-04 03:15:43.028');
INSERT INTO public.estudiantes VALUES (11, '20220011', 2, 2, 'Lura', 'Hammes', 'estudiante113@gmail.com', '1995-03-06 05:10:42.46', false, '43917303', 63, '2025-06-04 03:15:43.029', '2025-06-04 03:15:43.029');
INSERT INTO public.estudiantes VALUES (12, '20230012', 3, 3, 'Alfred', 'Gislason', 'estudiante12.Johns@yahoo.com', '1998-05-23 15:03:58.945', true, '41698426', 38, '2025-06-04 03:15:43.03', '2025-06-04 03:15:43.03');
INSERT INTO public.estudiantes VALUES (13, '20200013', 4, 4, 'Cindy', 'Veum', 'estudiante139@hotmail.com', '2004-07-02 19:22:44.738', true, '49917920', 74, '2025-06-04 03:15:43.031', '2025-06-04 03:15:43.031');
INSERT INTO public.estudiantes VALUES (14, '20220014', 5, 5, 'Elmira', 'Becker', 'estudiante14_Schamberger@gmail.com', '1995-02-06 11:30:45.752', true, '42667590', 28, '2025-06-04 03:15:43.033', '2025-06-04 03:15:43.033');
INSERT INTO public.estudiantes VALUES (15, '20200015', 6, NULL, 'Bernadine', 'Jacobson', 'estudiante1588@gmail.com', '1999-02-28 04:31:04.754', false, '44679027', 14, '2025-06-04 03:15:43.034', '2025-06-04 03:15:43.034');
INSERT INTO public.estudiantes VALUES (16, '20230016', 7, 2, 'Jessie', 'Dibbert', 'estudiante16_Purdy@gmail.com', '2001-10-22 23:32:23.219', false, '47918322', 7, '2025-06-04 03:15:43.036', '2025-06-04 03:15:43.036');
INSERT INTO public.estudiantes VALUES (17, '20220017', 8, 3, 'Elyssa', 'Okuneva', 'estudiante17.Hintz@gmail.com', '2005-12-10 03:09:18.277', false, '49159210', 5, '2025-06-04 03:15:43.037', '2025-06-04 03:15:43.037');
INSERT INTO public.estudiantes VALUES (18, '20250018', 9, 4, 'Amos', 'Beatty', 'estudiante18.Rowe@yahoo.com', '2005-12-29 07:54:18.501', false, '40851954', 92, '2025-06-04 03:15:43.038', '2025-06-04 03:15:43.038');
INSERT INTO public.estudiantes VALUES (19, '20230019', 10, 5, 'Erick', 'Rice', 'estudiante1916@hotmail.com', '2004-03-31 08:57:15.049', false, '40363317', 36, '2025-06-04 03:15:43.039', '2025-06-04 03:15:43.039');
INSERT INTO public.estudiantes VALUES (20, '20240020', 1, NULL, 'Pietro', 'Pouros', 'estudiante2076@gmail.com', '2001-12-23 02:30:32.211', true, '44027182', 72, '2025-06-04 03:15:43.04', '2025-06-04 03:15:43.04');
INSERT INTO public.estudiantes VALUES (21, '20240021', 2, 2, 'Nedra', 'Gerhold', 'estudiante21.Brakus63@hotmail.com', '2002-01-05 10:51:48.436', true, '40189657', 4, '2025-06-04 03:15:43.041', '2025-06-04 03:15:43.041');
INSERT INTO public.estudiantes VALUES (22, '20250022', 3, 3, 'Lucious', 'Pollich', 'estudiante22_Yundt66@hotmail.com', '1999-07-01 12:51:23.046', true, '42812212', 9, '2025-06-04 03:15:43.042', '2025-06-04 03:15:43.042');
INSERT INTO public.estudiantes VALUES (23, '20250023', 4, 4, 'Johann', 'Rohan', 'estudiante23_Hodkiewicz23@yahoo.com', '2005-06-21 05:50:47.441', true, '45963181', 44, '2025-06-04 03:15:43.043', '2025-06-04 03:15:43.043');
INSERT INTO public.estudiantes VALUES (24, '20220024', 5, 5, 'Annabell', 'Crist', 'estudiante247@yahoo.com', '1996-06-02 07:16:05.798', true, '45076622', 95, '2025-06-04 03:15:43.044', '2025-06-04 03:15:43.044');
INSERT INTO public.estudiantes VALUES (25, '20210025', 6, NULL, 'Kane', 'Stokes', 'estudiante25_Johnston@gmail.com', '1994-06-24 23:56:30.261', true, '47857726', 49, '2025-06-04 03:15:43.045', '2025-06-04 03:15:43.045');
INSERT INTO public.estudiantes VALUES (26, '20220026', 7, 2, 'Stan', 'Baumbach', 'estudiante26.Hand@yahoo.com', '1998-02-24 22:42:53.366', false, '47392718', 13, '2025-06-04 03:15:43.046', '2025-06-04 03:15:43.046');
INSERT INTO public.estudiantes VALUES (27, '20230027', 8, 3, 'Eldora', 'Sipes', 'estudiante2731@hotmail.com', '2000-12-14 15:07:58.782', false, '41136286', 77, '2025-06-04 03:15:43.047', '2025-06-04 03:15:43.047');
INSERT INTO public.estudiantes VALUES (28, '20250028', 9, 4, 'Laurine', 'Thompson', 'estudiante28_Koch@hotmail.com', '1997-05-05 15:15:02.12', false, '47785105', 95, '2025-06-04 03:15:43.048', '2025-06-04 03:15:43.048');
INSERT INTO public.estudiantes VALUES (29, '20200029', 10, 5, 'Jakob', 'Swaniawski', 'estudiante2975@gmail.com', '2002-02-07 21:47:28.292', true, '42232811', 23, '2025-06-04 03:15:43.049', '2025-06-04 03:15:43.049');
INSERT INTO public.estudiantes VALUES (30, '20250030', 1, NULL, 'Sylvia', 'Reinger', 'estudiante30_Harvey-Kshlerin93@hotmail.com', '2004-08-30 08:05:43.279', true, '44798644', 1, '2025-06-04 03:15:43.05', '2025-06-04 03:15:43.05');
INSERT INTO public.estudiantes VALUES (31, '20220031', 2, 2, 'Carrie', 'Kub', 'estudiante3138@gmail.com', '1996-02-28 10:57:45.857', true, '41534158', 20, '2025-06-04 03:15:43.051', '2025-06-04 03:15:43.051');
INSERT INTO public.estudiantes VALUES (32, '20200032', 3, 3, 'Carter', 'Jacobson', 'estudiante3299@yahoo.com', '2006-06-27 06:01:13.435', false, '41275780', 60, '2025-06-04 03:15:43.052', '2025-06-04 03:15:43.052');
INSERT INTO public.estudiantes VALUES (33, '20230033', 4, 4, 'Vilma', 'Bode', 'estudiante33.Kutch@gmail.com', '2005-12-20 18:20:59.296', true, '48445577', 63, '2025-06-04 03:15:43.053', '2025-06-04 03:15:43.053');
INSERT INTO public.estudiantes VALUES (34, '20220034', 5, 5, 'Jamarcus', 'Toy', 'estudiante34.Gulgowski@yahoo.com', '1997-07-09 09:02:00.443', true, '47662245', 59, '2025-06-04 03:15:43.054', '2025-06-04 03:15:43.054');
INSERT INTO public.estudiantes VALUES (35, '20200035', 6, NULL, 'Edythe', 'Homenick', 'estudiante35_Emard60@gmail.com', '2004-01-12 10:34:15.215', false, '47299518', 47, '2025-06-04 03:15:43.055', '2025-06-04 03:15:43.055');
INSERT INTO public.estudiantes VALUES (36, '20200036', 7, 2, 'Kenton', 'Towne', 'estudiante3666@yahoo.com', '1995-12-22 05:29:58.21', true, '45534826', 2, '2025-06-04 03:15:43.056', '2025-06-04 03:15:43.056');
INSERT INTO public.estudiantes VALUES (37, '20220037', 8, 3, 'Emmanuelle', 'Corwin', 'estudiante37.Walker@gmail.com', '2000-04-22 09:48:40.925', true, '41526063', 97, '2025-06-04 03:15:43.057', '2025-06-04 03:15:43.057');
INSERT INTO public.estudiantes VALUES (38, '20220038', 9, 4, 'Sasha', 'Nienow', 'estudiante3856@yahoo.com', '2001-11-07 17:25:44.566', false, '40919402', 78, '2025-06-04 03:15:43.058', '2025-06-04 03:15:43.058');
INSERT INTO public.estudiantes VALUES (39, '20250039', 10, 5, 'Marjory', 'Ziemann', 'estudiante39_Kovacek-Hand@gmail.com', '2001-03-09 05:34:31.178', false, '46250669', 46, '2025-06-04 03:15:43.059', '2025-06-04 03:15:43.059');
INSERT INTO public.estudiantes VALUES (40, '20210040', 1, NULL, 'Eula', 'Zboncak-Lubowitz', 'estudiante4037@hotmail.com', '1999-06-10 14:01:46.306', true, '44752507', 9, '2025-06-04 03:15:43.059', '2025-06-04 03:15:43.059');
INSERT INTO public.estudiantes VALUES (41, '20230041', 2, 2, 'Kris', 'Johns', 'estudiante41.Runolfsdottir@yahoo.com', '2006-05-20 20:42:47.204', true, '43862969', 77, '2025-06-04 03:15:43.06', '2025-06-04 03:15:43.06');
INSERT INTO public.estudiantes VALUES (42, '20210042', 3, 3, 'Emilie', 'Kohler', 'estudiante42.Rodriguez69@hotmail.com', '1997-05-07 04:04:56.652', true, '41462409', 6, '2025-06-04 03:15:43.061', '2025-06-04 03:15:43.061');
INSERT INTO public.estudiantes VALUES (43, '20210043', 4, 4, 'Marguerite', 'Fahey', 'estudiante43.Champlin56@gmail.com', '1997-04-22 10:09:48.613', true, '41043894', 31, '2025-06-04 03:15:43.062', '2025-06-04 03:15:43.062');
INSERT INTO public.estudiantes VALUES (44, '20210044', 5, 5, 'Hunter', 'Roberts', 'estudiante44_Windler52@gmail.com', '2006-05-11 20:04:13.965', true, '40354979', 9, '2025-06-04 03:15:43.064', '2025-06-04 03:15:43.064');
INSERT INTO public.estudiantes VALUES (45, '20250045', 6, NULL, 'Ona', 'Leffler', 'estudiante4528@gmail.com', '2005-08-11 21:43:03.242', false, '40923006', 74, '2025-06-04 03:15:43.065', '2025-06-04 03:15:43.065');
INSERT INTO public.estudiantes VALUES (46, '20220046', 7, 2, 'Tiara', 'Sawayn', 'estudiante46.Fahey@yahoo.com', '1997-05-30 10:52:09.887', true, '49868010', 65, '2025-06-04 03:15:43.066', '2025-06-04 03:15:43.066');
INSERT INTO public.estudiantes VALUES (47, '20220047', 8, 3, 'Eileen', 'Lowe', 'estudiante470@gmail.com', '1998-03-16 08:51:09.24', true, '42575440', 9, '2025-06-04 03:15:43.067', '2025-06-04 03:15:43.067');
INSERT INTO public.estudiantes VALUES (48, '20200048', 9, 4, 'Mikel', 'Romaguera', 'estudiante4813@gmail.com', '2006-02-26 19:21:09.745', false, '41558049', 12, '2025-06-04 03:15:43.068', '2025-06-04 03:15:43.068');
INSERT INTO public.estudiantes VALUES (49, '20230049', 10, 5, 'Henderson', 'Harvey', 'estudiante49_Cassin@gmail.com', '2003-09-07 13:42:40.532', false, '48551199', 99, '2025-06-04 03:15:43.069', '2025-06-04 03:15:43.069');
INSERT INTO public.estudiantes VALUES (50, '20230050', 1, NULL, 'Zachariah', 'Kshlerin', 'estudiante5070@yahoo.com', '2000-08-22 11:07:12.008', true, '42024230', 1, '2025-06-04 03:15:43.07', '2025-06-04 03:15:43.07');
INSERT INTO public.estudiantes VALUES (51, '20200051', 2, 2, 'Allie', 'Fay', 'estudiante5129@hotmail.com', '1996-09-27 03:42:06.324', true, '49113738', 29, '2025-06-04 03:15:43.071', '2025-06-04 03:15:43.071');
INSERT INTO public.estudiantes VALUES (52, '20200052', 3, 3, 'Carroll', 'Stokes', 'estudiante5227@gmail.com', '2005-09-15 14:45:17.013', true, '47529968', 22, '2025-06-04 03:15:43.072', '2025-06-04 03:15:43.072');
INSERT INTO public.estudiantes VALUES (53, '20250053', 4, 4, 'Era', 'MacGyver', 'estudiante53.Moen@yahoo.com', '1997-09-10 14:43:51.371', true, '47726907', 26, '2025-06-04 03:15:43.073', '2025-06-04 03:15:43.073');
INSERT INTO public.estudiantes VALUES (54, '20240054', 5, 5, 'Dayana', 'Balistreri', 'estudiante54_Durgan-Herzog28@hotmail.com', '2005-04-07 21:14:04.65', true, '49919066', 36, '2025-06-04 03:15:43.074', '2025-06-04 03:15:43.074');
INSERT INTO public.estudiantes VALUES (55, '20200055', 6, NULL, 'Katlynn', 'Hills', 'estudiante55_Lubowitz@yahoo.com', '2000-03-02 10:20:20.952', false, '43012421', 91, '2025-06-04 03:15:43.074', '2025-06-04 03:15:43.074');
INSERT INTO public.estudiantes VALUES (56, '20210056', 7, 2, 'Beatrice', 'Berge', 'estudiante56.Christiansen61@yahoo.com', '2001-08-06 23:31:11.493', false, '43291273', 13, '2025-06-04 03:15:43.075', '2025-06-04 03:15:43.075');
INSERT INTO public.estudiantes VALUES (57, '20250057', 8, 3, 'Kavon', 'Kuphal', 'estudiante5740@hotmail.com', '2005-11-21 12:21:15.516', false, '47428257', 57, '2025-06-04 03:15:43.077', '2025-06-04 03:15:43.077');
INSERT INTO public.estudiantes VALUES (58, '20250058', 9, 4, 'Flavie', 'Aufderhar', 'estudiante5863@hotmail.com', '2000-04-29 22:16:59.52', false, '41586482', 34, '2025-06-04 03:15:43.078', '2025-06-04 03:15:43.078');
INSERT INTO public.estudiantes VALUES (59, '20210059', 10, 5, 'Isabel', 'Hodkiewicz', 'estudiante5998@gmail.com', '2004-09-24 13:49:02.322', false, '47512946', 41, '2025-06-04 03:15:43.079', '2025-06-04 03:15:43.079');
INSERT INTO public.estudiantes VALUES (60, '20230060', 1, NULL, 'Houston', 'Gulgowski', 'estudiante60.Abshire@gmail.com', '1998-01-16 06:23:49.826', false, '40345092', 84, '2025-06-04 03:15:43.081', '2025-06-04 03:15:43.081');
INSERT INTO public.estudiantes VALUES (61, '20220061', 2, 2, 'Austen', 'Hermiston', 'estudiante61.Bauch@yahoo.com', '1996-05-07 01:43:33.045', true, '49573469', 57, '2025-06-04 03:15:43.082', '2025-06-04 03:15:43.082');
INSERT INTO public.estudiantes VALUES (62, '20250062', 3, 3, 'Adele', 'Schmidt', 'estudiante62.Treutel59@gmail.com', '2005-05-26 00:51:57.818', false, '42819634', 98, '2025-06-04 03:15:43.083', '2025-06-04 03:15:43.083');
INSERT INTO public.estudiantes VALUES (63, '20250063', 4, 4, 'Willa', 'Veum-Nikolaus', 'estudiante63.Corwin@hotmail.com', '2003-07-01 13:10:25.222', false, '42787190', 14, '2025-06-04 03:15:43.084', '2025-06-04 03:15:43.084');
INSERT INTO public.estudiantes VALUES (64, '20250064', 5, 5, 'Floyd', 'Keeling', 'estudiante64_Johnston70@yahoo.com', '2007-02-10 11:35:14.606', false, '42676451', 31, '2025-06-04 03:15:43.085', '2025-06-04 03:15:43.085');
INSERT INTO public.estudiantes VALUES (65, '20220065', 6, NULL, 'Marlene', 'Erdman', 'estudiante6586@yahoo.com', '2004-12-01 02:42:32.055', false, '42936723', 44, '2025-06-04 03:15:43.086', '2025-06-04 03:15:43.086');
INSERT INTO public.estudiantes VALUES (66, '20210066', 7, 2, 'Vena', 'Torp-Hickle', 'estudiante6621@hotmail.com', '2000-12-15 11:39:20.867', false, '43428246', 91, '2025-06-04 03:15:43.086', '2025-06-04 03:15:43.086');
INSERT INTO public.estudiantes VALUES (67, '20220067', 8, 3, 'Zula', 'Glover', 'estudiante6792@yahoo.com', '2005-12-10 07:19:37.258', false, '45391898', 99, '2025-06-04 03:15:43.087', '2025-06-04 03:15:43.087');
INSERT INTO public.estudiantes VALUES (68, '20250068', 9, 4, 'Alyson', 'O''Kon', 'estudiante68.Price31@hotmail.com', '2007-05-26 21:35:54.785', false, '48821803', 56, '2025-06-04 03:15:43.088', '2025-06-04 03:15:43.088');
INSERT INTO public.estudiantes VALUES (69, '20200069', 10, 5, 'Rowland', 'Zulauf', 'estudiante6991@gmail.com', '2005-05-31 08:28:11.671', true, '48733335', 43, '2025-06-04 03:15:43.091', '2025-06-04 03:15:43.091');
INSERT INTO public.estudiantes VALUES (70, '20250070', 1, NULL, 'Ena', 'Bins', 'estudiante70_Nitzsche4@gmail.com', '1995-04-10 01:32:14.518', false, '41677834', 95, '2025-06-04 03:15:43.092', '2025-06-04 03:15:43.092');
INSERT INTO public.estudiantes VALUES (71, '20210071', 2, 2, 'Lina', 'Koss', 'estudiante712@yahoo.com', '2003-02-15 16:11:23.381', false, '48166513', 18, '2025-06-04 03:15:43.093', '2025-06-04 03:15:43.093');
INSERT INTO public.estudiantes VALUES (72, '20220072', 3, 3, 'Pearline', 'Wolf', 'estudiante7292@gmail.com', '2003-12-08 12:45:40.367', true, '41706409', 80, '2025-06-04 03:15:43.094', '2025-06-04 03:15:43.094');
INSERT INTO public.estudiantes VALUES (73, '20220073', 4, 4, 'Maximilian', 'Marks', 'estudiante73_Kovacek74@gmail.com', '1996-08-30 09:08:51.912', true, '49776626', 56, '2025-06-04 03:15:43.095', '2025-06-04 03:15:43.095');
INSERT INTO public.estudiantes VALUES (74, '20210074', 5, 5, 'Antonia', 'Feil', 'estudiante74.Tremblay@yahoo.com', '2002-09-15 19:47:28.021', true, '42656317', 10, '2025-06-04 03:15:43.096', '2025-06-04 03:15:43.096');
INSERT INTO public.estudiantes VALUES (75, '20200075', 6, NULL, 'Pedro', 'Stamm', 'estudiante75_Wunsch29@gmail.com', '2001-03-06 18:54:40.862', true, '43195513', 52, '2025-06-04 03:15:43.097', '2025-06-04 03:15:43.097');
INSERT INTO public.estudiantes VALUES (76, '20240076', 7, 2, 'Lavinia', 'Jacobson-Pollich', 'estudiante7628@gmail.com', '2002-09-08 11:51:48.371', true, '41395253', 40, '2025-06-04 03:15:43.098', '2025-06-04 03:15:43.098');
INSERT INTO public.estudiantes VALUES (77, '20220077', 8, 3, 'Dawson', 'VonRueden', 'estudiante77.Stiedemann41@gmail.com', '2001-10-29 22:00:14.208', true, '45612800', 70, '2025-06-04 03:15:43.099', '2025-06-04 03:15:43.099');
INSERT INTO public.estudiantes VALUES (78, '20230078', 9, 4, 'Lacey', 'Osinski', 'estudiante7853@yahoo.com', '1995-02-12 08:18:22.081', false, '44566712', 80, '2025-06-04 03:15:43.1', '2025-06-04 03:15:43.1');
INSERT INTO public.estudiantes VALUES (79, '20250079', 10, 5, 'Mckayla', 'Mayert', 'estudiante79.Klein@gmail.com', '2001-04-20 05:18:36.72', true, '41312156', 3, '2025-06-04 03:15:43.101', '2025-06-04 03:15:43.101');
INSERT INTO public.estudiantes VALUES (80, '20230080', 1, NULL, 'Sarina', 'Stiedemann', 'estudiante8026@gmail.com', '1997-09-25 03:05:29.962', false, '47429579', 94, '2025-06-04 03:15:43.102', '2025-06-04 03:15:43.102');
INSERT INTO public.estudiantes VALUES (81, '20200081', 2, 2, 'Graham', 'Bernhard', 'estudiante81_Smith16@yahoo.com', '2002-01-31 04:30:00.715', false, '40638199', 12, '2025-06-04 03:15:43.103', '2025-06-04 03:15:43.103');
INSERT INTO public.estudiantes VALUES (82, '20250082', 3, 3, 'Russ', 'Kunze', 'estudiante82.Bechtelar74@hotmail.com', '2003-07-08 00:09:00.096', true, '48376029', 15, '2025-06-04 03:15:43.104', '2025-06-04 03:15:43.104');
INSERT INTO public.estudiantes VALUES (83, '20200083', 4, 4, 'Sven', 'Lesch', 'estudiante83_Crooks65@gmail.com', '1999-07-25 23:14:08.01', true, '44382352', 29, '2025-06-04 03:15:43.104', '2025-06-04 03:15:43.104');
INSERT INTO public.estudiantes VALUES (84, '20220084', 5, 5, 'Joanne', 'Stark', 'estudiante84.Batz@gmail.com', '2001-09-05 18:10:26.913', true, '49709810', 7, '2025-06-04 03:15:43.106', '2025-06-04 03:15:43.106');
INSERT INTO public.estudiantes VALUES (85, '20210085', 6, NULL, 'Reginald', 'Kessler', 'estudiante85.Harber@gmail.com', '2005-07-14 21:26:33.9', false, '47521602', 22, '2025-06-04 03:15:43.107', '2025-06-04 03:15:43.107');
INSERT INTO public.estudiantes VALUES (86, '20250086', 7, 2, 'Abbey', 'Toy', 'estudiante86.Ferry@yahoo.com', '1998-04-02 15:47:00.098', false, '48764378', 78, '2025-06-04 03:15:43.108', '2025-06-04 03:15:43.108');
INSERT INTO public.estudiantes VALUES (87, '20250087', 8, 3, 'Junior', 'Yundt', 'estudiante87_Jacobson57@yahoo.com', '1999-06-11 13:45:53.829', false, '48971569', 99, '2025-06-04 03:15:43.109', '2025-06-04 03:15:43.109');
INSERT INTO public.estudiantes VALUES (88, '20200088', 9, 4, 'Adelbert', 'Ritchie', 'estudiante8838@gmail.com', '1999-11-01 09:17:05.677', true, '49355147', 1, '2025-06-04 03:15:43.11', '2025-06-04 03:15:43.11');
INSERT INTO public.estudiantes VALUES (89, '20240089', 10, 5, 'Enola', 'Jerde', 'estudiante89_Zemlak@yahoo.com', '1996-11-11 20:42:07.703', false, '40611209', 95, '2025-06-04 03:15:43.111', '2025-06-04 03:15:43.111');
INSERT INTO public.estudiantes VALUES (90, '20210090', 1, NULL, 'Kamren', 'Kris', 'estudiante9089@gmail.com', '2000-05-09 12:55:32.928', true, '41228198', 46, '2025-06-04 03:15:43.112', '2025-06-04 03:15:43.112');
INSERT INTO public.estudiantes VALUES (91, '20210091', 2, 2, 'Asia', 'Harvey', 'estudiante91_Rice91@gmail.com', '1997-05-09 00:14:37.424', true, '42003306', 22, '2025-06-04 03:15:43.113', '2025-06-04 03:15:43.113');
INSERT INTO public.estudiantes VALUES (92, '20250092', 3, 3, 'Joshuah', 'Tremblay', 'estudiante92.Schamberger@gmail.com', '1995-09-30 01:03:42.031', false, '40812556', 48, '2025-06-04 03:15:43.113', '2025-06-04 03:15:43.113');
INSERT INTO public.estudiantes VALUES (93, '20250093', 4, 4, 'Vergie', 'Parker', 'estudiante93.Miller@gmail.com', '2002-05-18 01:14:21.824', false, '48991750', 23, '2025-06-04 03:15:43.114', '2025-06-04 03:15:43.114');
INSERT INTO public.estudiantes VALUES (94, '20230094', 5, 5, 'Orrin', 'Treutel', 'estudiante94_Crist39@yahoo.com', '2002-08-16 11:02:21.653', false, '40244378', 73, '2025-06-04 03:15:43.115', '2025-06-04 03:15:43.115');
INSERT INTO public.estudiantes VALUES (95, '20220095', 6, NULL, 'Wanda', 'Purdy', 'estudiante9543@yahoo.com', '2000-06-08 15:59:30.263', true, '45463682', 63, '2025-06-04 03:15:43.116', '2025-06-04 03:15:43.116');
INSERT INTO public.estudiantes VALUES (96, '20250096', 7, 2, 'Stuart', 'Paucek', 'estudiante96.Collins9@hotmail.com', '2001-11-15 06:54:50.261', false, '48598614', 3, '2025-06-04 03:15:43.117', '2025-06-04 03:15:43.117');
INSERT INTO public.estudiantes VALUES (97, '20200097', 8, 3, 'Lee', 'Kessler', 'estudiante97.Howell@yahoo.com', '2004-02-11 17:48:51.329', true, '42844696', 1, '2025-06-04 03:15:43.117', '2025-06-04 03:15:43.117');
INSERT INTO public.estudiantes VALUES (98, '20230098', 9, 4, 'Raphaelle', 'Beahan', 'estudiante98_Pagac94@hotmail.com', '2005-11-19 14:07:59.764', true, '42041858', 74, '2025-06-04 03:15:43.118', '2025-06-04 03:15:43.118');
INSERT INTO public.estudiantes VALUES (99, '20210099', 10, 5, 'Maida', 'Ondricka', 'estudiante99.Welch@gmail.com', '1997-04-02 07:07:02.578', true, '45447912', 7, '2025-06-04 03:15:43.119', '2025-06-04 03:15:43.119');
INSERT INTO public.estudiantes VALUES (100, '20220100', 1, NULL, 'Carli', 'Stroman', 'estudiante100_OKeefe0@gmail.com', '1999-03-26 15:31:58.952', true, '42101336', 6, '2025-06-04 03:15:43.12', '2025-06-04 03:15:43.12');
INSERT INTO public.estudiantes VALUES (101, '20220101', 2, 2, 'Camron', 'Hauck', 'estudiante10170@gmail.com', '1994-10-02 12:34:55.401', true, '40055744', 85, '2025-06-04 03:15:43.121', '2025-06-04 03:15:43.121');
INSERT INTO public.estudiantes VALUES (102, '20230102', 3, 3, 'Cicero', 'Frami', 'estudiante102.Waelchi@hotmail.com', '2001-07-20 18:13:57.999', true, '42992928', 28, '2025-06-04 03:15:43.122', '2025-06-04 03:15:43.122');
INSERT INTO public.estudiantes VALUES (103, '20250103', 4, 4, 'Dayana', 'Krajcik', 'estudiante103.Robel52@hotmail.com', '1997-02-13 04:16:48.509', true, '49014091', 59, '2025-06-04 03:15:43.123', '2025-06-04 03:15:43.123');
INSERT INTO public.estudiantes VALUES (104, '20220104', 5, 5, 'Constance', 'Moen', 'estudiante10439@gmail.com', '1994-07-20 12:06:31.388', false, '40331672', 20, '2025-06-04 03:15:43.124', '2025-06-04 03:15:43.124');
INSERT INTO public.estudiantes VALUES (105, '20240105', 6, NULL, 'Nona', 'Kuhn', 'estudiante10592@yahoo.com', '1995-09-26 03:56:04.36', false, '45150669', 97, '2025-06-04 03:15:43.125', '2025-06-04 03:15:43.125');
INSERT INTO public.estudiantes VALUES (106, '20220106', 7, 2, 'Mariane', 'Kuvalis', 'estudiante106.Simonis93@hotmail.com', '2004-09-22 07:59:13.485', true, '49000490', 1, '2025-06-04 03:15:43.127', '2025-06-04 03:15:43.127');
INSERT INTO public.estudiantes VALUES (107, '20200107', 8, 3, 'Trever', 'Beahan', 'estudiante107.Wilkinson@hotmail.com', '1996-02-05 14:38:56.757', true, '45506465', 22, '2025-06-04 03:15:43.128', '2025-06-04 03:15:43.128');
INSERT INTO public.estudiantes VALUES (108, '20210108', 9, 4, 'Jasmin', 'Koch-Schinner', 'estudiante108.Murphy@gmail.com', '1998-02-14 04:36:42.894', false, '46198159', 18, '2025-06-04 03:15:43.129', '2025-06-04 03:15:43.129');
INSERT INTO public.estudiantes VALUES (109, '20200109', 10, 5, 'Doyle', 'Cummings', 'estudiante109.Thiel@gmail.com', '2003-05-04 00:43:58.969', true, '48508922', 36, '2025-06-04 03:15:43.13', '2025-06-04 03:15:43.13');
INSERT INTO public.estudiantes VALUES (110, '20250110', 1, NULL, 'Elinor', 'Lockman', 'estudiante110_Schinner@gmail.com', '1995-06-20 07:44:50.452', false, '49011531', 20, '2025-06-04 03:15:43.131', '2025-06-04 03:15:43.131');
INSERT INTO public.estudiantes VALUES (111, '20240111', 2, 2, 'Jed', 'Cassin', 'estudiante11129@hotmail.com', '1999-12-22 08:30:01.556', true, '42134345', 74, '2025-06-04 03:15:43.132', '2025-06-04 03:15:43.132');
INSERT INTO public.estudiantes VALUES (112, '20240112', 3, 3, 'Fausto', 'Towne', 'estudiante112_Cormier74@yahoo.com', '2007-04-29 08:08:12.671', true, '48928067', 81, '2025-06-04 03:15:43.133', '2025-06-04 03:15:43.133');
INSERT INTO public.estudiantes VALUES (113, '20220113', 4, 4, 'Kyle', 'Bode', 'estudiante1135@hotmail.com', '2004-10-19 13:04:14.23', true, '41019340', 85, '2025-06-04 03:15:43.134', '2025-06-04 03:15:43.134');
INSERT INTO public.estudiantes VALUES (114, '20250114', 5, 5, 'Brianne', 'Flatley', 'estudiante114.Reichert92@hotmail.com', '1999-01-21 15:21:05.21', true, '48948074', 78, '2025-06-04 03:15:43.134', '2025-06-04 03:15:43.134');
INSERT INTO public.estudiantes VALUES (115, '20220115', 6, NULL, 'Nicholas', 'Huels', 'estudiante115_Jacobson@gmail.com', '2005-06-11 20:38:52.508', true, '42444904', 7, '2025-06-04 03:15:43.135', '2025-06-04 03:15:43.135');
INSERT INTO public.estudiantes VALUES (116, '20220116', 7, 2, 'Enrique', 'Walsh', 'estudiante116.Langworth20@gmail.com', '2002-06-19 14:50:28.38', false, '44783049', 8, '2025-06-04 03:15:43.136', '2025-06-04 03:15:43.136');
INSERT INTO public.estudiantes VALUES (117, '20230117', 8, 3, 'Oral', 'Veum', 'estudiante117_Durgan35@yahoo.com', '2000-07-28 11:28:22.173', true, '45786997', 27, '2025-06-04 03:15:43.137', '2025-06-04 03:15:43.137');
INSERT INTO public.estudiantes VALUES (118, '20210118', 9, 4, 'Tia', 'Lehner', 'estudiante118_Raynor@hotmail.com', '1999-05-03 07:25:10.599', false, '43752526', 49, '2025-06-04 03:15:43.138', '2025-06-04 03:15:43.138');
INSERT INTO public.estudiantes VALUES (119, '20250119', 10, 5, 'Terrell', 'Daniel', 'estudiante11959@yahoo.com', '2000-09-23 02:37:52.911', true, '42947154', 85, '2025-06-04 03:15:43.14', '2025-06-04 03:15:43.14');
INSERT INTO public.estudiantes VALUES (120, '20220120', 1, NULL, 'Barbara', 'Thiel', 'estudiante120_Deckow-Mosciski33@yahoo.com', '1997-02-13 13:01:26.179', true, '46623966', 96, '2025-06-04 03:15:43.141', '2025-06-04 03:15:43.141');
INSERT INTO public.estudiantes VALUES (121, '20210121', 2, 2, 'Richmond', 'Effertz', 'estudiante121_Wehner62@hotmail.com', '1995-10-08 08:23:31.457', false, '43211566', 93, '2025-06-04 03:15:43.143', '2025-06-04 03:15:43.143');
INSERT INTO public.estudiantes VALUES (122, '20250122', 3, 3, 'Mariano', 'Block', 'estudiante122.Cronin99@yahoo.com', '2001-07-03 12:27:55.605', true, '44869258', 83, '2025-06-04 03:15:43.144', '2025-06-04 03:15:43.144');
INSERT INTO public.estudiantes VALUES (123, '20200123', 4, 4, 'Samantha', 'Ryan', 'estudiante123.Keeling97@yahoo.com', '2000-06-20 00:59:08.655', true, '44264861', 20, '2025-06-04 03:15:43.145', '2025-06-04 03:15:43.145');
INSERT INTO public.estudiantes VALUES (124, '20230124', 5, 5, 'Patrick', 'Erdman', 'estudiante124.Price@yahoo.com', '1996-09-03 17:33:22.46', false, '40994147', 73, '2025-06-04 03:15:43.146', '2025-06-04 03:15:43.146');
INSERT INTO public.estudiantes VALUES (125, '20200125', 6, NULL, 'Gianni', 'Simonis', 'estudiante125_Heathcote24@gmail.com', '1995-08-19 06:47:01.397', false, '42190607', 94, '2025-06-04 03:15:43.147', '2025-06-04 03:15:43.147');
INSERT INTO public.estudiantes VALUES (126, '20220126', 7, 2, 'Brendan', 'Doyle', 'estudiante126_Powlowski@gmail.com', '1999-12-27 23:13:11.303', false, '43724827', 32, '2025-06-04 03:15:43.148', '2025-06-04 03:15:43.148');
INSERT INTO public.estudiantes VALUES (127, '20250127', 8, 3, 'Elza', 'Kassulke', 'estudiante127_Smitham14@yahoo.com', '2001-07-31 08:32:10.232', false, '48929756', 76, '2025-06-04 03:15:43.148', '2025-06-04 03:15:43.148');
INSERT INTO public.estudiantes VALUES (128, '20220128', 9, 4, 'Chaya', 'Pagac', 'estudiante128.Ondricka-Pfannerstill52@gmail.com', '1998-08-25 13:05:23.405', false, '46021272', 86, '2025-06-04 03:15:43.149', '2025-06-04 03:15:43.149');
INSERT INTO public.estudiantes VALUES (129, '20250129', 10, 5, 'Kaylin', 'Kling', 'estudiante12962@yahoo.com', '1998-01-06 22:58:48.329', true, '42963258', 41, '2025-06-04 03:15:43.15', '2025-06-04 03:15:43.15');
INSERT INTO public.estudiantes VALUES (130, '20210130', 1, NULL, 'Wilma', 'Predovic', 'estudiante130.Goodwin@gmail.com', '2002-01-28 04:59:23.946', true, '42944113', 5, '2025-06-04 03:15:43.15', '2025-06-04 03:15:43.15');
INSERT INTO public.estudiantes VALUES (131, '20240131', 2, 2, 'Abdullah', 'Little', 'estudiante131_Will@gmail.com', '1999-03-12 21:58:52.008', false, '46051080', 66, '2025-06-04 03:15:43.151', '2025-06-04 03:15:43.151');
INSERT INTO public.estudiantes VALUES (132, '20230132', 3, 3, 'Mauricio', 'Stark', 'estudiante13210@hotmail.com', '2005-03-21 06:55:27.424', false, '43111235', 97, '2025-06-04 03:15:43.152', '2025-06-04 03:15:43.152');
INSERT INTO public.estudiantes VALUES (133, '20250133', 4, 4, 'Anita', 'Thiel', 'estudiante133.Lockman@yahoo.com', '1998-07-06 19:52:07.997', false, '47133348', 44, '2025-06-04 03:15:43.153', '2025-06-04 03:15:43.153');
INSERT INTO public.estudiantes VALUES (134, '20230134', 5, 5, 'Maxie', 'Toy', 'estudiante134_Pollich-Kuhic85@yahoo.com', '1998-11-29 20:17:15.006', false, '48310154', 14, '2025-06-04 03:15:43.154', '2025-06-04 03:15:43.154');
INSERT INTO public.estudiantes VALUES (135, '20210135', 6, NULL, 'Ed', 'Willms', 'estudiante13597@hotmail.com', '1997-12-16 23:57:42.121', false, '40631195', 59, '2025-06-04 03:15:43.155', '2025-06-04 03:15:43.155');
INSERT INTO public.estudiantes VALUES (136, '20210136', 7, 2, 'Richie', 'Braun', 'estudiante136_Gusikowski@yahoo.com', '2000-06-19 07:16:50.864', false, '41746337', 83, '2025-06-04 03:15:43.156', '2025-06-04 03:15:43.156');
INSERT INTO public.estudiantes VALUES (137, '20240137', 8, 3, 'Annie', 'Bayer', 'estudiante137_Yost@yahoo.com', '2000-06-22 01:06:13.224', false, '49341782', 44, '2025-06-04 03:15:43.157', '2025-06-04 03:15:43.157');
INSERT INTO public.estudiantes VALUES (138, '20200138', 9, 4, 'Antonia', 'Gusikowski', 'estudiante138.Corkery57@gmail.com', '2002-04-09 21:50:27.784', false, '45399699', 31, '2025-06-04 03:15:43.158', '2025-06-04 03:15:43.158');
INSERT INTO public.estudiantes VALUES (139, '20210139', 10, 5, 'Kip', 'Hudson', 'estudiante13926@yahoo.com', '2005-01-31 08:18:45.006', true, '44173671', 80, '2025-06-04 03:15:43.159', '2025-06-04 03:15:43.159');
INSERT INTO public.estudiantes VALUES (140, '20250140', 1, NULL, 'Hubert', 'Skiles', 'estudiante140.Hammes49@gmail.com', '2005-09-08 13:04:38.454', true, '48223586', 32, '2025-06-04 03:15:43.159', '2025-06-04 03:15:43.159');
INSERT INTO public.estudiantes VALUES (141, '20240141', 2, 2, 'Angelo', 'Skiles', 'estudiante141.Lynch57@yahoo.com', '2000-05-16 05:55:43.526', false, '45427394', 85, '2025-06-04 03:15:43.16', '2025-06-04 03:15:43.16');
INSERT INTO public.estudiantes VALUES (142, '20220142', 3, 3, 'Schuyler', 'Hudson', 'estudiante14281@gmail.com', '1997-03-13 14:26:28.222', true, '44112856', 4, '2025-06-04 03:15:43.161', '2025-06-04 03:15:43.161');
INSERT INTO public.estudiantes VALUES (143, '20250143', 4, 4, 'Bernhard', 'Ebert', 'estudiante14359@hotmail.com', '2004-08-22 05:00:44.153', false, '47496251', 39, '2025-06-04 03:15:43.161', '2025-06-04 03:15:43.161');
INSERT INTO public.estudiantes VALUES (144, '20210144', 5, 5, 'Camylle', 'Weimann', 'estudiante144_Price@gmail.com', '1998-10-20 07:09:32.354', true, '48345549', 74, '2025-06-04 03:15:43.162', '2025-06-04 03:15:43.162');
INSERT INTO public.estudiantes VALUES (145, '20210145', 6, NULL, 'Johanna', 'Kiehn', 'estudiante145.Mertz@yahoo.com', '1995-03-01 21:09:18.908', true, '44928589', 79, '2025-06-04 03:15:43.163', '2025-06-04 03:15:43.163');
INSERT INTO public.estudiantes VALUES (146, '20250146', 7, 2, 'Elenora', 'Windler', 'estudiante14631@gmail.com', '2001-03-04 05:14:21.65', false, '48555918', 53, '2025-06-04 03:15:43.164', '2025-06-04 03:15:43.164');
INSERT INTO public.estudiantes VALUES (147, '20240147', 8, 3, 'Tyrese', 'Lehner', 'estudiante1477@yahoo.com', '1998-08-05 18:02:40.213', true, '43428060', 22, '2025-06-04 03:15:43.164', '2025-06-04 03:15:43.164');
INSERT INTO public.estudiantes VALUES (148, '20200148', 9, 4, 'Boris', 'Erdman', 'estudiante148_Volkman96@gmail.com', '2007-02-05 14:45:31.897', false, '42212233', 69, '2025-06-04 03:15:43.165', '2025-06-04 03:15:43.165');
INSERT INTO public.estudiantes VALUES (149, '20200149', 10, 5, 'Hellen', 'Kertzmann', 'estudiante149.Upton@yahoo.com', '2000-03-09 22:36:21.552', true, '40763364', 51, '2025-06-04 03:15:43.166', '2025-06-04 03:15:43.166');
INSERT INTO public.estudiantes VALUES (150, '20200150', 1, NULL, 'Rodolfo', 'Block', 'estudiante150_Fahey13@gmail.com', '2005-02-14 22:22:00.429', true, '45225253', 10, '2025-06-04 03:15:43.167', '2025-06-04 03:15:43.167');
INSERT INTO public.estudiantes VALUES (151, '20220151', 2, 2, 'Twila', 'O''Keefe', 'estudiante151.Goodwin@hotmail.com', '2002-02-28 20:19:40.807', false, '46793769', 33, '2025-06-04 03:15:43.168', '2025-06-04 03:15:43.168');
INSERT INTO public.estudiantes VALUES (152, '20200152', 3, 3, 'Jade', 'Walter', 'estudiante152_Kihn63@hotmail.com', '2005-09-22 14:37:15.3', false, '46438709', 0, '2025-06-04 03:15:43.168', '2025-06-04 03:15:43.168');
INSERT INTO public.estudiantes VALUES (153, '20230153', 4, 4, 'Florencio', 'Romaguera', 'estudiante15337@hotmail.com', '1997-05-07 12:15:01.928', false, '47335394', 61, '2025-06-04 03:15:43.169', '2025-06-04 03:15:43.169');
INSERT INTO public.estudiantes VALUES (154, '20240154', 5, 5, 'Albertha', 'Rath', 'estudiante154.Mills-Mueller@gmail.com', '1994-10-02 01:23:51.118', true, '44715856', 59, '2025-06-04 03:15:43.17', '2025-06-04 03:15:43.17');
INSERT INTO public.estudiantes VALUES (155, '20250155', 6, NULL, 'Talon', 'Mayert', 'estudiante155.Pagac-Bartoletti72@hotmail.com', '2000-06-13 17:12:07.629', true, '47301978', 33, '2025-06-04 03:15:43.171', '2025-06-04 03:15:43.171');
INSERT INTO public.estudiantes VALUES (156, '20250156', 7, 2, 'Hilario', 'Graham', 'estudiante156.Von23@gmail.com', '2001-01-20 02:24:32.345', false, '41187401', 65, '2025-06-04 03:15:43.172', '2025-06-04 03:15:43.172');
INSERT INTO public.estudiantes VALUES (157, '20250157', 8, 3, 'Haven', 'Simonis', 'estudiante157.Reichert0@gmail.com', '2001-01-01 19:13:31.543', true, '45249775', 84, '2025-06-04 03:15:43.173', '2025-06-04 03:15:43.173');
INSERT INTO public.estudiantes VALUES (158, '20240158', 9, 4, 'Emelia', 'Schulist', 'estudiante158_Daugherty48@gmail.com', '2002-04-17 22:15:43.363', true, '41159570', 41, '2025-06-04 03:15:43.174', '2025-06-04 03:15:43.174');
INSERT INTO public.estudiantes VALUES (159, '20210159', 10, 5, 'Josue', 'Schimmel', 'estudiante159_Cummerata37@hotmail.com', '1994-12-23 13:56:12.747', false, '43040062', 73, '2025-06-04 03:15:43.174', '2025-06-04 03:15:43.174');
INSERT INTO public.estudiantes VALUES (160, '20240160', 1, NULL, 'Linnie', 'Wehner', 'estudiante16052@yahoo.com', '2006-05-16 16:56:22.942', false, '44943863', 22, '2025-06-04 03:15:43.175', '2025-06-04 03:15:43.175');
INSERT INTO public.estudiantes VALUES (161, '20250161', 2, 2, 'Ola', 'Feil', 'estudiante161.OHara@gmail.com', '2004-11-07 11:43:02.696', false, '49650410', 63, '2025-06-04 03:15:43.176', '2025-06-04 03:15:43.176');
INSERT INTO public.estudiantes VALUES (162, '20230162', 3, 3, 'Roel', 'Prosacco', 'estudiante162_Hudson@hotmail.com', '2005-02-11 22:03:58.243', false, '43876840', 99, '2025-06-04 03:15:43.177', '2025-06-04 03:15:43.177');
INSERT INTO public.estudiantes VALUES (163, '20200163', 4, 4, 'Janessa', 'Kutch', 'estudiante163_Runolfsdottir@yahoo.com', '2006-04-07 21:27:21.66', true, '44014960', 17, '2025-06-04 03:15:43.177', '2025-06-04 03:15:43.177');
INSERT INTO public.estudiantes VALUES (164, '20200164', 5, 5, 'Marianne', 'King', 'estudiante164.Koch@hotmail.com', '1998-06-30 00:51:48.547', false, '47830350', 39, '2025-06-04 03:15:43.178', '2025-06-04 03:15:43.178');
INSERT INTO public.estudiantes VALUES (165, '20230165', 6, NULL, 'Orie', 'Lehner', 'estudiante165.Wiza@hotmail.com', '2006-04-15 20:12:42.68', false, '42298373', 66, '2025-06-04 03:15:43.179', '2025-06-04 03:15:43.179');
INSERT INTO public.estudiantes VALUES (166, '20210166', 7, 2, 'Lorenzo', 'Wolff', 'estudiante166_Beier@gmail.com', '1996-10-01 18:24:03.644', false, '47739931', 7, '2025-06-04 03:15:43.179', '2025-06-04 03:15:43.179');
INSERT INTO public.estudiantes VALUES (167, '20220167', 8, 3, 'Ophelia', 'Rosenbaum', 'estudiante16746@gmail.com', '1999-03-29 22:34:13.273', true, '42241944', 27, '2025-06-04 03:15:43.18', '2025-06-04 03:15:43.18');
INSERT INTO public.estudiantes VALUES (168, '20230168', 9, 4, 'Myra', 'Lowe', 'estudiante168.Murazik@yahoo.com', '2002-12-02 19:45:58.612', false, '47906728', 17, '2025-06-04 03:15:43.181', '2025-06-04 03:15:43.181');
INSERT INTO public.estudiantes VALUES (169, '20210169', 10, 5, 'Kailee', 'Thompson', 'estudiante169_Lind38@gmail.com', '2004-08-22 02:43:02.437', true, '44764705', 9, '2025-06-04 03:15:43.182', '2025-06-04 03:15:43.182');
INSERT INTO public.estudiantes VALUES (170, '20240170', 1, NULL, 'Kayleigh', 'Runolfsson', 'estudiante170_Zboncak@hotmail.com', '2003-07-12 07:52:05.541', false, '49152812', 0, '2025-06-04 03:15:43.183', '2025-06-04 03:15:43.183');
INSERT INTO public.estudiantes VALUES (171, '20230171', 2, 2, 'Mike', 'Fadel', 'estudiante171_Ruecker@hotmail.com', '1997-06-22 10:06:34.374', false, '42837937', 30, '2025-06-04 03:15:43.184', '2025-06-04 03:15:43.184');
INSERT INTO public.estudiantes VALUES (172, '20200172', 3, 3, 'Raphael', 'Murphy', 'estudiante172.Nitzsche49@gmail.com', '1999-11-18 19:05:10.021', true, '46483164', 23, '2025-06-04 03:15:43.185', '2025-06-04 03:15:43.185');
INSERT INTO public.estudiantes VALUES (173, '20220173', 4, 4, 'Arvid', 'Waters', 'estudiante173.Cummerata@yahoo.com', '2004-09-16 09:04:14.968', true, '46256181', 51, '2025-06-04 03:15:43.186', '2025-06-04 03:15:43.186');
INSERT INTO public.estudiantes VALUES (174, '20230174', 5, 5, 'Merritt', 'Legros', 'estudiante174.Jaskolski@gmail.com', '2001-04-07 21:40:32.701', true, '46977701', 46, '2025-06-04 03:15:43.188', '2025-06-04 03:15:43.188');
INSERT INTO public.estudiantes VALUES (175, '20230175', 6, NULL, 'Grayson', 'Jast', 'estudiante175_Weimann@gmail.com', '2002-12-26 04:49:44.944', false, '48363737', 71, '2025-06-04 03:15:43.189', '2025-06-04 03:15:43.189');
INSERT INTO public.estudiantes VALUES (176, '20200176', 7, 2, 'Carole', 'Kshlerin', 'estudiante176.Abshire7@gmail.com', '2001-01-01 19:18:34.341', false, '45821038', 73, '2025-06-04 03:15:43.19', '2025-06-04 03:15:43.19');
INSERT INTO public.estudiantes VALUES (177, '20200177', 8, 3, 'Tyler', 'Lakin-Cruickshank', 'estudiante177.Gleason@hotmail.com', '2001-09-24 01:41:58.413', true, '41257673', 34, '2025-06-04 03:15:43.191', '2025-06-04 03:15:43.191');
INSERT INTO public.estudiantes VALUES (178, '20230178', 9, 4, 'Joana', 'Goodwin', 'estudiante17874@yahoo.com', '2005-01-02 10:15:13.013', false, '49201095', 59, '2025-06-04 03:15:43.192', '2025-06-04 03:15:43.192');
INSERT INTO public.estudiantes VALUES (179, '20230179', 10, 5, 'Alf', 'Rutherford', 'estudiante17982@gmail.com', '2005-07-18 12:36:27.948', false, '46562360', 98, '2025-06-04 03:15:43.193', '2025-06-04 03:15:43.193');
INSERT INTO public.estudiantes VALUES (180, '20240180', 1, NULL, 'Arturo', 'Okuneva', 'estudiante18027@yahoo.com', '2004-11-28 11:07:31.998', false, '48457253', 93, '2025-06-04 03:15:43.194', '2025-06-04 03:15:43.194');
INSERT INTO public.estudiantes VALUES (181, '20210181', 2, 2, 'Abdullah', 'Effertz', 'estudiante18128@hotmail.com', '2000-10-31 22:25:05.163', true, '45050542', 99, '2025-06-04 03:15:43.194', '2025-06-04 03:15:43.194');
INSERT INTO public.estudiantes VALUES (182, '20220182', 3, 3, 'Jody', 'Powlowski', 'estudiante182.Jenkins@yahoo.com', '2003-02-18 06:46:31.416', true, '40176471', 50, '2025-06-04 03:15:43.195', '2025-06-04 03:15:43.195');
INSERT INTO public.estudiantes VALUES (183, '20240183', 4, 4, 'Davonte', 'Von', 'estudiante18394@gmail.com', '1996-05-03 20:48:20.229', false, '49836497', 43, '2025-06-04 03:15:43.196', '2025-06-04 03:15:43.196');
INSERT INTO public.estudiantes VALUES (184, '20200184', 5, 5, 'Zoe', 'Rohan', 'estudiante184.Watsica@yahoo.com', '1995-11-10 21:29:27.305', false, '49866387', 84, '2025-06-04 03:15:43.197', '2025-06-04 03:15:43.197');
INSERT INTO public.estudiantes VALUES (185, '20220185', 6, NULL, 'Scot', 'Pouros', 'estudiante185_Bogisich@yahoo.com', '2000-07-28 07:28:30.754', false, '40161473', 48, '2025-06-04 03:15:43.198', '2025-06-04 03:15:43.198');
INSERT INTO public.estudiantes VALUES (186, '20210186', 7, 2, 'Jolie', 'Funk-Ward', 'estudiante186.Hauck@yahoo.com', '2005-12-21 13:02:42.955', false, '44383645', 13, '2025-06-04 03:15:43.199', '2025-06-04 03:15:43.199');
INSERT INTO public.estudiantes VALUES (187, '20210187', 8, 3, 'Jeramie', 'Padberg', 'estudiante18739@hotmail.com', '2001-03-08 12:51:25.963', false, '49985799', 4, '2025-06-04 03:15:43.2', '2025-06-04 03:15:43.2');
INSERT INTO public.estudiantes VALUES (188, '20200188', 9, 4, 'Efrain', 'Paucek', 'estudiante18878@gmail.com', '2002-05-11 09:37:18.459', true, '40517768', 62, '2025-06-04 03:15:43.201', '2025-06-04 03:15:43.201');
INSERT INTO public.estudiantes VALUES (189, '20240189', 10, 5, 'Jensen', 'Schimmel', 'estudiante189.Howe-Heaney@hotmail.com', '1994-10-13 07:26:11.579', true, '48552358', 97, '2025-06-04 03:15:43.201', '2025-06-04 03:15:43.201');
INSERT INTO public.estudiantes VALUES (190, '20210190', 1, NULL, 'Sandrine', 'Volkman-Kuvalis', 'estudiante19024@hotmail.com', '1999-04-04 04:54:15.111', true, '43983870', 74, '2025-06-04 03:15:43.202', '2025-06-04 03:15:43.202');
INSERT INTO public.estudiantes VALUES (191, '20240191', 2, 2, 'Madisen', 'Parker', 'estudiante191.Olson@yahoo.com', '2002-01-06 12:46:30.357', true, '42517094', 62, '2025-06-04 03:15:43.203', '2025-06-04 03:15:43.203');
INSERT INTO public.estudiantes VALUES (192, '20200192', 3, 3, 'Derek', 'Stiedemann', 'estudiante192.Beer@yahoo.com', '2006-10-03 14:33:19.268', true, '48595495', 79, '2025-06-04 03:15:43.203', '2025-06-04 03:15:43.203');
INSERT INTO public.estudiantes VALUES (193, '20240193', 4, 4, 'Karolann', 'Shanahan', 'estudiante193_Reichert91@gmail.com', '1995-02-09 13:35:29.581', true, '42072869', 90, '2025-06-04 03:15:43.204', '2025-06-04 03:15:43.204');
INSERT INTO public.estudiantes VALUES (194, '20200194', 5, 5, 'Tommie', 'Leuschke', 'estudiante194_Johnson20@hotmail.com', '2003-11-21 10:28:51.745', false, '40038865', 30, '2025-06-04 03:15:43.205', '2025-06-04 03:15:43.205');
INSERT INTO public.estudiantes VALUES (195, '20210195', 6, NULL, 'Dallas', 'Ritchie', 'estudiante195_Stanton@gmail.com', '2000-01-07 17:55:44.071', true, '44763157', 16, '2025-06-04 03:15:43.206', '2025-06-04 03:15:43.206');
INSERT INTO public.estudiantes VALUES (196, '20250196', 7, 2, 'Ernest', 'Lindgren', 'estudiante196.Brekke@hotmail.com', '1997-09-10 19:30:39.922', true, '42636551', 19, '2025-06-04 03:15:43.207', '2025-06-04 03:15:43.207');
INSERT INTO public.estudiantes VALUES (197, '20210197', 8, 3, 'Leonard', 'Hegmann', 'estudiante197_Weimann30@hotmail.com', '2002-04-06 22:48:59.382', false, '47150711', 44, '2025-06-04 03:15:43.207', '2025-06-04 03:15:43.207');
INSERT INTO public.estudiantes VALUES (198, '20210198', 9, 4, 'Johnathan', 'Altenwerth', 'estudiante198.Marvin78@gmail.com', '2006-08-11 20:06:32.346', false, '45035906', 22, '2025-06-04 03:15:43.208', '2025-06-04 03:15:43.208');
INSERT INTO public.estudiantes VALUES (199, '20230199', 10, 5, 'Stephan', 'Koelpin', 'estudiante19952@hotmail.com', '1997-05-31 02:52:22.981', false, '42988884', 21, '2025-06-04 03:15:43.209', '2025-06-04 03:15:43.209');
INSERT INTO public.estudiantes VALUES (200, '20200200', 1, NULL, 'Earnest', 'Wiza', 'estudiante200.Stracke@hotmail.com', '1996-10-23 21:32:40.435', false, '47576856', 51, '2025-06-04 03:15:43.21', '2025-06-04 03:15:43.21');


--
-- Data for Name: estudiante_contactos; Type: TABLE DATA; Schema: public; Owner: josep
--

INSERT INTO public.estudiante_contactos VALUES (1, 1, 'Leo Balistreri', '1-932-670-0052 x846');
INSERT INTO public.estudiante_contactos VALUES (2, 2, 'Mercedes Russel', '1-503-532-6395');
INSERT INTO public.estudiante_contactos VALUES (3, 3, 'Mr. Chester Powlowski', '(954) 713-7669 x069');
INSERT INTO public.estudiante_contactos VALUES (4, 4, 'Ruth Bogan', '717-628-3363');
INSERT INTO public.estudiante_contactos VALUES (5, 5, 'Loren Will', '(941) 389-7861 x62122');
INSERT INTO public.estudiante_contactos VALUES (6, 6, 'Courtney Funk', '(648) 864-0934 x72032');
INSERT INTO public.estudiante_contactos VALUES (7, 7, 'Juana Walsh', '470.903.4848 x6295');
INSERT INTO public.estudiante_contactos VALUES (8, 8, 'Molly Metz', '(269) 661-0472 x75244');
INSERT INTO public.estudiante_contactos VALUES (9, 9, 'Benjamin Boyer', '(625) 472-9640 x189');
INSERT INTO public.estudiante_contactos VALUES (10, 10, 'Erica Volkman', '1-425-400-7293');
INSERT INTO public.estudiante_contactos VALUES (11, 11, 'Ronald Parker', '(209) 527-6643 x493');
INSERT INTO public.estudiante_contactos VALUES (12, 12, 'Lorene McKenzie PhD', '671.696.2162 x9752');
INSERT INTO public.estudiante_contactos VALUES (13, 13, 'Michele Marks Sr.', '(559) 220-4992 x942');
INSERT INTO public.estudiante_contactos VALUES (14, 14, 'Jeanette Hansen', '1-985-979-5478 x22273');
INSERT INTO public.estudiante_contactos VALUES (15, 15, 'Ada Kreiger', '1-865-685-8875');
INSERT INTO public.estudiante_contactos VALUES (16, 16, 'Cory Mueller', '827-406-5010 x89524');
INSERT INTO public.estudiante_contactos VALUES (17, 17, 'Lionel Hoeger', '411.251.6937 x4783');
INSERT INTO public.estudiante_contactos VALUES (18, 18, 'Randall Wilderman', '(801) 496-9798 x3172');
INSERT INTO public.estudiante_contactos VALUES (19, 19, 'Camille Zboncak', '882.555.6364 x2977');
INSERT INTO public.estudiante_contactos VALUES (20, 20, 'Lonnie Vandervort', '547.236.1422 x51559');
INSERT INTO public.estudiante_contactos VALUES (21, 21, 'Dr. Pablo Bartell', '1-551-500-7048 x6527');
INSERT INTO public.estudiante_contactos VALUES (22, 22, 'Steven Pagac', '1-341-208-9774 x8648');
INSERT INTO public.estudiante_contactos VALUES (23, 23, 'Dean Hahn', '(888) 951-0582 x9871');
INSERT INTO public.estudiante_contactos VALUES (24, 24, 'Emily Franecki', '1-485-482-8895 x0184');
INSERT INTO public.estudiante_contactos VALUES (25, 25, 'Opal Walker', '684-932-4037 x4683');
INSERT INTO public.estudiante_contactos VALUES (26, 26, 'Bob Brekke', '582-692-0161 x3616');
INSERT INTO public.estudiante_contactos VALUES (27, 27, 'Sean Romaguera', '561-259-6871 x9351');
INSERT INTO public.estudiante_contactos VALUES (28, 28, 'Dennis Thompson', '492.497.1321 x096');
INSERT INTO public.estudiante_contactos VALUES (29, 29, 'Nettie Blanda', '(368) 785-6396');
INSERT INTO public.estudiante_contactos VALUES (30, 30, 'Chad Schiller', '521.750.8049');
INSERT INTO public.estudiante_contactos VALUES (31, 31, 'Esther Braun', '1-804-915-6898 x802');
INSERT INTO public.estudiante_contactos VALUES (32, 32, 'Rudolph Larson', '1-899-877-0439 x567');
INSERT INTO public.estudiante_contactos VALUES (33, 33, 'Nellie Skiles', '(432) 489-3313 x8712');
INSERT INTO public.estudiante_contactos VALUES (34, 34, 'Tracey Bahringer', '1-462-898-3751 x495');
INSERT INTO public.estudiante_contactos VALUES (35, 35, 'Allen Dickens', '(446) 875-5185');
INSERT INTO public.estudiante_contactos VALUES (36, 36, 'Earnest Lockman', '263.433.6736 x638');
INSERT INTO public.estudiante_contactos VALUES (37, 37, 'Frances Langworth-DuBuque V', '1-339-777-2296 x40136');
INSERT INTO public.estudiante_contactos VALUES (38, 38, 'Willie Jaskolski', '(219) 852-5792 x850');
INSERT INTO public.estudiante_contactos VALUES (39, 39, 'Harriet Daniel', '881.305.3194 x31332');
INSERT INTO public.estudiante_contactos VALUES (40, 40, 'Tiffany Nolan', '(594) 619-2362 x75193');
INSERT INTO public.estudiante_contactos VALUES (41, 41, 'Nora Frami I', '1-598-213-5499 x16005');
INSERT INTO public.estudiante_contactos VALUES (42, 42, 'Marta Sipes', '(548) 965-6723 x05467');
INSERT INTO public.estudiante_contactos VALUES (43, 43, 'Steven Kling', '505.360.9357 x2510');
INSERT INTO public.estudiante_contactos VALUES (44, 44, 'Dr. Rodney MacGyver', '926-529-8310 x82736');
INSERT INTO public.estudiante_contactos VALUES (45, 45, 'Earl Rau DVM', '418.222.4304 x94281');
INSERT INTO public.estudiante_contactos VALUES (46, 46, 'Lillian Ziemann', '1-993-588-4639');
INSERT INTO public.estudiante_contactos VALUES (47, 47, 'Noel Waelchi', '275.405.1655 x78770');
INSERT INTO public.estudiante_contactos VALUES (48, 48, 'Larry Aufderhar', '671.564.2227');
INSERT INTO public.estudiante_contactos VALUES (49, 49, 'Mitchell Kerluke IV', '(526) 294-0266');
INSERT INTO public.estudiante_contactos VALUES (50, 50, 'Ellis Beahan', '362-741-4211 x13729');
INSERT INTO public.estudiante_contactos VALUES (51, 51, 'Russell Legros', '847.472.0920 x091');
INSERT INTO public.estudiante_contactos VALUES (52, 52, 'Andre Trantow', '352-831-1070 x504');
INSERT INTO public.estudiante_contactos VALUES (53, 53, 'Rodney Kreiger', '305-579-7386 x94105');
INSERT INTO public.estudiante_contactos VALUES (54, 54, 'Sheryl Dare', '294.562.9227');
INSERT INTO public.estudiante_contactos VALUES (55, 55, 'Pauline Gusikowski I', '344-414-5454');
INSERT INTO public.estudiante_contactos VALUES (56, 56, 'Miriam Huel', '376.854.7648');
INSERT INTO public.estudiante_contactos VALUES (57, 57, 'Melody Powlowski', '(587) 321-0376 x6827');
INSERT INTO public.estudiante_contactos VALUES (58, 58, 'Jesse Gusikowski', '967-306-1421 x6914');
INSERT INTO public.estudiante_contactos VALUES (59, 59, 'Bill Ferry', '742-401-4695 x639');
INSERT INTO public.estudiante_contactos VALUES (60, 60, 'Sophie Pacocha', '830-633-6218 x3228');
INSERT INTO public.estudiante_contactos VALUES (61, 61, 'Mr. Homer Ryan', '226.811.7705 x7648');
INSERT INTO public.estudiante_contactos VALUES (62, 62, 'Dr. Barry West', '1-823-908-1216 x39679');
INSERT INTO public.estudiante_contactos VALUES (63, 63, 'Kirk Schoen', '528.266.8063 x75738');
INSERT INTO public.estudiante_contactos VALUES (64, 64, 'Dr. Mack West', '599.875.0866');
INSERT INTO public.estudiante_contactos VALUES (65, 65, 'Taylor Schulist', '(947) 709-2744 x54258');
INSERT INTO public.estudiante_contactos VALUES (66, 66, 'Karl Muller', '812-411-0050 x0819');
INSERT INTO public.estudiante_contactos VALUES (67, 67, 'Marion Hayes Jr.', '852-676-9882 x7805');
INSERT INTO public.estudiante_contactos VALUES (68, 68, 'Becky Gerlach', '1-209-868-7994 x17885');
INSERT INTO public.estudiante_contactos VALUES (69, 69, 'Jake McGlynn', '842-473-3128 x98289');
INSERT INTO public.estudiante_contactos VALUES (70, 70, 'Al Borer', '643.749.3741 x1353');
INSERT INTO public.estudiante_contactos VALUES (71, 71, 'Dominic Schuppe', '(876) 766-6504');
INSERT INTO public.estudiante_contactos VALUES (72, 72, 'Dr. Hugo Crona', '1-229-765-1590 x877');
INSERT INTO public.estudiante_contactos VALUES (73, 73, 'Megan Walter', '446.773.5998');
INSERT INTO public.estudiante_contactos VALUES (74, 74, 'Alyssa Deckow', '1-603-574-1702 x06577');
INSERT INTO public.estudiante_contactos VALUES (75, 75, 'Lillian Collier', '400.947.9758 x7383');
INSERT INTO public.estudiante_contactos VALUES (76, 76, 'Sidney Glover', '1-469-995-0650');
INSERT INTO public.estudiante_contactos VALUES (77, 77, 'Taylor Frami', '1-394-746-9786 x062');
INSERT INTO public.estudiante_contactos VALUES (78, 78, 'Veronica Thiel', '(357) 587-3093 x860');
INSERT INTO public.estudiante_contactos VALUES (79, 79, 'Reginald McClure', '398.391.1199');
INSERT INTO public.estudiante_contactos VALUES (80, 80, 'Paula Oberbrunner DVM', '862-580-7545');
INSERT INTO public.estudiante_contactos VALUES (81, 81, 'Ollie Gutkowski', '732.525.4302 x622');
INSERT INTO public.estudiante_contactos VALUES (82, 82, 'Johnny Torp-Gerlach', '1-758-287-3148');
INSERT INTO public.estudiante_contactos VALUES (83, 83, 'Edgar Bode', '1-650-221-5558 x0502');
INSERT INTO public.estudiante_contactos VALUES (84, 84, 'Aaron McKenzie', '1-609-577-0307 x85816');
INSERT INTO public.estudiante_contactos VALUES (85, 85, 'Gertrude Moore IV', '256.981.9879');
INSERT INTO public.estudiante_contactos VALUES (86, 86, 'Andre Sauer III', '(859) 610-1429');
INSERT INTO public.estudiante_contactos VALUES (87, 87, 'Gilbert Rutherford', '(227) 681-3244 x37443');
INSERT INTO public.estudiante_contactos VALUES (88, 88, 'Bernadette Auer', '719-237-5545 x12363');
INSERT INTO public.estudiante_contactos VALUES (89, 89, 'Miss Alberta Dooley', '1-589-367-4798');
INSERT INTO public.estudiante_contactos VALUES (90, 90, 'Catherine Osinski', '546-392-8446');
INSERT INTO public.estudiante_contactos VALUES (91, 91, 'May Weber', '1-272-555-1847 x84747');
INSERT INTO public.estudiante_contactos VALUES (92, 92, 'Pedro Zemlak', '242.510.7268 x13317');
INSERT INTO public.estudiante_contactos VALUES (93, 93, 'Kerry Bartell', '1-713-370-5609 x997');
INSERT INTO public.estudiante_contactos VALUES (94, 94, 'Todd Bergnaum', '567-892-3878 x72067');
INSERT INTO public.estudiante_contactos VALUES (95, 95, 'Melissa White', '(618) 564-9323 x26307');
INSERT INTO public.estudiante_contactos VALUES (96, 96, 'Kathleen Gislason', '1-587-730-0909 x612');
INSERT INTO public.estudiante_contactos VALUES (97, 97, 'Kathleen Kassulke', '440-788-2065 x526');
INSERT INTO public.estudiante_contactos VALUES (98, 98, 'Jerry Green', '986.511.0109');
INSERT INTO public.estudiante_contactos VALUES (99, 99, 'Dr. Josh Paucek', '(792) 799-2924');
INSERT INTO public.estudiante_contactos VALUES (100, 100, 'Jonathan Blick', '(537) 378-4122 x0312');
INSERT INTO public.estudiante_contactos VALUES (101, 101, 'Cindy Dicki', '(739) 358-1327');
INSERT INTO public.estudiante_contactos VALUES (102, 102, 'Bradley Zieme', '391-977-1854 x028');
INSERT INTO public.estudiante_contactos VALUES (103, 103, 'Felix Gutmann', '949.712.2184');
INSERT INTO public.estudiante_contactos VALUES (104, 104, 'Brandy Schmidt', '1-649-216-6478 x891');
INSERT INTO public.estudiante_contactos VALUES (105, 105, 'Mercedes Kiehn', '1-492-918-5250 x053');
INSERT INTO public.estudiante_contactos VALUES (106, 106, 'Sean Nicolas', '323.503.1001 x785');
INSERT INTO public.estudiante_contactos VALUES (107, 107, 'Jo Hoeger-MacGyver', '750.605.0179');
INSERT INTO public.estudiante_contactos VALUES (108, 108, 'Juan Barrows', '(688) 659-1681 x52290');
INSERT INTO public.estudiante_contactos VALUES (109, 109, 'Nettie Sauer MD', '(434) 824-6420 x72754');
INSERT INTO public.estudiante_contactos VALUES (110, 110, 'Tabitha Rutherford', '748.220.7324 x90429');
INSERT INTO public.estudiante_contactos VALUES (111, 111, 'Van Deckow', '(417) 288-5265 x020');
INSERT INTO public.estudiante_contactos VALUES (112, 112, 'Karla Waelchi', '1-530-306-1786 x9298');
INSERT INTO public.estudiante_contactos VALUES (113, 113, 'Bryant Bashirian', '282.631.8305 x847');
INSERT INTO public.estudiante_contactos VALUES (114, 114, 'Leon Hand I', '623.642.2942 x94734');
INSERT INTO public.estudiante_contactos VALUES (115, 115, 'Jerome Aufderhar', '1-837-743-5771 x473');
INSERT INTO public.estudiante_contactos VALUES (116, 116, 'Geneva Baumbach', '1-766-757-5375 x6919');
INSERT INTO public.estudiante_contactos VALUES (117, 117, 'Vernon Mraz', '889.714.2444 x22068');
INSERT INTO public.estudiante_contactos VALUES (118, 118, 'Christina McDermott', '441-698-0604 x165');
INSERT INTO public.estudiante_contactos VALUES (119, 119, 'Mario Kuphal', '252-895-7693');
INSERT INTO public.estudiante_contactos VALUES (120, 120, 'Marjorie Feeney', '711.534.6720 x19592');
INSERT INTO public.estudiante_contactos VALUES (121, 121, 'Kurt Dach', '1-558-262-2422 x841');
INSERT INTO public.estudiante_contactos VALUES (122, 122, 'Johnnie Christiansen Sr.', '631-702-0942');
INSERT INTO public.estudiante_contactos VALUES (123, 123, 'Terrell Halvorson', '(649) 583-7889 x736');
INSERT INTO public.estudiante_contactos VALUES (124, 124, 'Virgil Ankunding', '(234) 584-0887 x3016');
INSERT INTO public.estudiante_contactos VALUES (125, 125, 'Agnes Strosin', '(817) 767-6489 x5914');
INSERT INTO public.estudiante_contactos VALUES (126, 126, 'Krista Skiles', '1-932-267-5705');
INSERT INTO public.estudiante_contactos VALUES (127, 127, 'Gloria Collins', '645.869.4021 x95192');
INSERT INTO public.estudiante_contactos VALUES (128, 128, 'Allen Stracke', '730.468.2468 x938');
INSERT INTO public.estudiante_contactos VALUES (129, 129, 'Percy Jacobs', '876.540.7420');
INSERT INTO public.estudiante_contactos VALUES (130, 130, 'Cathy Kozey', '696-763-8888 x002');
INSERT INTO public.estudiante_contactos VALUES (131, 131, 'Pamela Gibson', '325.265.6592 x1099');
INSERT INTO public.estudiante_contactos VALUES (132, 132, 'Kevin Wunsch', '966-855-2801 x259');
INSERT INTO public.estudiante_contactos VALUES (133, 133, 'Lorenzo Ryan Sr.', '1-758-349-1640 x8692');
INSERT INTO public.estudiante_contactos VALUES (134, 134, 'Pearl Conn', '1-893-878-7608 x5943');
INSERT INTO public.estudiante_contactos VALUES (135, 135, 'Rosemary Effertz', '482-327-3817 x2399');
INSERT INTO public.estudiante_contactos VALUES (136, 136, 'Pat McGlynn', '(481) 524-4544 x28877');
INSERT INTO public.estudiante_contactos VALUES (137, 137, 'Felix Prohaska', '(623) 807-0402');
INSERT INTO public.estudiante_contactos VALUES (138, 138, 'Dr. Scott Abbott', '(255) 561-1639 x388');
INSERT INTO public.estudiante_contactos VALUES (139, 139, 'Marguerite Daugherty', '1-837-212-7988 x2685');
INSERT INTO public.estudiante_contactos VALUES (140, 140, 'Diana Runolfsdottir', '765-964-5386');
INSERT INTO public.estudiante_contactos VALUES (141, 141, 'Mr. Harvey Maggio', '858-789-6513 x305');
INSERT INTO public.estudiante_contactos VALUES (142, 142, 'Casey Kris', '(778) 555-7944');
INSERT INTO public.estudiante_contactos VALUES (143, 143, 'Clifford Pagac IV', '(372) 213-2688');
INSERT INTO public.estudiante_contactos VALUES (144, 144, 'Tina Shields', '719-211-9922');
INSERT INTO public.estudiante_contactos VALUES (145, 145, 'Seth Rice II', '(776) 313-7677 x16036');
INSERT INTO public.estudiante_contactos VALUES (146, 146, 'Kate Cummerata', '(830) 607-5160 x97781');
INSERT INTO public.estudiante_contactos VALUES (147, 147, 'Freda Koch DVM', '845-717-9453 x99561');
INSERT INTO public.estudiante_contactos VALUES (148, 148, 'Adrian Collins', '312.468.4426 x6256');
INSERT INTO public.estudiante_contactos VALUES (149, 149, 'Earnest Abbott', '987-406-1384 x0076');
INSERT INTO public.estudiante_contactos VALUES (150, 150, 'Rudolph Macejkovic', '309-306-8738 x0814');
INSERT INTO public.estudiante_contactos VALUES (151, 151, 'Steven Crona', '694-329-6130 x596');
INSERT INTO public.estudiante_contactos VALUES (152, 152, 'Jana Pacocha', '311.710.4679 x3747');
INSERT INTO public.estudiante_contactos VALUES (153, 153, 'Priscilla Schneider', '1-643-959-7976 x9759');
INSERT INTO public.estudiante_contactos VALUES (154, 154, 'Theodore Turcotte', '462.877.8652 x49546');
INSERT INTO public.estudiante_contactos VALUES (155, 155, 'Jorge Considine', '669.438.2420 x20798');
INSERT INTO public.estudiante_contactos VALUES (156, 156, 'Donald Bogan V', '417-495-0784 x59080');
INSERT INTO public.estudiante_contactos VALUES (157, 157, 'Mandy Kutch', '1-418-737-8147 x44095');
INSERT INTO public.estudiante_contactos VALUES (158, 158, 'Kristi Shanahan PhD', '368-295-1388 x21038');
INSERT INTO public.estudiante_contactos VALUES (159, 159, 'Angela Rice', '731-220-4360 x0794');
INSERT INTO public.estudiante_contactos VALUES (160, 160, 'Edith Durgan', '1-819-785-3431 x046');
INSERT INTO public.estudiante_contactos VALUES (161, 161, 'Jo Witting', '1-735-871-9581');
INSERT INTO public.estudiante_contactos VALUES (162, 162, 'Mr. Kenneth Crist', '(825) 478-1169 x957');
INSERT INTO public.estudiante_contactos VALUES (163, 163, 'Jermaine Wisoky', '1-590-531-3811');
INSERT INTO public.estudiante_contactos VALUES (164, 164, 'Sabrina McDermott', '847.634.8970');
INSERT INTO public.estudiante_contactos VALUES (165, 165, 'Lee Carter', '419.746.5136 x118');
INSERT INTO public.estudiante_contactos VALUES (166, 166, 'Darrel Deckow', '1-260-362-6712 x2090');
INSERT INTO public.estudiante_contactos VALUES (167, 167, 'Dr. Sara Smitham', '591.967.7455 x9999');
INSERT INTO public.estudiante_contactos VALUES (168, 168, 'Camille Gerlach', '347-611-1988 x16480');
INSERT INTO public.estudiante_contactos VALUES (169, 169, 'Kathy Fadel', '1-206-366-2903 x498');
INSERT INTO public.estudiante_contactos VALUES (170, 170, 'Justin Leuschke V', '431.313.8122');
INSERT INTO public.estudiante_contactos VALUES (171, 171, 'Dr. Krystal Cassin', '212.894.0657');
INSERT INTO public.estudiante_contactos VALUES (172, 172, 'Ramiro Hermiston', '488-484-1982 x68179');
INSERT INTO public.estudiante_contactos VALUES (173, 173, 'Herman Dare', '1-747-872-2378 x002');
INSERT INTO public.estudiante_contactos VALUES (174, 174, 'Gretchen Lubowitz', '1-334-523-3790 x1921');
INSERT INTO public.estudiante_contactos VALUES (175, 175, 'Tracy McDermott', '251-419-2710');
INSERT INTO public.estudiante_contactos VALUES (176, 176, 'Herman Ritchie', '1-808-742-1512 x63897');
INSERT INTO public.estudiante_contactos VALUES (177, 177, 'Ms. Anita Trantow', '245.984.4226 x13624');
INSERT INTO public.estudiante_contactos VALUES (178, 178, 'Rodolfo Blanda', '682-845-2834 x2571');
INSERT INTO public.estudiante_contactos VALUES (179, 179, 'Dr. Randy Ebert', '744.237.4734');
INSERT INTO public.estudiante_contactos VALUES (180, 180, 'Ms. Raquel Cormier', '403-601-8633 x2279');
INSERT INTO public.estudiante_contactos VALUES (181, 181, 'Alan Koepp', '490.543.7670');
INSERT INTO public.estudiante_contactos VALUES (182, 182, 'Miguel Rohan', '969.936.2065 x4185');
INSERT INTO public.estudiante_contactos VALUES (183, 183, 'Larry Cassin', '(306) 735-9600 x77740');
INSERT INTO public.estudiante_contactos VALUES (184, 184, 'Virginia Reinger', '918.691.6586');
INSERT INTO public.estudiante_contactos VALUES (185, 185, 'Lynne Schneider', '980-574-1979');
INSERT INTO public.estudiante_contactos VALUES (186, 186, 'Patricia DuBuque', '739-406-2424 x947');
INSERT INTO public.estudiante_contactos VALUES (187, 187, 'Dr. Ernest Spencer IV', '1-944-300-6040 x095');
INSERT INTO public.estudiante_contactos VALUES (188, 188, 'Dr. Marlon Wehner', '(688) 422-9553');
INSERT INTO public.estudiante_contactos VALUES (189, 189, 'Isaac Glover', '236-456-5669');
INSERT INTO public.estudiante_contactos VALUES (190, 190, 'Pete Roob', '(935) 865-0744 x081');
INSERT INTO public.estudiante_contactos VALUES (191, 191, 'Melvin Jerde', '1-434-591-0070 x5151');
INSERT INTO public.estudiante_contactos VALUES (192, 192, 'Teresa Sauer', '890.869.4249 x447');
INSERT INTO public.estudiante_contactos VALUES (193, 193, 'Frances Mitchell', '487.644.1939 x9508');
INSERT INTO public.estudiante_contactos VALUES (194, 194, 'Sammy Conroy', '457-413-0263 x668');
INSERT INTO public.estudiante_contactos VALUES (195, 195, 'Jody Tillman', '1-292-409-0821 x77117');
INSERT INTO public.estudiante_contactos VALUES (196, 196, 'Lionel Trantow', '510-245-0405');
INSERT INTO public.estudiante_contactos VALUES (197, 197, 'Terrance Bashirian', '922-202-2023 x041');
INSERT INTO public.estudiante_contactos VALUES (198, 198, 'Lois Muller', '949-680-0172 x527');
INSERT INTO public.estudiante_contactos VALUES (199, 199, 'Lora Casper', '1-955-320-5399 x65304');
INSERT INTO public.estudiante_contactos VALUES (200, 200, 'Orville Schaefer', '658.367.7871 x51757');


--
-- Data for Name: horas_beca; Type: TABLE DATA; Schema: public; Owner: josep
--

INSERT INTO public.horas_beca VALUES (1, 'Apoyo docente', 4, 'SABADO', '09:00:00', '11:00:00');
INSERT INTO public.horas_beca VALUES (2, 'Asistencia biblioteca', 6, 'MARTES', '10:00:00', '12:00:00');
INSERT INTO public.horas_beca VALUES (3, 'Apoyo docente', 2, 'VIERNES', '11:00:00', '13:00:00');
INSERT INTO public.horas_beca VALUES (4, 'Asistencia biblioteca', 4, 'VIERNES', '12:00:00', '14:00:00');
INSERT INTO public.horas_beca VALUES (5, 'Investigaci├│n', 6, 'VIERNES', '13:00:00', '15:00:00');
INSERT INTO public.horas_beca VALUES (6, 'Investigaci├│n', 2, 'VIERNES', '14:00:00', '16:00:00');
INSERT INTO public.horas_beca VALUES (7, 'Apoyo docente', 4, 'MARTES', '15:00:00', '17:00:00');
INSERT INTO public.horas_beca VALUES (8, 'Apoyo docente', 6, 'MARTES', '08:00:00', '10:00:00');
INSERT INTO public.horas_beca VALUES (9, 'Investigaci├│n', 2, 'LUNES', '09:00:00', '11:00:00');
INSERT INTO public.horas_beca VALUES (10, 'Apoyo docente', 4, 'LUNES', '10:00:00', '12:00:00');
INSERT INTO public.horas_beca VALUES (11, 'Asistencia biblioteca', 6, 'JUEVES', '11:00:00', '13:00:00');
INSERT INTO public.horas_beca VALUES (12, 'Apoyo docente', 2, 'VIERNES', '12:00:00', '14:00:00');
INSERT INTO public.horas_beca VALUES (13, 'Investigaci├│n', 4, 'VIERNES', '13:00:00', '15:00:00');
INSERT INTO public.horas_beca VALUES (14, 'Investigaci├│n', 6, 'SABADO', '14:00:00', '16:00:00');
INSERT INTO public.horas_beca VALUES (15, 'Eventos universitarios', 2, 'MARTES', '15:00:00', '17:00:00');
INSERT INTO public.horas_beca VALUES (16, 'Apoyo docente', 4, 'JUEVES', '08:00:00', '10:00:00');
INSERT INTO public.horas_beca VALUES (17, 'Apoyo docente', 6, 'SABADO', '09:00:00', '11:00:00');
INSERT INTO public.horas_beca VALUES (18, 'Investigaci├│n', 2, 'JUEVES', '10:00:00', '12:00:00');
INSERT INTO public.horas_beca VALUES (19, 'Apoyo docente', 4, 'JUEVES', '11:00:00', '13:00:00');
INSERT INTO public.horas_beca VALUES (20, 'Eventos universitarios', 6, 'SABADO', '12:00:00', '14:00:00');


--
-- Data for Name: estudiante_horas_beca; Type: TABLE DATA; Schema: public; Owner: josep
--

INSERT INTO public.estudiante_horas_beca VALUES (1, 2, 1, 'PENDIENTE');
INSERT INTO public.estudiante_horas_beca VALUES (2, 3, 1, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (3, 4, 1, 'COMPLETADO');
INSERT INTO public.estudiante_horas_beca VALUES (4, 5, 1, 'PENDIENTE');
INSERT INTO public.estudiante_horas_beca VALUES (5, 6, 1, 'COMPLETADO');
INSERT INTO public.estudiante_horas_beca VALUES (6, 7, 2, 'COMPLETADO');
INSERT INTO public.estudiante_horas_beca VALUES (7, 8, 2, 'PENDIENTE');
INSERT INTO public.estudiante_horas_beca VALUES (8, 9, 2, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (9, 10, 2, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (10, 11, 2, 'COMPLETADO');
INSERT INTO public.estudiante_horas_beca VALUES (11, 12, 3, 'COMPLETADO');
INSERT INTO public.estudiante_horas_beca VALUES (12, 13, 3, 'PENDIENTE');
INSERT INTO public.estudiante_horas_beca VALUES (13, 14, 3, 'COMPLETADO');
INSERT INTO public.estudiante_horas_beca VALUES (14, 15, 3, 'COMPLETADO');
INSERT INTO public.estudiante_horas_beca VALUES (15, 16, 3, 'COMPLETADO');
INSERT INTO public.estudiante_horas_beca VALUES (16, 17, 4, 'PENDIENTE');
INSERT INTO public.estudiante_horas_beca VALUES (17, 18, 4, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (18, 19, 4, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (19, 20, 4, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (20, 21, 4, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (21, 22, 5, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (22, 23, 5, 'COMPLETADO');
INSERT INTO public.estudiante_horas_beca VALUES (23, 24, 5, 'COMPLETADO');
INSERT INTO public.estudiante_horas_beca VALUES (24, 25, 5, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (25, 26, 5, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (26, 27, 6, 'COMPLETADO');
INSERT INTO public.estudiante_horas_beca VALUES (27, 28, 6, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (28, 29, 6, 'PENDIENTE');
INSERT INTO public.estudiante_horas_beca VALUES (29, 30, 6, 'PENDIENTE');
INSERT INTO public.estudiante_horas_beca VALUES (30, 31, 6, 'PENDIENTE');
INSERT INTO public.estudiante_horas_beca VALUES (31, 32, 7, 'PENDIENTE');
INSERT INTO public.estudiante_horas_beca VALUES (32, 33, 7, 'PENDIENTE');
INSERT INTO public.estudiante_horas_beca VALUES (33, 34, 7, 'COMPLETADO');
INSERT INTO public.estudiante_horas_beca VALUES (34, 35, 7, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (35, 36, 7, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (36, 37, 8, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (37, 38, 8, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (38, 39, 8, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (39, 40, 8, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (40, 41, 8, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (41, 42, 9, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (42, 43, 9, 'COMPLETADO');
INSERT INTO public.estudiante_horas_beca VALUES (43, 44, 9, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (44, 45, 9, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (45, 46, 9, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (46, 47, 10, 'PENDIENTE');
INSERT INTO public.estudiante_horas_beca VALUES (47, 48, 10, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (48, 49, 10, 'COMPLETADO');
INSERT INTO public.estudiante_horas_beca VALUES (49, 50, 10, 'COMPLETADO');
INSERT INTO public.estudiante_horas_beca VALUES (50, 51, 10, 'PENDIENTE');
INSERT INTO public.estudiante_horas_beca VALUES (51, 52, 11, 'PENDIENTE');
INSERT INTO public.estudiante_horas_beca VALUES (52, 53, 11, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (53, 54, 11, 'PENDIENTE');
INSERT INTO public.estudiante_horas_beca VALUES (54, 55, 11, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (55, 56, 11, 'PENDIENTE');
INSERT INTO public.estudiante_horas_beca VALUES (56, 57, 12, 'COMPLETADO');
INSERT INTO public.estudiante_horas_beca VALUES (57, 58, 12, 'COMPLETADO');
INSERT INTO public.estudiante_horas_beca VALUES (58, 59, 12, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (59, 60, 12, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (60, 61, 12, 'PENDIENTE');
INSERT INTO public.estudiante_horas_beca VALUES (61, 62, 13, 'COMPLETADO');
INSERT INTO public.estudiante_horas_beca VALUES (62, 63, 13, 'COMPLETADO');
INSERT INTO public.estudiante_horas_beca VALUES (63, 64, 13, 'COMPLETADO');
INSERT INTO public.estudiante_horas_beca VALUES (64, 65, 13, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (65, 66, 13, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (66, 67, 14, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (67, 68, 14, 'PENDIENTE');
INSERT INTO public.estudiante_horas_beca VALUES (68, 69, 14, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (69, 70, 14, 'PENDIENTE');
INSERT INTO public.estudiante_horas_beca VALUES (70, 71, 14, 'PENDIENTE');
INSERT INTO public.estudiante_horas_beca VALUES (71, 72, 15, 'COMPLETADO');
INSERT INTO public.estudiante_horas_beca VALUES (72, 73, 15, 'COMPLETADO');
INSERT INTO public.estudiante_horas_beca VALUES (73, 74, 15, 'COMPLETADO');
INSERT INTO public.estudiante_horas_beca VALUES (74, 75, 15, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (75, 76, 15, 'PENDIENTE');
INSERT INTO public.estudiante_horas_beca VALUES (76, 77, 16, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (77, 78, 16, 'COMPLETADO');
INSERT INTO public.estudiante_horas_beca VALUES (78, 79, 16, 'PENDIENTE');
INSERT INTO public.estudiante_horas_beca VALUES (79, 80, 16, 'COMPLETADO');
INSERT INTO public.estudiante_horas_beca VALUES (80, 81, 16, 'COMPLETADO');
INSERT INTO public.estudiante_horas_beca VALUES (81, 82, 17, 'COMPLETADO');
INSERT INTO public.estudiante_horas_beca VALUES (82, 83, 17, 'PENDIENTE');
INSERT INTO public.estudiante_horas_beca VALUES (83, 84, 17, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (84, 85, 17, 'COMPLETADO');
INSERT INTO public.estudiante_horas_beca VALUES (85, 86, 17, 'PENDIENTE');
INSERT INTO public.estudiante_horas_beca VALUES (86, 87, 18, 'COMPLETADO');
INSERT INTO public.estudiante_horas_beca VALUES (87, 88, 18, 'PENDIENTE');
INSERT INTO public.estudiante_horas_beca VALUES (88, 89, 18, 'COMPLETADO');
INSERT INTO public.estudiante_horas_beca VALUES (89, 90, 18, 'PENDIENTE');
INSERT INTO public.estudiante_horas_beca VALUES (90, 91, 18, 'PENDIENTE');
INSERT INTO public.estudiante_horas_beca VALUES (91, 92, 19, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (92, 93, 19, 'COMPLETADO');
INSERT INTO public.estudiante_horas_beca VALUES (93, 94, 19, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (94, 95, 19, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (95, 96, 19, 'COMPLETADO');
INSERT INTO public.estudiante_horas_beca VALUES (96, 97, 20, 'CANCELADO');
INSERT INTO public.estudiante_horas_beca VALUES (97, 98, 20, 'PENDIENTE');
INSERT INTO public.estudiante_horas_beca VALUES (98, 99, 20, 'COMPLETADO');
INSERT INTO public.estudiante_horas_beca VALUES (99, 100, 20, 'PENDIENTE');
INSERT INTO public.estudiante_horas_beca VALUES (100, 101, 20, 'COMPLETADO');


--
-- Data for Name: estudiante_notas; Type: TABLE DATA; Schema: public; Owner: josep
--

INSERT INTO public.estudiante_notas VALUES (1, 2, 1, 1.80);
INSERT INTO public.estudiante_notas VALUES (2, 3, 1, 2.50);
INSERT INTO public.estudiante_notas VALUES (3, 4, 1, 4.60);
INSERT INTO public.estudiante_notas VALUES (4, 5, 1, 5.80);
INSERT INTO public.estudiante_notas VALUES (5, 6, 2, 8.70);
INSERT INTO public.estudiante_notas VALUES (6, 7, 2, 3.20);
INSERT INTO public.estudiante_notas VALUES (7, 8, 2, 1.90);
INSERT INTO public.estudiante_notas VALUES (8, 9, 2, 6.20);
INSERT INTO public.estudiante_notas VALUES (9, 10, 3, 4.60);
INSERT INTO public.estudiante_notas VALUES (10, 11, 3, 9.50);
INSERT INTO public.estudiante_notas VALUES (11, 12, 3, 6.70);
INSERT INTO public.estudiante_notas VALUES (12, 13, 3, 4.80);
INSERT INTO public.estudiante_notas VALUES (13, 14, 4, 2.40);
INSERT INTO public.estudiante_notas VALUES (14, 15, 4, 8.20);
INSERT INTO public.estudiante_notas VALUES (15, 16, 4, 4.20);
INSERT INTO public.estudiante_notas VALUES (16, 17, 4, 8.30);
INSERT INTO public.estudiante_notas VALUES (17, 18, 5, 9.20);
INSERT INTO public.estudiante_notas VALUES (18, 19, 5, 0.60);
INSERT INTO public.estudiante_notas VALUES (19, 20, 5, 6.60);
INSERT INTO public.estudiante_notas VALUES (20, 21, 5, 1.30);
INSERT INTO public.estudiante_notas VALUES (21, 22, 6, 4.90);
INSERT INTO public.estudiante_notas VALUES (22, 23, 6, 4.30);
INSERT INTO public.estudiante_notas VALUES (23, 24, 6, 2.80);
INSERT INTO public.estudiante_notas VALUES (24, 25, 6, 4.10);
INSERT INTO public.estudiante_notas VALUES (25, 26, 7, 9.90);
INSERT INTO public.estudiante_notas VALUES (26, 27, 7, 2.70);
INSERT INTO public.estudiante_notas VALUES (27, 28, 7, 5.00);
INSERT INTO public.estudiante_notas VALUES (28, 29, 7, 1.50);
INSERT INTO public.estudiante_notas VALUES (29, 30, 8, 0.60);
INSERT INTO public.estudiante_notas VALUES (30, 31, 8, 8.30);
INSERT INTO public.estudiante_notas VALUES (31, 32, 8, 8.50);
INSERT INTO public.estudiante_notas VALUES (32, 33, 8, 3.60);
INSERT INTO public.estudiante_notas VALUES (33, 34, 9, 2.70);
INSERT INTO public.estudiante_notas VALUES (34, 35, 9, 6.60);
INSERT INTO public.estudiante_notas VALUES (35, 36, 9, 9.90);
INSERT INTO public.estudiante_notas VALUES (36, 37, 9, 0.90);
INSERT INTO public.estudiante_notas VALUES (37, 38, 10, 1.80);
INSERT INTO public.estudiante_notas VALUES (38, 39, 10, 5.60);
INSERT INTO public.estudiante_notas VALUES (39, 40, 10, 9.80);
INSERT INTO public.estudiante_notas VALUES (40, 41, 10, 5.60);
INSERT INTO public.estudiante_notas VALUES (41, 42, 11, 4.20);
INSERT INTO public.estudiante_notas VALUES (42, 43, 11, 0.90);
INSERT INTO public.estudiante_notas VALUES (43, 44, 11, 9.20);
INSERT INTO public.estudiante_notas VALUES (44, 45, 11, 4.10);
INSERT INTO public.estudiante_notas VALUES (45, 46, 12, 9.70);
INSERT INTO public.estudiante_notas VALUES (46, 47, 12, 5.60);
INSERT INTO public.estudiante_notas VALUES (47, 48, 12, 4.80);
INSERT INTO public.estudiante_notas VALUES (48, 49, 12, 2.30);
INSERT INTO public.estudiante_notas VALUES (49, 50, 13, 4.00);
INSERT INTO public.estudiante_notas VALUES (50, 51, 13, 2.50);
INSERT INTO public.estudiante_notas VALUES (51, 52, 13, 8.50);
INSERT INTO public.estudiante_notas VALUES (52, 53, 13, 4.80);
INSERT INTO public.estudiante_notas VALUES (53, 54, 14, 7.50);
INSERT INTO public.estudiante_notas VALUES (54, 55, 14, 0.80);
INSERT INTO public.estudiante_notas VALUES (55, 56, 14, 3.50);
INSERT INTO public.estudiante_notas VALUES (56, 57, 14, 0.50);
INSERT INTO public.estudiante_notas VALUES (57, 58, 15, 7.80);
INSERT INTO public.estudiante_notas VALUES (58, 59, 15, 1.20);
INSERT INTO public.estudiante_notas VALUES (59, 60, 15, 9.50);
INSERT INTO public.estudiante_notas VALUES (60, 61, 15, 6.60);
INSERT INTO public.estudiante_notas VALUES (61, 62, 16, 0.40);
INSERT INTO public.estudiante_notas VALUES (62, 63, 16, 9.60);
INSERT INTO public.estudiante_notas VALUES (63, 64, 16, 2.30);
INSERT INTO public.estudiante_notas VALUES (64, 65, 16, 3.40);
INSERT INTO public.estudiante_notas VALUES (65, 66, 17, 0.50);
INSERT INTO public.estudiante_notas VALUES (66, 67, 17, 3.00);
INSERT INTO public.estudiante_notas VALUES (67, 68, 17, 7.80);
INSERT INTO public.estudiante_notas VALUES (68, 69, 17, 5.00);
INSERT INTO public.estudiante_notas VALUES (69, 70, 18, 6.20);
INSERT INTO public.estudiante_notas VALUES (70, 71, 18, 3.70);
INSERT INTO public.estudiante_notas VALUES (71, 72, 18, 1.90);
INSERT INTO public.estudiante_notas VALUES (72, 73, 18, 4.10);
INSERT INTO public.estudiante_notas VALUES (73, 74, 19, 4.90);
INSERT INTO public.estudiante_notas VALUES (74, 75, 19, 8.30);
INSERT INTO public.estudiante_notas VALUES (75, 76, 19, 8.00);
INSERT INTO public.estudiante_notas VALUES (76, 77, 19, 2.10);
INSERT INTO public.estudiante_notas VALUES (77, 78, 20, 4.60);
INSERT INTO public.estudiante_notas VALUES (78, 79, 20, 2.30);
INSERT INTO public.estudiante_notas VALUES (79, 80, 20, 8.90);
INSERT INTO public.estudiante_notas VALUES (80, 81, 20, 1.00);
INSERT INTO public.estudiante_notas VALUES (81, 82, 21, 6.70);
INSERT INTO public.estudiante_notas VALUES (82, 83, 21, 4.80);
INSERT INTO public.estudiante_notas VALUES (83, 84, 21, 8.30);
INSERT INTO public.estudiante_notas VALUES (84, 85, 21, 4.50);
INSERT INTO public.estudiante_notas VALUES (85, 86, 22, 9.70);
INSERT INTO public.estudiante_notas VALUES (86, 87, 22, 3.30);
INSERT INTO public.estudiante_notas VALUES (87, 88, 22, 8.90);
INSERT INTO public.estudiante_notas VALUES (88, 89, 22, 4.30);
INSERT INTO public.estudiante_notas VALUES (89, 90, 23, 1.40);
INSERT INTO public.estudiante_notas VALUES (90, 91, 23, 5.70);
INSERT INTO public.estudiante_notas VALUES (91, 92, 23, 8.50);
INSERT INTO public.estudiante_notas VALUES (92, 93, 23, 0.20);
INSERT INTO public.estudiante_notas VALUES (93, 94, 24, 3.40);
INSERT INTO public.estudiante_notas VALUES (94, 95, 24, 3.10);
INSERT INTO public.estudiante_notas VALUES (95, 96, 24, 6.10);
INSERT INTO public.estudiante_notas VALUES (96, 97, 24, 3.80);
INSERT INTO public.estudiante_notas VALUES (97, 98, 25, 7.30);
INSERT INTO public.estudiante_notas VALUES (98, 99, 25, 5.70);
INSERT INTO public.estudiante_notas VALUES (99, 100, 25, 3.50);
INSERT INTO public.estudiante_notas VALUES (100, 101, 25, 4.90);
INSERT INTO public.estudiante_notas VALUES (101, 102, 26, 1.20);
INSERT INTO public.estudiante_notas VALUES (102, 103, 26, 4.80);
INSERT INTO public.estudiante_notas VALUES (103, 104, 26, 9.40);
INSERT INTO public.estudiante_notas VALUES (104, 105, 26, 1.60);
INSERT INTO public.estudiante_notas VALUES (105, 106, 27, 6.90);
INSERT INTO public.estudiante_notas VALUES (106, 107, 27, 8.50);
INSERT INTO public.estudiante_notas VALUES (107, 108, 27, 5.20);
INSERT INTO public.estudiante_notas VALUES (108, 109, 27, 2.70);
INSERT INTO public.estudiante_notas VALUES (109, 110, 28, 5.40);
INSERT INTO public.estudiante_notas VALUES (110, 111, 28, 8.40);
INSERT INTO public.estudiante_notas VALUES (111, 112, 28, 8.80);
INSERT INTO public.estudiante_notas VALUES (112, 113, 28, 1.60);
INSERT INTO public.estudiante_notas VALUES (113, 114, 29, 7.10);
INSERT INTO public.estudiante_notas VALUES (114, 115, 29, 3.80);
INSERT INTO public.estudiante_notas VALUES (115, 116, 29, 0.80);
INSERT INTO public.estudiante_notas VALUES (116, 117, 29, 2.30);
INSERT INTO public.estudiante_notas VALUES (117, 118, 30, 7.20);
INSERT INTO public.estudiante_notas VALUES (118, 119, 30, 9.60);
INSERT INTO public.estudiante_notas VALUES (119, 120, 30, 0.70);
INSERT INTO public.estudiante_notas VALUES (120, 121, 30, 5.90);
INSERT INTO public.estudiante_notas VALUES (121, 122, 31, 5.90);
INSERT INTO public.estudiante_notas VALUES (122, 123, 31, 6.80);
INSERT INTO public.estudiante_notas VALUES (123, 124, 31, 4.40);
INSERT INTO public.estudiante_notas VALUES (124, 125, 31, 2.70);
INSERT INTO public.estudiante_notas VALUES (125, 126, 32, 3.80);
INSERT INTO public.estudiante_notas VALUES (126, 127, 32, 5.20);
INSERT INTO public.estudiante_notas VALUES (127, 128, 32, 6.00);
INSERT INTO public.estudiante_notas VALUES (128, 129, 32, 8.20);
INSERT INTO public.estudiante_notas VALUES (129, 130, 33, 3.10);
INSERT INTO public.estudiante_notas VALUES (130, 131, 33, 4.90);
INSERT INTO public.estudiante_notas VALUES (131, 132, 33, 2.70);
INSERT INTO public.estudiante_notas VALUES (132, 133, 33, 7.30);
INSERT INTO public.estudiante_notas VALUES (133, 134, 34, 2.60);
INSERT INTO public.estudiante_notas VALUES (134, 135, 34, 5.00);
INSERT INTO public.estudiante_notas VALUES (135, 136, 34, 2.20);
INSERT INTO public.estudiante_notas VALUES (136, 137, 34, 2.40);
INSERT INTO public.estudiante_notas VALUES (137, 138, 35, 8.40);
INSERT INTO public.estudiante_notas VALUES (138, 139, 35, 3.90);
INSERT INTO public.estudiante_notas VALUES (139, 140, 35, 7.80);
INSERT INTO public.estudiante_notas VALUES (140, 141, 35, 7.60);
INSERT INTO public.estudiante_notas VALUES (141, 142, 36, 6.60);
INSERT INTO public.estudiante_notas VALUES (142, 143, 36, 2.80);
INSERT INTO public.estudiante_notas VALUES (143, 144, 36, 4.30);
INSERT INTO public.estudiante_notas VALUES (144, 145, 36, 4.40);
INSERT INTO public.estudiante_notas VALUES (145, 146, 37, 6.70);
INSERT INTO public.estudiante_notas VALUES (146, 147, 37, 6.80);
INSERT INTO public.estudiante_notas VALUES (147, 148, 37, 8.00);
INSERT INTO public.estudiante_notas VALUES (148, 149, 37, 2.90);
INSERT INTO public.estudiante_notas VALUES (149, 150, 38, 7.90);
INSERT INTO public.estudiante_notas VALUES (150, 151, 38, 3.60);
INSERT INTO public.estudiante_notas VALUES (151, 152, 38, 9.90);
INSERT INTO public.estudiante_notas VALUES (152, 153, 38, 5.10);
INSERT INTO public.estudiante_notas VALUES (153, 154, 39, 7.10);
INSERT INTO public.estudiante_notas VALUES (154, 155, 39, 5.90);
INSERT INTO public.estudiante_notas VALUES (155, 156, 39, 6.70);
INSERT INTO public.estudiante_notas VALUES (156, 157, 39, 0.50);
INSERT INTO public.estudiante_notas VALUES (157, 158, 40, 5.70);
INSERT INTO public.estudiante_notas VALUES (158, 159, 40, 5.60);
INSERT INTO public.estudiante_notas VALUES (159, 160, 40, 4.00);
INSERT INTO public.estudiante_notas VALUES (160, 161, 40, 2.30);
INSERT INTO public.estudiante_notas VALUES (161, 162, 41, 4.00);
INSERT INTO public.estudiante_notas VALUES (162, 163, 41, 7.70);
INSERT INTO public.estudiante_notas VALUES (163, 164, 41, 8.20);
INSERT INTO public.estudiante_notas VALUES (164, 165, 41, 4.80);
INSERT INTO public.estudiante_notas VALUES (165, 166, 42, 5.50);
INSERT INTO public.estudiante_notas VALUES (166, 167, 42, 9.80);
INSERT INTO public.estudiante_notas VALUES (167, 168, 42, 7.20);
INSERT INTO public.estudiante_notas VALUES (168, 169, 42, 1.70);
INSERT INTO public.estudiante_notas VALUES (169, 170, 43, 0.90);
INSERT INTO public.estudiante_notas VALUES (170, 171, 43, 2.20);
INSERT INTO public.estudiante_notas VALUES (171, 172, 43, 1.30);
INSERT INTO public.estudiante_notas VALUES (172, 173, 43, 2.70);
INSERT INTO public.estudiante_notas VALUES (173, 174, 44, 4.30);
INSERT INTO public.estudiante_notas VALUES (174, 175, 44, 1.20);
INSERT INTO public.estudiante_notas VALUES (175, 176, 44, 4.00);
INSERT INTO public.estudiante_notas VALUES (176, 177, 44, 8.20);
INSERT INTO public.estudiante_notas VALUES (177, 178, 45, 8.90);
INSERT INTO public.estudiante_notas VALUES (178, 179, 45, 2.40);
INSERT INTO public.estudiante_notas VALUES (179, 180, 45, 8.60);
INSERT INTO public.estudiante_notas VALUES (180, 181, 45, 8.50);
INSERT INTO public.estudiante_notas VALUES (181, 182, 46, 8.00);
INSERT INTO public.estudiante_notas VALUES (182, 183, 46, 4.90);
INSERT INTO public.estudiante_notas VALUES (183, 184, 46, 1.30);
INSERT INTO public.estudiante_notas VALUES (184, 185, 46, 2.40);
INSERT INTO public.estudiante_notas VALUES (185, 186, 47, 6.00);
INSERT INTO public.estudiante_notas VALUES (186, 187, 47, 0.30);
INSERT INTO public.estudiante_notas VALUES (187, 188, 47, 1.10);
INSERT INTO public.estudiante_notas VALUES (188, 189, 47, 6.60);
INSERT INTO public.estudiante_notas VALUES (189, 190, 48, 9.70);
INSERT INTO public.estudiante_notas VALUES (190, 191, 48, 7.80);
INSERT INTO public.estudiante_notas VALUES (191, 192, 48, 4.70);
INSERT INTO public.estudiante_notas VALUES (192, 193, 48, 5.70);
INSERT INTO public.estudiante_notas VALUES (193, 194, 49, 3.60);
INSERT INTO public.estudiante_notas VALUES (194, 195, 49, 4.10);
INSERT INTO public.estudiante_notas VALUES (195, 196, 49, 3.80);
INSERT INTO public.estudiante_notas VALUES (196, 197, 49, 5.40);
INSERT INTO public.estudiante_notas VALUES (197, 198, 50, 4.90);
INSERT INTO public.estudiante_notas VALUES (198, 199, 50, 4.20);
INSERT INTO public.estudiante_notas VALUES (199, 200, 50, 9.40);
INSERT INTO public.estudiante_notas VALUES (200, 1, 50, 4.30);
INSERT INTO public.estudiante_notas VALUES (201, 2, 51, 2.60);
INSERT INTO public.estudiante_notas VALUES (202, 3, 51, 5.90);
INSERT INTO public.estudiante_notas VALUES (203, 4, 51, 8.40);
INSERT INTO public.estudiante_notas VALUES (204, 5, 51, 7.00);
INSERT INTO public.estudiante_notas VALUES (205, 6, 52, 0.60);
INSERT INTO public.estudiante_notas VALUES (206, 7, 52, 0.10);
INSERT INTO public.estudiante_notas VALUES (207, 8, 52, 3.90);
INSERT INTO public.estudiante_notas VALUES (208, 9, 52, 5.20);
INSERT INTO public.estudiante_notas VALUES (209, 10, 53, 8.90);
INSERT INTO public.estudiante_notas VALUES (210, 11, 53, 7.90);
INSERT INTO public.estudiante_notas VALUES (211, 12, 53, 1.20);
INSERT INTO public.estudiante_notas VALUES (212, 13, 53, 2.70);
INSERT INTO public.estudiante_notas VALUES (213, 14, 54, 7.40);
INSERT INTO public.estudiante_notas VALUES (214, 15, 54, 6.40);
INSERT INTO public.estudiante_notas VALUES (215, 16, 54, 7.70);
INSERT INTO public.estudiante_notas VALUES (216, 17, 54, 8.50);
INSERT INTO public.estudiante_notas VALUES (217, 18, 55, 3.60);
INSERT INTO public.estudiante_notas VALUES (218, 19, 55, 8.40);
INSERT INTO public.estudiante_notas VALUES (219, 20, 55, 6.00);
INSERT INTO public.estudiante_notas VALUES (220, 21, 55, 1.00);
INSERT INTO public.estudiante_notas VALUES (221, 22, 56, 0.10);
INSERT INTO public.estudiante_notas VALUES (222, 23, 56, 4.10);
INSERT INTO public.estudiante_notas VALUES (223, 24, 56, 8.50);
INSERT INTO public.estudiante_notas VALUES (224, 25, 56, 4.10);
INSERT INTO public.estudiante_notas VALUES (225, 26, 57, 4.90);
INSERT INTO public.estudiante_notas VALUES (226, 27, 57, 3.60);
INSERT INTO public.estudiante_notas VALUES (227, 28, 57, 2.50);
INSERT INTO public.estudiante_notas VALUES (228, 29, 57, 8.10);
INSERT INTO public.estudiante_notas VALUES (229, 30, 58, 8.30);
INSERT INTO public.estudiante_notas VALUES (230, 31, 58, 8.50);
INSERT INTO public.estudiante_notas VALUES (231, 32, 58, 1.00);
INSERT INTO public.estudiante_notas VALUES (232, 33, 58, 5.70);
INSERT INTO public.estudiante_notas VALUES (233, 34, 59, 8.80);
INSERT INTO public.estudiante_notas VALUES (234, 35, 59, 8.30);
INSERT INTO public.estudiante_notas VALUES (235, 36, 59, 3.50);
INSERT INTO public.estudiante_notas VALUES (236, 37, 59, 3.90);
INSERT INTO public.estudiante_notas VALUES (237, 38, 60, 4.20);
INSERT INTO public.estudiante_notas VALUES (238, 39, 60, 6.40);
INSERT INTO public.estudiante_notas VALUES (239, 40, 60, 4.60);
INSERT INTO public.estudiante_notas VALUES (240, 41, 60, 0.50);
INSERT INTO public.estudiante_notas VALUES (241, 42, 61, 6.60);
INSERT INTO public.estudiante_notas VALUES (242, 43, 61, 2.60);
INSERT INTO public.estudiante_notas VALUES (243, 44, 61, 4.30);
INSERT INTO public.estudiante_notas VALUES (244, 45, 61, 3.20);
INSERT INTO public.estudiante_notas VALUES (245, 46, 62, 7.50);
INSERT INTO public.estudiante_notas VALUES (246, 47, 62, 9.60);
INSERT INTO public.estudiante_notas VALUES (247, 48, 62, 6.00);
INSERT INTO public.estudiante_notas VALUES (248, 49, 62, 5.50);
INSERT INTO public.estudiante_notas VALUES (249, 50, 63, 4.30);
INSERT INTO public.estudiante_notas VALUES (250, 51, 63, 5.10);
INSERT INTO public.estudiante_notas VALUES (251, 52, 63, 3.40);
INSERT INTO public.estudiante_notas VALUES (252, 53, 63, 0.50);
INSERT INTO public.estudiante_notas VALUES (253, 54, 64, 1.70);
INSERT INTO public.estudiante_notas VALUES (254, 55, 64, 1.90);
INSERT INTO public.estudiante_notas VALUES (255, 56, 64, 5.00);
INSERT INTO public.estudiante_notas VALUES (256, 57, 64, 9.10);
INSERT INTO public.estudiante_notas VALUES (257, 58, 65, 1.40);
INSERT INTO public.estudiante_notas VALUES (258, 59, 65, 7.70);
INSERT INTO public.estudiante_notas VALUES (259, 60, 65, 3.00);
INSERT INTO public.estudiante_notas VALUES (260, 61, 65, 9.40);
INSERT INTO public.estudiante_notas VALUES (261, 62, 66, 6.30);
INSERT INTO public.estudiante_notas VALUES (262, 63, 66, 3.40);
INSERT INTO public.estudiante_notas VALUES (263, 64, 66, 1.50);
INSERT INTO public.estudiante_notas VALUES (264, 65, 66, 5.00);
INSERT INTO public.estudiante_notas VALUES (265, 66, 67, 0.40);
INSERT INTO public.estudiante_notas VALUES (266, 67, 67, 2.30);
INSERT INTO public.estudiante_notas VALUES (267, 68, 67, 2.10);
INSERT INTO public.estudiante_notas VALUES (268, 69, 67, 1.00);
INSERT INTO public.estudiante_notas VALUES (269, 70, 68, 1.70);
INSERT INTO public.estudiante_notas VALUES (270, 71, 68, 4.80);
INSERT INTO public.estudiante_notas VALUES (271, 72, 68, 2.40);
INSERT INTO public.estudiante_notas VALUES (272, 73, 68, 5.90);
INSERT INTO public.estudiante_notas VALUES (273, 74, 69, 4.60);
INSERT INTO public.estudiante_notas VALUES (274, 75, 69, 2.60);
INSERT INTO public.estudiante_notas VALUES (275, 76, 69, 1.60);
INSERT INTO public.estudiante_notas VALUES (276, 77, 69, 3.00);
INSERT INTO public.estudiante_notas VALUES (277, 78, 70, 0.80);
INSERT INTO public.estudiante_notas VALUES (278, 79, 70, 5.00);
INSERT INTO public.estudiante_notas VALUES (279, 80, 70, 5.70);
INSERT INTO public.estudiante_notas VALUES (280, 81, 70, 2.00);
INSERT INTO public.estudiante_notas VALUES (281, 82, 71, 9.90);
INSERT INTO public.estudiante_notas VALUES (282, 83, 71, 7.80);
INSERT INTO public.estudiante_notas VALUES (283, 84, 71, 6.50);
INSERT INTO public.estudiante_notas VALUES (284, 85, 71, 7.70);
INSERT INTO public.estudiante_notas VALUES (285, 86, 72, 1.40);
INSERT INTO public.estudiante_notas VALUES (286, 87, 72, 6.20);
INSERT INTO public.estudiante_notas VALUES (287, 88, 72, 6.20);
INSERT INTO public.estudiante_notas VALUES (288, 89, 72, 9.80);
INSERT INTO public.estudiante_notas VALUES (289, 90, 73, 8.90);
INSERT INTO public.estudiante_notas VALUES (290, 91, 73, 2.20);
INSERT INTO public.estudiante_notas VALUES (291, 92, 73, 3.30);
INSERT INTO public.estudiante_notas VALUES (292, 93, 73, 10.00);
INSERT INTO public.estudiante_notas VALUES (293, 94, 74, 6.30);
INSERT INTO public.estudiante_notas VALUES (294, 95, 74, 0.40);
INSERT INTO public.estudiante_notas VALUES (295, 96, 74, 6.80);
INSERT INTO public.estudiante_notas VALUES (296, 97, 74, 8.80);
INSERT INTO public.estudiante_notas VALUES (297, 98, 75, 6.70);
INSERT INTO public.estudiante_notas VALUES (298, 99, 75, 5.40);
INSERT INTO public.estudiante_notas VALUES (299, 100, 75, 8.90);
INSERT INTO public.estudiante_notas VALUES (300, 101, 75, 0.60);
INSERT INTO public.estudiante_notas VALUES (301, 102, 76, 5.10);
INSERT INTO public.estudiante_notas VALUES (302, 103, 76, 4.70);
INSERT INTO public.estudiante_notas VALUES (303, 104, 76, 0.10);
INSERT INTO public.estudiante_notas VALUES (304, 105, 76, 9.80);
INSERT INTO public.estudiante_notas VALUES (305, 106, 77, 6.20);
INSERT INTO public.estudiante_notas VALUES (306, 107, 77, 6.50);
INSERT INTO public.estudiante_notas VALUES (307, 108, 77, 3.00);
INSERT INTO public.estudiante_notas VALUES (308, 109, 77, 5.50);
INSERT INTO public.estudiante_notas VALUES (309, 110, 78, 7.70);
INSERT INTO public.estudiante_notas VALUES (310, 111, 78, 0.70);
INSERT INTO public.estudiante_notas VALUES (311, 112, 78, 7.50);
INSERT INTO public.estudiante_notas VALUES (312, 113, 78, 2.30);
INSERT INTO public.estudiante_notas VALUES (313, 114, 79, 4.00);
INSERT INTO public.estudiante_notas VALUES (314, 115, 79, 7.40);
INSERT INTO public.estudiante_notas VALUES (315, 116, 79, 7.60);
INSERT INTO public.estudiante_notas VALUES (316, 117, 79, 0.40);
INSERT INTO public.estudiante_notas VALUES (317, 118, 80, 3.50);
INSERT INTO public.estudiante_notas VALUES (318, 119, 80, 0.60);
INSERT INTO public.estudiante_notas VALUES (319, 120, 80, 3.00);
INSERT INTO public.estudiante_notas VALUES (320, 121, 80, 5.40);
INSERT INTO public.estudiante_notas VALUES (321, 122, 81, 8.20);
INSERT INTO public.estudiante_notas VALUES (322, 123, 81, 9.10);
INSERT INTO public.estudiante_notas VALUES (323, 124, 81, 0.50);
INSERT INTO public.estudiante_notas VALUES (324, 125, 81, 3.40);
INSERT INTO public.estudiante_notas VALUES (325, 126, 82, 1.70);
INSERT INTO public.estudiante_notas VALUES (326, 127, 82, 4.40);
INSERT INTO public.estudiante_notas VALUES (327, 128, 82, 5.90);
INSERT INTO public.estudiante_notas VALUES (328, 129, 82, 9.00);
INSERT INTO public.estudiante_notas VALUES (329, 130, 83, 8.30);
INSERT INTO public.estudiante_notas VALUES (330, 131, 83, 5.50);
INSERT INTO public.estudiante_notas VALUES (331, 132, 83, 1.10);
INSERT INTO public.estudiante_notas VALUES (332, 133, 83, 3.00);
INSERT INTO public.estudiante_notas VALUES (333, 134, 84, 8.80);
INSERT INTO public.estudiante_notas VALUES (334, 135, 84, 3.30);
INSERT INTO public.estudiante_notas VALUES (335, 136, 84, 5.10);
INSERT INTO public.estudiante_notas VALUES (336, 137, 84, 8.50);
INSERT INTO public.estudiante_notas VALUES (337, 138, 85, 8.30);
INSERT INTO public.estudiante_notas VALUES (338, 139, 85, 4.60);
INSERT INTO public.estudiante_notas VALUES (339, 140, 85, 6.30);
INSERT INTO public.estudiante_notas VALUES (340, 141, 85, 0.10);
INSERT INTO public.estudiante_notas VALUES (341, 142, 86, 4.40);
INSERT INTO public.estudiante_notas VALUES (342, 143, 86, 9.00);
INSERT INTO public.estudiante_notas VALUES (343, 144, 86, 6.90);
INSERT INTO public.estudiante_notas VALUES (344, 145, 86, 9.60);
INSERT INTO public.estudiante_notas VALUES (345, 146, 87, 8.40);
INSERT INTO public.estudiante_notas VALUES (346, 147, 87, 3.80);
INSERT INTO public.estudiante_notas VALUES (347, 148, 87, 9.50);
INSERT INTO public.estudiante_notas VALUES (348, 149, 87, 1.20);
INSERT INTO public.estudiante_notas VALUES (349, 150, 88, 7.30);
INSERT INTO public.estudiante_notas VALUES (350, 151, 88, 5.70);
INSERT INTO public.estudiante_notas VALUES (351, 152, 88, 1.80);
INSERT INTO public.estudiante_notas VALUES (352, 153, 88, 2.10);
INSERT INTO public.estudiante_notas VALUES (353, 154, 89, 4.60);
INSERT INTO public.estudiante_notas VALUES (354, 155, 89, 7.60);
INSERT INTO public.estudiante_notas VALUES (355, 156, 89, 7.20);
INSERT INTO public.estudiante_notas VALUES (356, 157, 89, 7.40);
INSERT INTO public.estudiante_notas VALUES (357, 158, 90, 2.70);
INSERT INTO public.estudiante_notas VALUES (358, 159, 90, 7.50);
INSERT INTO public.estudiante_notas VALUES (359, 160, 90, 1.90);
INSERT INTO public.estudiante_notas VALUES (360, 161, 90, 7.40);
INSERT INTO public.estudiante_notas VALUES (361, 162, 91, 9.00);
INSERT INTO public.estudiante_notas VALUES (362, 163, 91, 4.00);
INSERT INTO public.estudiante_notas VALUES (363, 164, 91, 3.50);
INSERT INTO public.estudiante_notas VALUES (364, 165, 91, 2.70);
INSERT INTO public.estudiante_notas VALUES (365, 166, 92, 1.70);
INSERT INTO public.estudiante_notas VALUES (366, 167, 92, 2.30);
INSERT INTO public.estudiante_notas VALUES (367, 168, 92, 7.30);
INSERT INTO public.estudiante_notas VALUES (368, 169, 92, 2.70);
INSERT INTO public.estudiante_notas VALUES (369, 170, 93, 4.00);
INSERT INTO public.estudiante_notas VALUES (370, 171, 93, 0.30);
INSERT INTO public.estudiante_notas VALUES (371, 172, 93, 6.30);
INSERT INTO public.estudiante_notas VALUES (372, 173, 93, 4.80);
INSERT INTO public.estudiante_notas VALUES (373, 174, 94, 10.00);
INSERT INTO public.estudiante_notas VALUES (374, 175, 94, 3.90);
INSERT INTO public.estudiante_notas VALUES (375, 176, 94, 1.90);
INSERT INTO public.estudiante_notas VALUES (376, 177, 94, 1.30);
INSERT INTO public.estudiante_notas VALUES (377, 178, 95, 9.80);
INSERT INTO public.estudiante_notas VALUES (378, 179, 95, 7.10);
INSERT INTO public.estudiante_notas VALUES (379, 180, 95, 5.40);
INSERT INTO public.estudiante_notas VALUES (380, 181, 95, 3.70);
INSERT INTO public.estudiante_notas VALUES (381, 182, 96, 7.90);
INSERT INTO public.estudiante_notas VALUES (382, 183, 96, 1.40);
INSERT INTO public.estudiante_notas VALUES (383, 184, 96, 2.70);
INSERT INTO public.estudiante_notas VALUES (384, 185, 96, 7.50);
INSERT INTO public.estudiante_notas VALUES (385, 186, 97, 6.30);
INSERT INTO public.estudiante_notas VALUES (386, 187, 97, 6.90);
INSERT INTO public.estudiante_notas VALUES (387, 188, 97, 0.70);
INSERT INTO public.estudiante_notas VALUES (388, 189, 97, 3.70);
INSERT INTO public.estudiante_notas VALUES (389, 190, 98, 1.20);
INSERT INTO public.estudiante_notas VALUES (390, 191, 98, 5.20);
INSERT INTO public.estudiante_notas VALUES (391, 192, 98, 4.70);
INSERT INTO public.estudiante_notas VALUES (392, 193, 98, 0.70);
INSERT INTO public.estudiante_notas VALUES (393, 194, 99, 6.10);
INSERT INTO public.estudiante_notas VALUES (394, 195, 99, 0.20);
INSERT INTO public.estudiante_notas VALUES (395, 196, 99, 6.20);
INSERT INTO public.estudiante_notas VALUES (396, 197, 99, 8.50);
INSERT INTO public.estudiante_notas VALUES (397, 198, 100, 6.60);
INSERT INTO public.estudiante_notas VALUES (398, 199, 100, 9.90);
INSERT INTO public.estudiante_notas VALUES (399, 200, 100, 4.80);
INSERT INTO public.estudiante_notas VALUES (400, 1, 100, 8.40);


--
-- Data for Name: estudiante_pagos; Type: TABLE DATA; Schema: public; Owner: josep
--

INSERT INTO public.estudiante_pagos VALUES (1, 1, 'TRANSFERENCIA', '2025-05-24');
INSERT INTO public.estudiante_pagos VALUES (2, 2, 'TARJETA', '2025-05-24');
INSERT INTO public.estudiante_pagos VALUES (3, 3, 'EFECTIVO', '2025-05-26');
INSERT INTO public.estudiante_pagos VALUES (4, 4, 'EFECTIVO', '2025-05-05');
INSERT INTO public.estudiante_pagos VALUES (5, 5, 'TARJETA', '2025-05-27');
INSERT INTO public.estudiante_pagos VALUES (6, 6, 'EFECTIVO', '2025-05-14');
INSERT INTO public.estudiante_pagos VALUES (7, 7, 'EFECTIVO', '2025-05-22');
INSERT INTO public.estudiante_pagos VALUES (8, 8, 'BECA', '2025-05-15');
INSERT INTO public.estudiante_pagos VALUES (9, 9, 'BECA', '2025-05-16');
INSERT INTO public.estudiante_pagos VALUES (10, 10, 'TRANSFERENCIA', '2025-05-28');
INSERT INTO public.estudiante_pagos VALUES (11, 11, 'TRANSFERENCIA', '2025-05-13');
INSERT INTO public.estudiante_pagos VALUES (12, 12, 'EFECTIVO', '2025-05-19');
INSERT INTO public.estudiante_pagos VALUES (13, 13, 'BECA', '2025-05-15');
INSERT INTO public.estudiante_pagos VALUES (14, 14, 'EFECTIVO', '2025-05-09');
INSERT INTO public.estudiante_pagos VALUES (15, 15, 'TARJETA', '2025-05-18');
INSERT INTO public.estudiante_pagos VALUES (16, 16, 'TRANSFERENCIA', '2025-05-16');
INSERT INTO public.estudiante_pagos VALUES (17, 17, 'TARJETA', '2025-05-05');
INSERT INTO public.estudiante_pagos VALUES (18, 18, 'TARJETA', '2025-05-26');
INSERT INTO public.estudiante_pagos VALUES (19, 19, 'TARJETA', '2025-05-14');
INSERT INTO public.estudiante_pagos VALUES (20, 20, 'BECA', '2025-05-08');
INSERT INTO public.estudiante_pagos VALUES (21, 21, 'EFECTIVO', '2025-05-11');
INSERT INTO public.estudiante_pagos VALUES (22, 22, 'TARJETA', '2025-05-19');
INSERT INTO public.estudiante_pagos VALUES (23, 23, 'BECA', '2025-05-09');
INSERT INTO public.estudiante_pagos VALUES (24, 24, 'EFECTIVO', '2025-05-22');
INSERT INTO public.estudiante_pagos VALUES (25, 25, 'TARJETA', '2025-05-18');
INSERT INTO public.estudiante_pagos VALUES (26, 26, 'EFECTIVO', '2025-05-26');
INSERT INTO public.estudiante_pagos VALUES (27, 27, 'TRANSFERENCIA', '2025-05-09');
INSERT INTO public.estudiante_pagos VALUES (28, 28, 'TARJETA', '2025-05-11');
INSERT INTO public.estudiante_pagos VALUES (29, 29, 'TRANSFERENCIA', '2025-05-22');
INSERT INTO public.estudiante_pagos VALUES (30, 30, 'TRANSFERENCIA', '2025-06-03');
INSERT INTO public.estudiante_pagos VALUES (31, 31, 'TRANSFERENCIA', '2025-06-03');
INSERT INTO public.estudiante_pagos VALUES (32, 32, 'EFECTIVO', '2025-05-08');
INSERT INTO public.estudiante_pagos VALUES (33, 33, 'TRANSFERENCIA', '2025-05-18');
INSERT INTO public.estudiante_pagos VALUES (34, 34, 'TARJETA', '2025-05-12');
INSERT INTO public.estudiante_pagos VALUES (35, 35, 'TRANSFERENCIA', '2025-05-09');
INSERT INTO public.estudiante_pagos VALUES (36, 36, 'BECA', '2025-05-16');
INSERT INTO public.estudiante_pagos VALUES (37, 37, 'BECA', '2025-05-16');
INSERT INTO public.estudiante_pagos VALUES (38, 38, 'TRANSFERENCIA', '2025-06-01');
INSERT INTO public.estudiante_pagos VALUES (39, 39, 'EFECTIVO', '2025-05-15');
INSERT INTO public.estudiante_pagos VALUES (40, 40, 'TARJETA', '2025-05-08');
INSERT INTO public.estudiante_pagos VALUES (41, 41, 'TRANSFERENCIA', '2025-05-30');
INSERT INTO public.estudiante_pagos VALUES (42, 42, 'BECA', '2025-05-29');
INSERT INTO public.estudiante_pagos VALUES (43, 43, 'TARJETA', '2025-06-03');
INSERT INTO public.estudiante_pagos VALUES (44, 44, 'BECA', '2025-06-04');
INSERT INTO public.estudiante_pagos VALUES (45, 45, 'TRANSFERENCIA', '2025-05-06');
INSERT INTO public.estudiante_pagos VALUES (46, 46, 'BECA', '2025-05-10');
INSERT INTO public.estudiante_pagos VALUES (47, 47, 'EFECTIVO', '2025-06-02');
INSERT INTO public.estudiante_pagos VALUES (48, 48, 'TARJETA', '2025-05-30');
INSERT INTO public.estudiante_pagos VALUES (49, 49, 'BECA', '2025-05-06');
INSERT INTO public.estudiante_pagos VALUES (50, 50, 'TRANSFERENCIA', '2025-05-23');
INSERT INTO public.estudiante_pagos VALUES (51, 51, 'EFECTIVO', '2025-05-06');
INSERT INTO public.estudiante_pagos VALUES (52, 52, 'TRANSFERENCIA', '2025-05-28');
INSERT INTO public.estudiante_pagos VALUES (53, 53, 'TARJETA', '2025-06-02');
INSERT INTO public.estudiante_pagos VALUES (54, 54, 'TARJETA', '2025-05-25');
INSERT INTO public.estudiante_pagos VALUES (55, 55, 'BECA', '2025-05-21');
INSERT INTO public.estudiante_pagos VALUES (56, 56, 'TRANSFERENCIA', '2025-06-02');
INSERT INTO public.estudiante_pagos VALUES (57, 57, 'BECA', '2025-05-22');
INSERT INTO public.estudiante_pagos VALUES (58, 58, 'BECA', '2025-05-06');
INSERT INTO public.estudiante_pagos VALUES (59, 59, 'TARJETA', '2025-05-26');
INSERT INTO public.estudiante_pagos VALUES (60, 60, 'BECA', '2025-05-28');
INSERT INTO public.estudiante_pagos VALUES (61, 61, 'TARJETA', '2025-05-07');
INSERT INTO public.estudiante_pagos VALUES (62, 62, 'BECA', '2025-05-31');
INSERT INTO public.estudiante_pagos VALUES (63, 63, 'TARJETA', '2025-06-02');
INSERT INTO public.estudiante_pagos VALUES (64, 64, 'TARJETA', '2025-05-10');
INSERT INTO public.estudiante_pagos VALUES (65, 65, 'TARJETA', '2025-05-23');
INSERT INTO public.estudiante_pagos VALUES (66, 66, 'TRANSFERENCIA', '2025-05-24');
INSERT INTO public.estudiante_pagos VALUES (67, 67, 'TRANSFERENCIA', '2025-05-27');
INSERT INTO public.estudiante_pagos VALUES (68, 68, 'TARJETA', '2025-05-06');
INSERT INTO public.estudiante_pagos VALUES (69, 69, 'TRANSFERENCIA', '2025-05-25');
INSERT INTO public.estudiante_pagos VALUES (70, 70, 'EFECTIVO', '2025-05-20');
INSERT INTO public.estudiante_pagos VALUES (71, 71, 'EFECTIVO', '2025-05-05');
INSERT INTO public.estudiante_pagos VALUES (72, 72, 'TRANSFERENCIA', '2025-05-25');
INSERT INTO public.estudiante_pagos VALUES (73, 73, 'BECA', '2025-05-10');
INSERT INTO public.estudiante_pagos VALUES (74, 74, 'BECA', '2025-05-07');
INSERT INTO public.estudiante_pagos VALUES (75, 75, 'EFECTIVO', '2025-05-30');
INSERT INTO public.estudiante_pagos VALUES (76, 76, 'EFECTIVO', '2025-05-10');
INSERT INTO public.estudiante_pagos VALUES (77, 77, 'BECA', '2025-05-27');
INSERT INTO public.estudiante_pagos VALUES (78, 78, 'EFECTIVO', '2025-05-31');
INSERT INTO public.estudiante_pagos VALUES (79, 79, 'BECA', '2025-05-08');
INSERT INTO public.estudiante_pagos VALUES (80, 80, 'BECA', '2025-05-21');
INSERT INTO public.estudiante_pagos VALUES (81, 81, 'TRANSFERENCIA', '2025-05-09');
INSERT INTO public.estudiante_pagos VALUES (82, 82, 'EFECTIVO', '2025-05-24');
INSERT INTO public.estudiante_pagos VALUES (83, 83, 'TRANSFERENCIA', '2025-06-03');
INSERT INTO public.estudiante_pagos VALUES (84, 84, 'TRANSFERENCIA', '2025-05-20');
INSERT INTO public.estudiante_pagos VALUES (85, 85, 'BECA', '2025-05-10');
INSERT INTO public.estudiante_pagos VALUES (86, 86, 'TRANSFERENCIA', '2025-05-08');
INSERT INTO public.estudiante_pagos VALUES (87, 87, 'BECA', '2025-05-30');
INSERT INTO public.estudiante_pagos VALUES (88, 88, 'TRANSFERENCIA', '2025-05-21');
INSERT INTO public.estudiante_pagos VALUES (89, 89, 'BECA', '2025-05-30');
INSERT INTO public.estudiante_pagos VALUES (90, 90, 'BECA', '2025-05-26');
INSERT INTO public.estudiante_pagos VALUES (91, 91, 'BECA', '2025-05-26');
INSERT INTO public.estudiante_pagos VALUES (92, 92, 'EFECTIVO', '2025-06-04');
INSERT INTO public.estudiante_pagos VALUES (93, 93, 'TARJETA', '2025-05-22');
INSERT INTO public.estudiante_pagos VALUES (94, 94, 'BECA', '2025-05-21');
INSERT INTO public.estudiante_pagos VALUES (95, 95, 'TARJETA', '2025-05-31');
INSERT INTO public.estudiante_pagos VALUES (96, 96, 'TARJETA', '2025-05-25');
INSERT INTO public.estudiante_pagos VALUES (97, 97, 'BECA', '2025-05-26');
INSERT INTO public.estudiante_pagos VALUES (98, 98, 'TARJETA', '2025-05-26');
INSERT INTO public.estudiante_pagos VALUES (99, 99, 'BECA', '2025-06-02');
INSERT INTO public.estudiante_pagos VALUES (100, 100, 'TARJETA', '2025-05-29');
INSERT INTO public.estudiante_pagos VALUES (101, 101, 'BECA', '2025-05-12');
INSERT INTO public.estudiante_pagos VALUES (102, 102, 'BECA', '2025-05-25');
INSERT INTO public.estudiante_pagos VALUES (103, 103, 'EFECTIVO', '2025-06-02');
INSERT INTO public.estudiante_pagos VALUES (104, 104, 'EFECTIVO', '2025-05-16');
INSERT INTO public.estudiante_pagos VALUES (105, 105, 'BECA', '2025-05-08');
INSERT INTO public.estudiante_pagos VALUES (106, 106, 'BECA', '2025-05-29');
INSERT INTO public.estudiante_pagos VALUES (107, 107, 'TRANSFERENCIA', '2025-05-20');
INSERT INTO public.estudiante_pagos VALUES (108, 108, 'BECA', '2025-05-24');
INSERT INTO public.estudiante_pagos VALUES (109, 109, 'EFECTIVO', '2025-05-24');
INSERT INTO public.estudiante_pagos VALUES (110, 110, 'BECA', '2025-05-27');
INSERT INTO public.estudiante_pagos VALUES (111, 111, 'EFECTIVO', '2025-05-13');
INSERT INTO public.estudiante_pagos VALUES (112, 112, 'EFECTIVO', '2025-05-26');
INSERT INTO public.estudiante_pagos VALUES (113, 113, 'TRANSFERENCIA', '2025-05-08');
INSERT INTO public.estudiante_pagos VALUES (114, 114, 'EFECTIVO', '2025-05-07');
INSERT INTO public.estudiante_pagos VALUES (115, 115, 'TRANSFERENCIA', '2025-05-06');
INSERT INTO public.estudiante_pagos VALUES (116, 116, 'BECA', '2025-05-28');
INSERT INTO public.estudiante_pagos VALUES (117, 117, 'EFECTIVO', '2025-05-08');
INSERT INTO public.estudiante_pagos VALUES (118, 118, 'BECA', '2025-05-29');
INSERT INTO public.estudiante_pagos VALUES (119, 119, 'TRANSFERENCIA', '2025-05-09');
INSERT INTO public.estudiante_pagos VALUES (120, 120, 'EFECTIVO', '2025-05-15');
INSERT INTO public.estudiante_pagos VALUES (121, 121, 'EFECTIVO', '2025-05-28');
INSERT INTO public.estudiante_pagos VALUES (122, 122, 'TARJETA', '2025-05-11');
INSERT INTO public.estudiante_pagos VALUES (123, 123, 'TRANSFERENCIA', '2025-05-28');
INSERT INTO public.estudiante_pagos VALUES (124, 124, 'TARJETA', '2025-05-21');
INSERT INTO public.estudiante_pagos VALUES (125, 125, 'TARJETA', '2025-05-30');
INSERT INTO public.estudiante_pagos VALUES (126, 126, 'TARJETA', '2025-05-05');
INSERT INTO public.estudiante_pagos VALUES (127, 127, 'TRANSFERENCIA', '2025-05-24');
INSERT INTO public.estudiante_pagos VALUES (128, 128, 'TARJETA', '2025-05-23');
INSERT INTO public.estudiante_pagos VALUES (129, 129, 'TRANSFERENCIA', '2025-06-01');
INSERT INTO public.estudiante_pagos VALUES (130, 130, 'EFECTIVO', '2025-06-03');
INSERT INTO public.estudiante_pagos VALUES (131, 131, 'BECA', '2025-05-20');
INSERT INTO public.estudiante_pagos VALUES (132, 132, 'TARJETA', '2025-05-09');
INSERT INTO public.estudiante_pagos VALUES (133, 133, 'TARJETA', '2025-05-14');
INSERT INTO public.estudiante_pagos VALUES (134, 134, 'EFECTIVO', '2025-05-19');
INSERT INTO public.estudiante_pagos VALUES (135, 135, 'TARJETA', '2025-05-28');
INSERT INTO public.estudiante_pagos VALUES (136, 136, 'EFECTIVO', '2025-05-05');
INSERT INTO public.estudiante_pagos VALUES (137, 137, 'EFECTIVO', '2025-05-13');
INSERT INTO public.estudiante_pagos VALUES (138, 138, 'TRANSFERENCIA', '2025-05-10');
INSERT INTO public.estudiante_pagos VALUES (139, 139, 'BECA', '2025-05-19');
INSERT INTO public.estudiante_pagos VALUES (140, 140, 'EFECTIVO', '2025-06-03');
INSERT INTO public.estudiante_pagos VALUES (141, 141, 'BECA', '2025-05-21');
INSERT INTO public.estudiante_pagos VALUES (142, 142, 'TRANSFERENCIA', '2025-05-24');
INSERT INTO public.estudiante_pagos VALUES (143, 143, 'EFECTIVO', '2025-05-06');
INSERT INTO public.estudiante_pagos VALUES (144, 144, 'EFECTIVO', '2025-06-02');
INSERT INTO public.estudiante_pagos VALUES (145, 145, 'EFECTIVO', '2025-05-24');
INSERT INTO public.estudiante_pagos VALUES (146, 146, 'TRANSFERENCIA', '2025-05-19');
INSERT INTO public.estudiante_pagos VALUES (147, 147, 'BECA', '2025-05-26');
INSERT INTO public.estudiante_pagos VALUES (148, 148, 'BECA', '2025-05-29');
INSERT INTO public.estudiante_pagos VALUES (149, 149, 'TARJETA', '2025-05-16');
INSERT INTO public.estudiante_pagos VALUES (150, 150, 'EFECTIVO', '2025-05-26');
INSERT INTO public.estudiante_pagos VALUES (151, 151, 'BECA', '2025-05-09');
INSERT INTO public.estudiante_pagos VALUES (152, 152, 'BECA', '2025-05-09');
INSERT INTO public.estudiante_pagos VALUES (153, 153, 'EFECTIVO', '2025-05-10');
INSERT INTO public.estudiante_pagos VALUES (154, 154, 'EFECTIVO', '2025-06-03');
INSERT INTO public.estudiante_pagos VALUES (155, 155, 'TRANSFERENCIA', '2025-05-10');
INSERT INTO public.estudiante_pagos VALUES (156, 156, 'EFECTIVO', '2025-05-09');
INSERT INTO public.estudiante_pagos VALUES (157, 157, 'TRANSFERENCIA', '2025-05-15');
INSERT INTO public.estudiante_pagos VALUES (158, 158, 'BECA', '2025-05-10');
INSERT INTO public.estudiante_pagos VALUES (159, 159, 'TARJETA', '2025-05-22');
INSERT INTO public.estudiante_pagos VALUES (160, 160, 'TRANSFERENCIA', '2025-05-27');
INSERT INTO public.estudiante_pagos VALUES (161, 161, 'BECA', '2025-05-28');
INSERT INTO public.estudiante_pagos VALUES (162, 162, 'EFECTIVO', '2025-05-14');
INSERT INTO public.estudiante_pagos VALUES (163, 163, 'TARJETA', '2025-05-31');
INSERT INTO public.estudiante_pagos VALUES (164, 164, 'EFECTIVO', '2025-05-22');
INSERT INTO public.estudiante_pagos VALUES (165, 165, 'TARJETA', '2025-05-15');
INSERT INTO public.estudiante_pagos VALUES (166, 166, 'TRANSFERENCIA', '2025-05-24');
INSERT INTO public.estudiante_pagos VALUES (167, 167, 'EFECTIVO', '2025-05-08');
INSERT INTO public.estudiante_pagos VALUES (168, 168, 'EFECTIVO', '2025-05-20');
INSERT INTO public.estudiante_pagos VALUES (169, 169, 'TARJETA', '2025-05-29');
INSERT INTO public.estudiante_pagos VALUES (170, 170, 'EFECTIVO', '2025-05-23');
INSERT INTO public.estudiante_pagos VALUES (171, 171, 'TRANSFERENCIA', '2025-05-17');
INSERT INTO public.estudiante_pagos VALUES (172, 172, 'BECA', '2025-05-18');
INSERT INTO public.estudiante_pagos VALUES (173, 173, 'BECA', '2025-05-11');
INSERT INTO public.estudiante_pagos VALUES (174, 174, 'TARJETA', '2025-05-12');
INSERT INTO public.estudiante_pagos VALUES (175, 175, 'EFECTIVO', '2025-05-08');
INSERT INTO public.estudiante_pagos VALUES (176, 176, 'TRANSFERENCIA', '2025-05-14');
INSERT INTO public.estudiante_pagos VALUES (177, 177, 'TARJETA', '2025-05-10');
INSERT INTO public.estudiante_pagos VALUES (178, 178, 'TRANSFERENCIA', '2025-05-06');
INSERT INTO public.estudiante_pagos VALUES (179, 179, 'BECA', '2025-05-22');
INSERT INTO public.estudiante_pagos VALUES (180, 180, 'TRANSFERENCIA', '2025-05-24');
INSERT INTO public.estudiante_pagos VALUES (181, 181, 'TRANSFERENCIA', '2025-06-01');
INSERT INTO public.estudiante_pagos VALUES (182, 182, 'EFECTIVO', '2025-05-09');
INSERT INTO public.estudiante_pagos VALUES (183, 183, 'TARJETA', '2025-05-19');
INSERT INTO public.estudiante_pagos VALUES (184, 184, 'TRANSFERENCIA', '2025-05-27');
INSERT INTO public.estudiante_pagos VALUES (185, 185, 'BECA', '2025-05-29');
INSERT INTO public.estudiante_pagos VALUES (186, 186, 'EFECTIVO', '2025-05-11');
INSERT INTO public.estudiante_pagos VALUES (187, 187, 'EFECTIVO', '2025-05-05');
INSERT INTO public.estudiante_pagos VALUES (188, 188, 'TARJETA', '2025-05-10');
INSERT INTO public.estudiante_pagos VALUES (189, 189, 'TARJETA', '2025-05-15');
INSERT INTO public.estudiante_pagos VALUES (190, 190, 'TRANSFERENCIA', '2025-05-18');
INSERT INTO public.estudiante_pagos VALUES (191, 191, 'TARJETA', '2025-05-14');
INSERT INTO public.estudiante_pagos VALUES (192, 192, 'TARJETA', '2025-05-28');
INSERT INTO public.estudiante_pagos VALUES (193, 193, 'BECA', '2025-05-31');
INSERT INTO public.estudiante_pagos VALUES (194, 194, 'BECA', '2025-05-16');
INSERT INTO public.estudiante_pagos VALUES (195, 195, 'TRANSFERENCIA', '2025-05-20');
INSERT INTO public.estudiante_pagos VALUES (196, 196, 'EFECTIVO', '2025-05-21');
INSERT INTO public.estudiante_pagos VALUES (197, 197, 'TARJETA', '2025-05-30');
INSERT INTO public.estudiante_pagos VALUES (198, 198, 'TARJETA', '2025-06-03');
INSERT INTO public.estudiante_pagos VALUES (199, 199, 'TRANSFERENCIA', '2025-05-28');
INSERT INTO public.estudiante_pagos VALUES (200, 200, 'TARJETA', '2025-05-23');


--
-- Data for Name: estudiante_secciones; Type: TABLE DATA; Schema: public; Owner: josep
--

INSERT INTO public.estudiante_secciones VALUES (1, 1, 2, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (2, 2, 3, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (3, 3, 4, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (4, 4, 5, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (5, 5, 6, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (6, 6, 7, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (7, 7, 8, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (8, 8, 9, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (9, 9, 10, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (10, 10, 11, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (11, 11, 12, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (12, 12, 13, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (13, 13, 14, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (14, 14, 15, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (15, 15, 16, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (16, 16, 17, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (17, 17, 18, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (18, 18, 19, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (19, 19, 20, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (20, 20, 1, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (21, 21, 2, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (22, 22, 3, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (23, 23, 4, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (24, 24, 5, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (25, 25, 6, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (26, 26, 7, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (27, 27, 8, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (28, 28, 9, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (29, 29, 10, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (30, 30, 11, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (31, 31, 12, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (32, 32, 13, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (33, 33, 14, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (34, 34, 15, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (35, 35, 16, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (36, 36, 17, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (37, 37, 18, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (38, 38, 19, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (39, 39, 20, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (40, 40, 1, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (41, 41, 2, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (42, 42, 3, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (43, 43, 4, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (44, 44, 5, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (45, 45, 6, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (46, 46, 7, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (47, 47, 8, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (48, 48, 9, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (49, 49, 10, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (50, 50, 11, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (51, 51, 12, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (52, 52, 13, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (53, 53, 14, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (54, 54, 15, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (55, 55, 16, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (56, 56, 17, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (57, 57, 18, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (58, 58, 19, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (59, 59, 20, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (60, 60, 1, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (61, 61, 2, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (62, 62, 3, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (63, 63, 4, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (64, 64, 5, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (65, 65, 6, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (66, 66, 7, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (67, 67, 8, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (68, 68, 9, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (69, 69, 10, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (70, 70, 11, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (71, 71, 12, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (72, 72, 13, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (73, 73, 14, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (74, 74, 15, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (75, 75, 16, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (76, 76, 17, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (77, 77, 18, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (78, 78, 19, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (79, 79, 20, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (80, 80, 1, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (81, 81, 2, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (82, 82, 3, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (83, 83, 4, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (84, 84, 5, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (85, 85, 6, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (86, 86, 7, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (87, 87, 8, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (88, 88, 9, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (89, 89, 10, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (90, 90, 11, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (91, 91, 12, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (92, 92, 13, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (93, 93, 14, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (94, 94, 15, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (95, 95, 16, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (96, 96, 17, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (97, 97, 18, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (98, 98, 19, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (99, 99, 20, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (100, 100, 1, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (101, 101, 2, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (102, 102, 3, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (103, 103, 4, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (104, 104, 5, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (105, 105, 6, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (106, 106, 7, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (107, 107, 8, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (108, 108, 9, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (109, 109, 10, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (110, 110, 11, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (111, 111, 12, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (112, 112, 13, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (113, 113, 14, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (114, 114, 15, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (115, 115, 16, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (116, 116, 17, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (117, 117, 18, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (118, 118, 19, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (119, 119, 20, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (120, 120, 1, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (121, 121, 2, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (122, 122, 3, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (123, 123, 4, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (124, 124, 5, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (125, 125, 6, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (126, 126, 7, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (127, 127, 8, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (128, 128, 9, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (129, 129, 10, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (130, 130, 11, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (131, 131, 12, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (132, 132, 13, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (133, 133, 14, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (134, 134, 15, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (135, 135, 16, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (136, 136, 17, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (137, 137, 18, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (138, 138, 19, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (139, 139, 20, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (140, 140, 1, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (141, 141, 2, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (142, 142, 3, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (143, 143, 4, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (144, 144, 5, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (145, 145, 6, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (146, 146, 7, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (147, 147, 8, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (148, 148, 9, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (149, 149, 10, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (150, 150, 11, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (151, 151, 12, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (152, 152, 13, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (153, 153, 14, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (154, 154, 15, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (155, 155, 16, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (156, 156, 17, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (157, 157, 18, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (158, 158, 19, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (159, 159, 20, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (160, 160, 1, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (161, 161, 2, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (162, 162, 3, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (163, 163, 4, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (164, 164, 5, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (165, 165, 6, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (166, 166, 7, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (167, 167, 8, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (168, 168, 9, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (169, 169, 10, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (170, 170, 11, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (171, 171, 12, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (172, 172, 13, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (173, 173, 14, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (174, 174, 15, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (175, 175, 16, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (176, 176, 17, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (177, 177, 18, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (178, 178, 19, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (179, 179, 20, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (180, 180, 1, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (181, 181, 2, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (182, 182, 3, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (183, 183, 4, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (184, 184, 5, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (185, 185, 6, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (186, 186, 7, 'RETIRADO');
INSERT INTO public.estudiante_secciones VALUES (187, 187, 8, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (188, 188, 9, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (189, 189, 10, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (190, 190, 11, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (191, 191, 12, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (192, 192, 13, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (193, 193, 14, 'APROBADO');
INSERT INTO public.estudiante_secciones VALUES (194, 194, 15, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (195, 195, 16, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (196, 196, 17, 'REPROBADO');
INSERT INTO public.estudiante_secciones VALUES (197, 197, 18, 'CURSANDO');
INSERT INTO public.estudiante_secciones VALUES (198, 198, 19, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (199, 199, 20, 'INSCRITO');
INSERT INTO public.estudiante_secciones VALUES (200, 200, 1, 'CURSANDO');


--
-- Data for Name: horarios; Type: TABLE DATA; Schema: public; Owner: josep
--

INSERT INTO public.horarios VALUES (1, 1, 'MARTES', '09:00:00', '11:00:00');
INSERT INTO public.horarios VALUES (2, 1, 'MIERCOLES', '10:00:00', '12:00:00');
INSERT INTO public.horarios VALUES (3, 2, 'JUEVES', '11:00:00', '13:00:00');
INSERT INTO public.horarios VALUES (4, 2, 'VIERNES', '12:00:00', '14:00:00');
INSERT INTO public.horarios VALUES (5, 3, 'SABADO', '13:00:00', '15:00:00');
INSERT INTO public.horarios VALUES (6, 3, 'LUNES', '14:00:00', '16:00:00');
INSERT INTO public.horarios VALUES (7, 4, 'MARTES', '15:00:00', '17:00:00');
INSERT INTO public.horarios VALUES (8, 4, 'MIERCOLES', '08:00:00', '10:00:00');
INSERT INTO public.horarios VALUES (9, 5, 'JUEVES', '09:00:00', '11:00:00');
INSERT INTO public.horarios VALUES (10, 5, 'VIERNES', '10:00:00', '12:00:00');
INSERT INTO public.horarios VALUES (11, 6, 'SABADO', '11:00:00', '13:00:00');
INSERT INTO public.horarios VALUES (12, 6, 'LUNES', '12:00:00', '14:00:00');
INSERT INTO public.horarios VALUES (13, 7, 'MARTES', '13:00:00', '15:00:00');
INSERT INTO public.horarios VALUES (14, 7, 'MIERCOLES', '14:00:00', '16:00:00');
INSERT INTO public.horarios VALUES (15, 8, 'JUEVES', '15:00:00', '17:00:00');
INSERT INTO public.horarios VALUES (16, 8, 'VIERNES', '08:00:00', '10:00:00');
INSERT INTO public.horarios VALUES (17, 9, 'SABADO', '09:00:00', '11:00:00');
INSERT INTO public.horarios VALUES (18, 9, 'LUNES', '10:00:00', '12:00:00');
INSERT INTO public.horarios VALUES (19, 10, 'MARTES', '11:00:00', '13:00:00');
INSERT INTO public.horarios VALUES (20, 10, 'MIERCOLES', '12:00:00', '14:00:00');
INSERT INTO public.horarios VALUES (21, 11, 'JUEVES', '13:00:00', '15:00:00');
INSERT INTO public.horarios VALUES (22, 11, 'VIERNES', '14:00:00', '16:00:00');
INSERT INTO public.horarios VALUES (23, 12, 'SABADO', '15:00:00', '17:00:00');
INSERT INTO public.horarios VALUES (24, 12, 'LUNES', '08:00:00', '10:00:00');
INSERT INTO public.horarios VALUES (25, 13, 'MARTES', '09:00:00', '11:00:00');
INSERT INTO public.horarios VALUES (26, 13, 'MIERCOLES', '10:00:00', '12:00:00');
INSERT INTO public.horarios VALUES (27, 14, 'JUEVES', '11:00:00', '13:00:00');
INSERT INTO public.horarios VALUES (28, 14, 'VIERNES', '12:00:00', '14:00:00');
INSERT INTO public.horarios VALUES (29, 15, 'SABADO', '13:00:00', '15:00:00');
INSERT INTO public.horarios VALUES (30, 15, 'LUNES', '14:00:00', '16:00:00');
INSERT INTO public.horarios VALUES (31, 16, 'MARTES', '15:00:00', '17:00:00');
INSERT INTO public.horarios VALUES (32, 16, 'MIERCOLES', '08:00:00', '10:00:00');
INSERT INTO public.horarios VALUES (33, 17, 'JUEVES', '09:00:00', '11:00:00');
INSERT INTO public.horarios VALUES (34, 17, 'VIERNES', '10:00:00', '12:00:00');
INSERT INTO public.horarios VALUES (35, 18, 'SABADO', '11:00:00', '13:00:00');
INSERT INTO public.horarios VALUES (36, 18, 'LUNES', '12:00:00', '14:00:00');
INSERT INTO public.horarios VALUES (37, 19, 'MARTES', '13:00:00', '15:00:00');
INSERT INTO public.horarios VALUES (38, 19, 'MIERCOLES', '14:00:00', '16:00:00');
INSERT INTO public.horarios VALUES (39, 20, 'JUEVES', '15:00:00', '17:00:00');
INSERT INTO public.horarios VALUES (40, 20, 'VIERNES', '08:00:00', '10:00:00');


--
-- Data for Name: libros; Type: TABLE DATA; Schema: public; Owner: josep
--

INSERT INTO public.libros VALUES (1, 1, 'concido cubo calamitas', 2, 2007);
INSERT INTO public.libros VALUES (2, 2, 'adsidue tribuo benevolentia', 3, 2004);
INSERT INTO public.libros VALUES (3, 3, 'terga accedo vulnus', 4, 2014);
INSERT INTO public.libros VALUES (4, 4, 'canonicus auctor necessitatibus', 5, 2013);
INSERT INTO public.libros VALUES (5, 5, 'auctor alter cometes', 6, 2021);
INSERT INTO public.libros VALUES (6, 6, 'amita tabgo animadverto', 7, 2023);
INSERT INTO public.libros VALUES (7, 7, 'tripudio asporto utilis', 8, 2017);
INSERT INTO public.libros VALUES (8, 8, 'conqueror textilis vereor', 9, 2020);
INSERT INTO public.libros VALUES (9, 9, 'sopor quidem talis', 10, 2007);
INSERT INTO public.libros VALUES (10, 10, 'ante iure vis', 1, 2018);
INSERT INTO public.libros VALUES (11, 11, 'pecco suscipio tunc', 2, 2003);
INSERT INTO public.libros VALUES (12, 12, 'altus capto socius', 3, 2004);
INSERT INTO public.libros VALUES (13, 13, 'adipisci nulla thorax', 4, 2019);
INSERT INTO public.libros VALUES (14, 14, 'consuasor combibo apostolus', 5, 2018);
INSERT INTO public.libros VALUES (15, 15, 'ullam balbus creo', 6, 2007);
INSERT INTO public.libros VALUES (16, 16, 'sequi ocer dignissimos', 7, 2001);
INSERT INTO public.libros VALUES (17, 17, 'veniam aegrotatio arcus', 8, 2021);
INSERT INTO public.libros VALUES (18, 18, 'odio averto autem', 9, 2007);
INSERT INTO public.libros VALUES (19, 19, 'facilis odit coma', 10, 2022);
INSERT INTO public.libros VALUES (20, 20, 'truculenter aliquam stabilis', 1, 2006);
INSERT INTO public.libros VALUES (21, 21, 'trucido aspernatur vapulus', 2, 2021);
INSERT INTO public.libros VALUES (22, 22, 'nulla utrimque vilitas', 3, 2013);
INSERT INTO public.libros VALUES (23, 23, 'cohaero atrocitas aureus', 4, 2005);
INSERT INTO public.libros VALUES (24, 24, 'barba abutor vox', 5, 2008);
INSERT INTO public.libros VALUES (25, 25, 'incidunt carbo voluptas', 6, 2008);


--
-- Data for Name: prestamos; Type: TABLE DATA; Schema: public; Owner: josep
--

INSERT INTO public.prestamos VALUES (1, 1, 'VENCIDO', '2025-05-06', NULL);
INSERT INTO public.prestamos VALUES (2, 2, 'DEVUELTO', '2025-05-30', '2025-06-06');
INSERT INTO public.prestamos VALUES (3, 3, 'DEVUELTO', '2025-05-17', '2025-05-25');
INSERT INTO public.prestamos VALUES (4, 4, 'VENCIDO', '2025-05-21', NULL);
INSERT INTO public.prestamos VALUES (5, 5, 'VENCIDO', '2025-05-21', NULL);
INSERT INTO public.prestamos VALUES (6, 6, 'DEVUELTO', '2025-05-14', '2025-05-24');
INSERT INTO public.prestamos VALUES (7, 7, 'VENCIDO', '2025-05-23', NULL);
INSERT INTO public.prestamos VALUES (8, 8, 'DEVUELTO', '2025-05-13', '2025-05-23');
INSERT INTO public.prestamos VALUES (9, 9, 'VENCIDO', '2025-05-18', NULL);
INSERT INTO public.prestamos VALUES (10, 10, 'VENCIDO', '2025-05-22', NULL);
INSERT INTO public.prestamos VALUES (11, 11, 'VENCIDO', '2025-05-28', NULL);
INSERT INTO public.prestamos VALUES (12, 12, 'DEVUELTO', '2025-05-31', '2025-06-13');
INSERT INTO public.prestamos VALUES (13, 13, 'DEVUELTO', '2025-05-16', '2025-05-19');
INSERT INTO public.prestamos VALUES (14, 14, 'VENCIDO', '2025-05-08', NULL);
INSERT INTO public.prestamos VALUES (15, 15, 'DEVUELTO', '2025-05-24', '2025-06-04');
INSERT INTO public.prestamos VALUES (16, 16, 'VENCIDO', '2025-05-12', NULL);
INSERT INTO public.prestamos VALUES (17, 17, 'DEVUELTO', '2025-05-16', '2025-05-28');
INSERT INTO public.prestamos VALUES (18, 18, 'VENCIDO', '2025-05-14', NULL);
INSERT INTO public.prestamos VALUES (19, 19, 'DEVUELTO', '2025-05-09', '2025-05-10');
INSERT INTO public.prestamos VALUES (20, 20, 'VENCIDO', '2025-06-01', NULL);
INSERT INTO public.prestamos VALUES (21, 21, 'DEVUELTO', '2025-05-26', '2025-05-31');
INSERT INTO public.prestamos VALUES (22, 22, 'VENCIDO', '2025-05-05', NULL);
INSERT INTO public.prestamos VALUES (23, 23, 'VENCIDO', '2025-05-20', NULL);
INSERT INTO public.prestamos VALUES (24, 24, 'VENCIDO', '2025-05-15', NULL);
INSERT INTO public.prestamos VALUES (25, 25, 'VENCIDO', '2025-05-16', NULL);
INSERT INTO public.prestamos VALUES (26, 26, 'DEVUELTO', '2025-05-13', '2025-05-19');
INSERT INTO public.prestamos VALUES (27, 27, 'VENCIDO', '2025-06-01', NULL);
INSERT INTO public.prestamos VALUES (28, 28, 'DEVUELTO', '2025-05-27', '2025-05-30');
INSERT INTO public.prestamos VALUES (29, 29, 'VENCIDO', '2025-05-06', NULL);
INSERT INTO public.prestamos VALUES (30, 30, 'DEVUELTO', '2025-05-21', '2025-06-05');
INSERT INTO public.prestamos VALUES (31, 31, 'DEVUELTO', '2025-05-08', '2025-05-22');
INSERT INTO public.prestamos VALUES (32, 32, 'DEVUELTO', '2025-05-30', '2025-06-09');
INSERT INTO public.prestamos VALUES (33, 33, 'VENCIDO', '2025-05-23', NULL);
INSERT INTO public.prestamos VALUES (34, 34, 'DEVUELTO', '2025-06-03', '2025-06-11');
INSERT INTO public.prestamos VALUES (35, 35, 'VENCIDO', '2025-05-20', NULL);
INSERT INTO public.prestamos VALUES (36, 36, 'VENCIDO', '2025-05-10', NULL);
INSERT INTO public.prestamos VALUES (37, 37, 'VENCIDO', '2025-05-15', NULL);
INSERT INTO public.prestamos VALUES (38, 38, 'VENCIDO', '2025-05-16', NULL);
INSERT INTO public.prestamos VALUES (39, 39, 'VENCIDO', '2025-06-01', NULL);
INSERT INTO public.prestamos VALUES (40, 40, 'VENCIDO', '2025-05-12', NULL);
INSERT INTO public.prestamos VALUES (41, 41, 'VENCIDO', '2025-05-12', NULL);
INSERT INTO public.prestamos VALUES (42, 42, 'DEVUELTO', '2025-05-21', '2025-06-03');
INSERT INTO public.prestamos VALUES (43, 43, 'VENCIDO', '2025-05-26', NULL);
INSERT INTO public.prestamos VALUES (44, 44, 'VENCIDO', '2025-05-16', NULL);
INSERT INTO public.prestamos VALUES (45, 45, 'DEVUELTO', '2025-05-22', '2025-06-02');
INSERT INTO public.prestamos VALUES (46, 46, 'VENCIDO', '2025-05-29', NULL);
INSERT INTO public.prestamos VALUES (47, 47, 'VENCIDO', '2025-05-19', NULL);
INSERT INTO public.prestamos VALUES (48, 48, 'VENCIDO', '2025-05-14', NULL);
INSERT INTO public.prestamos VALUES (49, 49, 'DEVUELTO', '2025-05-23', '2025-06-04');
INSERT INTO public.prestamos VALUES (50, 50, 'DEVUELTO', '2025-05-27', '2025-05-29');


--
-- Data for Name: salones_biblioteca; Type: TABLE DATA; Schema: public; Owner: josep
--

INSERT INTO public.salones_biblioteca VALUES (1, 'Sala A', 10);
INSERT INTO public.salones_biblioteca VALUES (2, 'Sala B', 20);
INSERT INTO public.salones_biblioteca VALUES (3, 'Sala C', 30);
INSERT INTO public.salones_biblioteca VALUES (4, 'Sala D', 40);
INSERT INTO public.salones_biblioteca VALUES (5, 'Sala E', 50);


--
-- Data for Name: reservas; Type: TABLE DATA; Schema: public; Owner: josep
--

INSERT INTO public.reservas VALUES (1, 2, 2, '2025-07-01', '15:00:00', '17:00:00');
INSERT INTO public.reservas VALUES (2, 3, 3, '2025-06-16', '16:00:00', '18:00:00');
INSERT INTO public.reservas VALUES (3, 4, 4, '2025-06-30', '17:00:00', '19:00:00');
INSERT INTO public.reservas VALUES (4, 5, 5, '2025-06-06', '18:00:00', '20:00:00');
INSERT INTO public.reservas VALUES (5, 1, 6, '2025-06-10', '19:00:00', '21:00:00');
INSERT INTO public.reservas VALUES (6, 2, 7, '2025-06-19', '20:00:00', '22:00:00');
INSERT INTO public.reservas VALUES (7, 3, 8, '2025-06-24', '21:00:00', '23:00:00');
INSERT INTO public.reservas VALUES (8, 4, 9, '2025-06-15', '14:00:00', '16:00:00');
INSERT INTO public.reservas VALUES (9, 5, 10, '2025-06-18', '15:00:00', '17:00:00');
INSERT INTO public.reservas VALUES (10, 1, 11, '2025-06-05', '16:00:00', '18:00:00');
INSERT INTO public.reservas VALUES (11, 2, 12, '2025-06-09', '17:00:00', '19:00:00');
INSERT INTO public.reservas VALUES (12, 3, 13, '2025-06-23', '18:00:00', '20:00:00');
INSERT INTO public.reservas VALUES (13, 4, 14, '2025-06-20', '19:00:00', '21:00:00');
INSERT INTO public.reservas VALUES (14, 5, 15, '2025-06-11', '20:00:00', '22:00:00');
INSERT INTO public.reservas VALUES (15, 1, 16, '2025-06-24', '21:00:00', '23:00:00');
INSERT INTO public.reservas VALUES (16, 2, 17, '2025-07-03', '14:00:00', '16:00:00');
INSERT INTO public.reservas VALUES (17, 3, 18, '2025-07-03', '15:00:00', '17:00:00');
INSERT INTO public.reservas VALUES (18, 4, 19, '2025-06-08', '16:00:00', '18:00:00');
INSERT INTO public.reservas VALUES (19, 5, 20, '2025-06-08', '17:00:00', '19:00:00');
INSERT INTO public.reservas VALUES (20, 1, 21, '2025-06-12', '18:00:00', '20:00:00');
INSERT INTO public.reservas VALUES (21, 2, 22, '2025-06-16', '19:00:00', '21:00:00');
INSERT INTO public.reservas VALUES (22, 3, 23, '2025-06-27', '20:00:00', '22:00:00');
INSERT INTO public.reservas VALUES (23, 4, 24, '2025-06-12', '21:00:00', '23:00:00');
INSERT INTO public.reservas VALUES (24, 5, 25, '2025-06-29', '14:00:00', '16:00:00');
INSERT INTO public.reservas VALUES (25, 1, 26, '2025-06-15', '15:00:00', '17:00:00');
INSERT INTO public.reservas VALUES (26, 2, 27, '2025-06-07', '16:00:00', '18:00:00');
INSERT INTO public.reservas VALUES (27, 3, 28, '2025-06-26', '17:00:00', '19:00:00');
INSERT INTO public.reservas VALUES (28, 4, 29, '2025-06-04', '18:00:00', '20:00:00');
INSERT INTO public.reservas VALUES (29, 5, 30, '2025-06-13', '19:00:00', '21:00:00');
INSERT INTO public.reservas VALUES (30, 1, 31, '2025-06-24', '20:00:00', '22:00:00');
INSERT INTO public.reservas VALUES (31, 2, 32, '2025-06-06', '21:00:00', '23:00:00');
INSERT INTO public.reservas VALUES (32, 3, 33, '2025-07-01', '14:00:00', '16:00:00');
INSERT INTO public.reservas VALUES (33, 4, 34, '2025-06-21', '15:00:00', '17:00:00');
INSERT INTO public.reservas VALUES (34, 5, 35, '2025-07-01', '16:00:00', '18:00:00');
INSERT INTO public.reservas VALUES (35, 1, 36, '2025-06-25', '17:00:00', '19:00:00');
INSERT INTO public.reservas VALUES (36, 2, 37, '2025-06-25', '18:00:00', '20:00:00');
INSERT INTO public.reservas VALUES (37, 3, 38, '2025-06-08', '19:00:00', '21:00:00');
INSERT INTO public.reservas VALUES (38, 4, 39, '2025-07-02', '20:00:00', '22:00:00');
INSERT INTO public.reservas VALUES (39, 5, 40, '2025-06-07', '21:00:00', '23:00:00');
INSERT INTO public.reservas VALUES (40, 1, 41, '2025-06-14', '14:00:00', '16:00:00');
INSERT INTO public.reservas VALUES (41, 2, 42, '2025-06-11', '15:00:00', '17:00:00');
INSERT INTO public.reservas VALUES (42, 3, 43, '2025-06-06', '16:00:00', '18:00:00');
INSERT INTO public.reservas VALUES (43, 4, 44, '2025-07-03', '17:00:00', '19:00:00');
INSERT INTO public.reservas VALUES (44, 5, 45, '2025-06-19', '18:00:00', '20:00:00');
INSERT INTO public.reservas VALUES (45, 1, 46, '2025-06-07', '19:00:00', '21:00:00');
INSERT INTO public.reservas VALUES (46, 2, 47, '2025-06-13', '20:00:00', '22:00:00');
INSERT INTO public.reservas VALUES (47, 3, 48, '2025-06-15', '21:00:00', '23:00:00');
INSERT INTO public.reservas VALUES (48, 4, 49, '2025-06-22', '14:00:00', '16:00:00');
INSERT INTO public.reservas VALUES (49, 5, 50, '2025-07-03', '15:00:00', '17:00:00');
INSERT INTO public.reservas VALUES (50, 1, 51, '2025-06-07', '16:00:00', '18:00:00');
INSERT INTO public.reservas VALUES (51, 2, 52, '2025-06-28', '17:00:00', '19:00:00');
INSERT INTO public.reservas VALUES (52, 3, 53, '2025-06-25', '18:00:00', '20:00:00');
INSERT INTO public.reservas VALUES (53, 4, 54, '2025-06-06', '19:00:00', '21:00:00');
INSERT INTO public.reservas VALUES (54, 5, 55, '2025-06-11', '20:00:00', '22:00:00');
INSERT INTO public.reservas VALUES (55, 1, 56, '2025-07-03', '21:00:00', '23:00:00');
INSERT INTO public.reservas VALUES (56, 2, 57, '2025-06-15', '14:00:00', '16:00:00');
INSERT INTO public.reservas VALUES (57, 3, 58, '2025-06-14', '15:00:00', '17:00:00');
INSERT INTO public.reservas VALUES (58, 4, 59, '2025-06-08', '16:00:00', '18:00:00');
INSERT INTO public.reservas VALUES (59, 5, 60, '2025-06-04', '17:00:00', '19:00:00');
INSERT INTO public.reservas VALUES (60, 1, 61, '2025-06-08', '18:00:00', '20:00:00');
INSERT INTO public.reservas VALUES (61, 2, 62, '2025-06-13', '19:00:00', '21:00:00');
INSERT INTO public.reservas VALUES (62, 3, 63, '2025-06-22', '20:00:00', '22:00:00');
INSERT INTO public.reservas VALUES (63, 4, 64, '2025-07-01', '21:00:00', '23:00:00');
INSERT INTO public.reservas VALUES (64, 5, 65, '2025-06-29', '14:00:00', '16:00:00');
INSERT INTO public.reservas VALUES (65, 1, 66, '2025-06-10', '15:00:00', '17:00:00');
INSERT INTO public.reservas VALUES (66, 2, 67, '2025-06-25', '16:00:00', '18:00:00');
INSERT INTO public.reservas VALUES (67, 3, 68, '2025-06-14', '17:00:00', '19:00:00');
INSERT INTO public.reservas VALUES (68, 4, 69, '2025-06-11', '18:00:00', '20:00:00');
INSERT INTO public.reservas VALUES (69, 5, 70, '2025-06-29', '19:00:00', '21:00:00');
INSERT INTO public.reservas VALUES (70, 1, 71, '2025-06-25', '20:00:00', '22:00:00');
INSERT INTO public.reservas VALUES (71, 2, 72, '2025-07-03', '21:00:00', '23:00:00');
INSERT INTO public.reservas VALUES (72, 3, 73, '2025-06-16', '14:00:00', '16:00:00');
INSERT INTO public.reservas VALUES (73, 4, 74, '2025-06-28', '15:00:00', '17:00:00');
INSERT INTO public.reservas VALUES (74, 5, 75, '2025-07-01', '16:00:00', '18:00:00');
INSERT INTO public.reservas VALUES (75, 1, 76, '2025-06-21', '17:00:00', '19:00:00');
INSERT INTO public.reservas VALUES (76, 2, 77, '2025-06-16', '18:00:00', '20:00:00');
INSERT INTO public.reservas VALUES (77, 3, 78, '2025-06-27', '19:00:00', '21:00:00');
INSERT INTO public.reservas VALUES (78, 4, 79, '2025-06-24', '20:00:00', '22:00:00');
INSERT INTO public.reservas VALUES (79, 5, 80, '2025-06-24', '21:00:00', '23:00:00');
INSERT INTO public.reservas VALUES (80, 1, 81, '2025-07-03', '14:00:00', '16:00:00');
INSERT INTO public.reservas VALUES (81, 2, 82, '2025-06-10', '15:00:00', '17:00:00');
INSERT INTO public.reservas VALUES (82, 3, 83, '2025-06-06', '16:00:00', '18:00:00');
INSERT INTO public.reservas VALUES (83, 4, 84, '2025-06-08', '17:00:00', '19:00:00');
INSERT INTO public.reservas VALUES (84, 5, 85, '2025-06-19', '18:00:00', '20:00:00');
INSERT INTO public.reservas VALUES (85, 1, 86, '2025-06-17', '19:00:00', '21:00:00');
INSERT INTO public.reservas VALUES (86, 2, 87, '2025-06-16', '20:00:00', '22:00:00');
INSERT INTO public.reservas VALUES (87, 3, 88, '2025-06-23', '21:00:00', '23:00:00');
INSERT INTO public.reservas VALUES (88, 4, 89, '2025-06-07', '14:00:00', '16:00:00');
INSERT INTO public.reservas VALUES (89, 5, 90, '2025-06-24', '15:00:00', '17:00:00');
INSERT INTO public.reservas VALUES (90, 1, 91, '2025-06-26', '16:00:00', '18:00:00');
INSERT INTO public.reservas VALUES (91, 2, 92, '2025-06-06', '17:00:00', '19:00:00');
INSERT INTO public.reservas VALUES (92, 3, 93, '2025-06-04', '18:00:00', '20:00:00');
INSERT INTO public.reservas VALUES (93, 4, 94, '2025-06-24', '19:00:00', '21:00:00');
INSERT INTO public.reservas VALUES (94, 5, 95, '2025-06-13', '20:00:00', '22:00:00');
INSERT INTO public.reservas VALUES (95, 1, 96, '2025-06-30', '21:00:00', '23:00:00');
INSERT INTO public.reservas VALUES (96, 2, 97, '2025-06-21', '14:00:00', '16:00:00');
INSERT INTO public.reservas VALUES (97, 3, 98, '2025-06-07', '15:00:00', '17:00:00');
INSERT INTO public.reservas VALUES (98, 4, 99, '2025-06-14', '16:00:00', '18:00:00');
INSERT INTO public.reservas VALUES (99, 5, 100, '2025-06-08', '17:00:00', '19:00:00');
INSERT INTO public.reservas VALUES (100, 1, 101, '2025-07-02', '18:00:00', '20:00:00');


--
-- Name: actividades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: josep
--

SELECT pg_catalog.setval('public.actividades_id_seq', 100, true);


--
-- Name: autores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: josep
--

SELECT pg_catalog.setval('public.autores_id_seq', 10, true);


--
-- Name: becas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: josep
--

SELECT pg_catalog.setval('public.becas_id_seq', 5, true);


--
-- Name: carreras_id_seq; Type: SEQUENCE SET; Schema: public; Owner: josep
--

SELECT pg_catalog.setval('public.carreras_id_seq', 10, true);


--
-- Name: cursos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: josep
--

SELECT pg_catalog.setval('public.cursos_id_seq', 20, true);


--
-- Name: dispositivos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: josep
--

SELECT pg_catalog.setval('public.dispositivos_id_seq', 25, true);


--
-- Name: estudiante_contactos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: josep
--

SELECT pg_catalog.setval('public.estudiante_contactos_id_seq', 200, true);


--
-- Name: estudiante_horas_beca_id_seq; Type: SEQUENCE SET; Schema: public; Owner: josep
--

SELECT pg_catalog.setval('public.estudiante_horas_beca_id_seq', 100, true);


--
-- Name: estudiante_notas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: josep
--

SELECT pg_catalog.setval('public.estudiante_notas_id_seq', 400, true);


--
-- Name: estudiante_pagos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: josep
--

SELECT pg_catalog.setval('public.estudiante_pagos_id_seq', 200, true);


--
-- Name: estudiante_secciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: josep
--

SELECT pg_catalog.setval('public.estudiante_secciones_id_seq', 200, true);


--
-- Name: estudiantes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: josep
--

SELECT pg_catalog.setval('public.estudiantes_id_seq', 200, true);


--
-- Name: facultades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: josep
--

SELECT pg_catalog.setval('public.facultades_id_seq', 5, true);


--
-- Name: horarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: josep
--

SELECT pg_catalog.setval('public.horarios_id_seq', 40, true);


--
-- Name: horas_beca_id_seq; Type: SEQUENCE SET; Schema: public; Owner: josep
--

SELECT pg_catalog.setval('public.horas_beca_id_seq', 20, true);


--
-- Name: items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: josep
--

SELECT pg_catalog.setval('public.items_id_seq', 50, true);


--
-- Name: libros_id_seq; Type: SEQUENCE SET; Schema: public; Owner: josep
--

SELECT pg_catalog.setval('public.libros_id_seq', 25, true);


--
-- Name: maestros_id_seq; Type: SEQUENCE SET; Schema: public; Owner: josep
--

SELECT pg_catalog.setval('public.maestros_id_seq', 20, true);


--
-- Name: prestamos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: josep
--

SELECT pg_catalog.setval('public.prestamos_id_seq', 50, true);


--
-- Name: reservas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: josep
--

SELECT pg_catalog.setval('public.reservas_id_seq', 100, true);


--
-- Name: salones_biblioteca_id_seq; Type: SEQUENCE SET; Schema: public; Owner: josep
--

SELECT pg_catalog.setval('public.salones_biblioteca_id_seq', 5, true);


--
-- Name: salones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: josep
--

SELECT pg_catalog.setval('public.salones_id_seq', 10, true);


--
-- Name: secciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: josep
--

SELECT pg_catalog.setval('public.secciones_id_seq', 20, true);


--
-- PostgreSQL database dump complete
--

