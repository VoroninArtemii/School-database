BEGIN TRANSACTION;
INSERT INTO "Subject" ("Subject ID","Title","Technical") VALUES (1,'Math',1),
 (2,'IT',1),
 (3,'History',0);
INSERT INTO "Teacher" ("Teacher ID","First name","Last name") VALUES (1,'Andrei','Ivanov'),
 (2,'Ivan','Ivanov'),
 (3,'Denis','Selin');
INSERT INTO "Group" ("Group ID","Name") VALUES (1,'2022-A'),
 (2,'2022-B'),
 (3,'2023-A');
INSERT INTO "Student" ("Student ID","Group ID","First name","Last name") VALUES (1,1,'Artemii','Voronin'),
 (2,1,'Nikita','Klinov'),
 (3,1,'Roman','Nabokov'),
 (4,2,'Semyon','Voronov'),
 (5,2,'Oleg','Kolosov'),
 (6,2,'Anna','Nabokova'),
 (7,3,'Alina','Solomonova'),
 (8,3,'Mark','Rubinshtein'),
 (9,3,'Eva','Belskaya');
INSERT INTO "Course" ("Course ID","Subject ID","Teacher ID","Group ID") VALUES (1,1,1,1),
 (2,1,2,1),
 (3,2,2,2),
 (4,3,3,2),
 (5,3,3,1),
 (6,1,1,2),
 (7,1,2,3);
INSERT INTO "Work" ("Work ID","Course ID","Title","Number") VALUES (1,1,'Oral',1),
 (2,1,'Write',1),
 (3,2,'Oral',1),
 (4,2,'Oral',2),
 (5,3,'Write',1),
 (6,3,'Write',2),
 (7,4,'Oral',1),
 (8,4,'Write',1),
 (9,5,'Oral',1),
 (10,5,'Write',1),
 (11,6,'Oral',1),
 (12,6,'Oral',2),
 (13,7,'Write',1),
 (14,7,'Write',2);
INSERT INTO "Mark" ("Mark ID","Student ID","Subject ID","Work ID","Mark","Date") VALUES (1,1,1,1,5,'2024-02-10'),
 (2,2,1,2,4,'2024-02-11'),
 (3,3,2,3,3,'2024-02-12'),
 (4,4,2,4,2,'2024-03-10'),
 (5,5,2,5,2,'2024-03-10'),
 (6,6,2,6,4,'2024-04-14'),
 (7,7,3,7,5,'2024-04-14'),
 (8,8,3,8,5,'2024-02-14'),
 (9,9,3,9,4,'2024-02-23'),
 (10,1,3,10,5,'2024-04-19'),
 (11,2,1,11,3,'2024-04-18'),
 (12,3,1,12,3,'2024-03-18'),
 (13,4,1,13,3,'2024-02-22'),
 (14,5,1,14,2,'2024-04-23');
COMMIT;
