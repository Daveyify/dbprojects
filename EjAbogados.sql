-- Crear 3 clientes
INSERT INTO client(idclient, client.name, adress, email, phoneNumber) VALUES (51966684, "Sara Pedraza", "CL 6D#79A-56", "sarapedraza@hotmail.com", 3115334);
INSERT INTO client(idclient, client.name, adress, email, phoneNumber) VALUES (10347769, "Pedro Jimenez", "CL 94#54-45", "pjimenez@gmail.com", 31545334);
INSERT INTO client(idclient, client.name, adress, email, phoneNumber) VALUES (74558664, "Nicolas Gonzalez", "CRA 87#67-98", "nico23gz@gmailclient.com", 8842445);

-- Crear 3 abogados
INSERT INTO lawyer(idlawyer, lawyer.name, adress, email, phoneNumber) VALUES (45454646, "Sergio Zapata", "CL 87#37-02", "szapata@gmail.com", 544452);
INSERT INTO lawyer(idlawyer, lawyer.name, adress, email, phoneNumber) VALUES (65478954, "Jose Antares", "CL 8#3-0", "jantares@gmail.com", 54669511);
INSERT INTO lawyer(idlawyer, lawyer.name, adress, email, phoneNumber) VALUES (21231209, "Lucia Cadena", "CKR 87#37-02", "lcadena@gmail.com", 8554541);

SELECT * FROM lawyer;

-- Crear 3 estados de casos
INSERT INTO status(idstatus, nameStatus) VALUES (1, "Sin iniciar");
INSERT INTO status(idstatus, nameStatus) VALUES (2, "En tramite");
INSERT INTO status(idstatus, nameStatus) VALUES (3, "Archivado");

-- Recuperar un abogado por la cedula
SELECT * FROM lawyer WHERE idlawyer = 21231209;

RENAME TABLE `case` TO `cases_table`;

-- Crear 3 casos
INSERT INTO cases_table(idcase, startDate, finishDate, client_idclient, status_idstatus) VALUES (102034, "23/02/2023", "Sin finalizar",  51966684, 2);
INSERT INTO cases_table(idcase, startDate, finishDate, client_idclient, status_idstatus) VALUES (232341, "25/10/2024", "20/02/2025",  74558664, 3); 
INSERT INTO cases_table(idcase, startDate, finishDate, client_idclient, status_idstatus) VALUES (456677, "15/01/2025", "Sin finalizar",  74558664, 1); 

-- Recuperar casos con status "archivado"
SELECT * FROM cases_table WHERE status_idstatus = 3;

-- Actualizar status de un caso
UPDATE cases_table SET status_idstatus = 3 WHERE idcase = 102034;

-- Recuperar casos con status "archivado"
SELECT * FROM cases_table WHERE status_idstatus = 3;

-- Eliminar uno de los casos
DELETE FROM cases_table WHERE idcase = 456677;