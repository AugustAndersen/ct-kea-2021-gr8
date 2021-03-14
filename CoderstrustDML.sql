Use coderstrustfinal;
# Herunder indsættes data i de forskellige attributter til tabellen "User".
insert into User(Customer_ID,Firstname, Lastname, Address, Phonenumber, Email, Password)
values(1,'August', 'Macdonald','Guldbergsgade 1', 4543425,'xxxaugust@gmail.com', 'student'),
(2,'Daniel','List', 'Aalborggade 3', 45645465, 'mymail@hotmail.com', 'student1'),
(3,'Victor','Hansen', 'Dahlsgade 12', 62346234, 'nicemail@outlook.com', 'student2'),
(4,'Benjamin','Valentin', 'Telegraf 5', 24242656, 'benjamin@gmail.com', 'student3'),
(5,'Erik','Emil', 'Telegrafvej 5a', 23573453, 'himates@live.com', 'student4')
;
# Herunder indsættes data i de forskellige attributter til tabellen "Question".
insert into Question(Question_ID, Quiz_ID, Choice)
values(101,10, 2),
(102,10,2),
(103,10,2),
(104,10,2),
(105,10,2),
(106,10,2),
(107,10,2),
(108,10,2),
(109,10,2),
(110,10,2),
(111,10,2),
(112,10,2)
;

# Herunder indsættes data i de forskellige attributter til tabellen "Quiz".
insert into Quiz(Quiz_ID, Title, Expression)
values(10,'My interest', 'Simple')
;
# Herunder indsættes data i de forskellige attributter til tabellen "Options".
insert into Options(Question_ID, options)
values
(101,2),
(102,2),
(103,2),
(104,2),
(105,2),
(106,2),
(107,2),
(108,2),
(109,2),
(110,2),
(111,2),
(112,2)
;
# Herunder indsættes data i de forskellige attributter til tabellen "Answer".
insert into answer(Answer_ID, Customer_ID, Quiz_ID, Question_ID, Input)
values 
(1001, 1, 10, 101, 5),
(1002, 1, 10, 102, 0),
(1003, 1, 10, 103, 5),
(1004, 1, 10, 104, 5),
(1005, 1, 10, 105, 0),
(1006, 1, 10, 106, 5),
(1007, 1, 10, 107, 5),
(1008, 1, 10, 108, 0),
(1009, 1, 10, 109, 0),
(1010, 1, 10, 110, 5),
(1011, 1, 10, 111, 5),
(1012, 1, 10, 112, 5),

(1013, 2, 10, 101, 5),
(1014, 2, 10, 102, 0),
(1015, 2, 10, 103, 5),
(1016, 2, 10, 104, 5),
(1017, 2, 10, 105, 5),
(1018, 2, 10, 106, 5),
(1019, 2, 10, 107, 5),
(1020, 2, 10, 108, 5),
(1021, 2, 10, 109, 0),
(1022, 2, 10, 110, 5),
(1023, 2, 10, 111, 5),
(1024, 2, 10, 112, 5),

(1025, 3, 10, 101, 5),
(1026, 3, 10, 102, 0),
(1027, 3, 10, 103, 5),
(1028, 3, 10, 104, 5),
(1029, 3, 10, 105, 5),
(1030, 3, 10, 106, 5),
(1031, 3, 10, 107, 0),
(1032, 3, 10, 108, 0),
(1033, 3, 10, 109, 5),
(1034, 3, 10, 110, 0),
(1035, 3, 10, 111, 5),
(1036, 3, 10, 112, 5),

(1037, 4, 10, 101, 5),
(1038, 4, 10, 102, 0),
(1039, 4, 10, 103, 5),
(1040, 4, 10, 104, 0),
(1041, 4, 10, 105, 0),
(1042, 4, 10, 106, 5),
(1043, 4, 10, 107, 5),
(1044, 4, 10, 108, 0),
(1045, 4, 10, 109, 5),
(1046, 4, 10, 110, 0),
(1047, 4, 10, 111, 5),
(1048, 4, 10, 112, 0),

(1049, 5, 10, 101, 0),
(1050, 5, 10, 102, 5),
(1051, 5, 10, 103, 5),
(1052, 5, 10, 104, 5),
(1053, 5, 10, 105, 0),
(1054, 5, 10, 106, 5),
(1055, 5, 10, 107, 0),
(1056, 5, 10, 108, 5),
(1057, 5, 10, 109, 5),
(1058, 5, 10, 110, 5),
(1059, 5, 10, 111, 0),
(1060, 5, 10, 112, 5)
;
# Herunder laves et "View" "creative1" som viser hvor mange procent customer nummer 1 er intereseret i Creative. herudover benyttes en "inner join" til at sammenkoble answer.input med user.customer_id.
CREATE VIEW Creative1 AS
    SELECT 
        answer.customer_id,
        SUM(answer.input) / 20 * 100 Percentage_Creative
    FROM
        answer
            INNER JOIN
        user ON answer.input = user.customer_id
    WHERE
        answer.answer_id BETWEEN 1001 AND 1004
;
# Herunder laves et "View" "Development1" som viser hvor mange procent customer nummer 1 er intereseret i Development. herudover benyttes en "inner join" til at sammenkoble answer.input med user.customer_id.
CREATE VIEW Development1 AS
    SELECT 
        answer.customer_id,
        SUM(answer.input) / 20 * 100 Percentage_Development
    FROM
        answer
            INNER JOIN
        user ON answer.input = user.customer_id
    WHERE
        answer.answer_id BETWEEN 1005 AND 1008
;
# Herunder laves et "View" "Marketing1" som viser hvor mange procent customer nummer 1 er intereseret i Digital Marketing. herudover benyttes en "inner join" til at sammenkoble answer.input med user.customer_id.
CREATE VIEW Marketing1 AS
    SELECT 
        answer.customer_id,
        SUM(answer.input) / 20 * 100 Percentage_Digital_Marketing
    FROM
        answer
            INNER JOIN
        user ON answer.input = user.customer_id
    WHERE
        answer.answer_id BETWEEN 1009 AND 1012
;
# Herunder laves et "View" på baggrund af de tidligere "Views" for at kunne samle de 3 interesser "Customer 1" har svaret på i quiezzen, der er udarbejdet.
CREATE VIEW Customer1_interest AS
    SELECT 
        Creative1.customer_id,
        Creative1.Percentage_Creative,
        Development1.Percentage_Development,
        Marketing1.Percentage_Digital_Marketing
    FROM
        Creative1
            JOIN
        Development1 ON Creative1.customer_id = Development1.customer_id
            JOIN
        Marketing1 ON Development1.customer_id = Marketing1.customer_id
;
# Herunder vises det endelige "View" "Customer1_interest", som viser "Customer 1"s interesser i procent.
SELECT 
    *
FROM
    Customer1_interest;
# Herunder laves endnu et "View" "creative2" som viser hvor mange procent customer nummer 2 er intereseret i Creative. herudover benyttes en "inner join" til at sammenkoble answer.input med user.customer_id.
CREATE VIEW Creative2 AS
    SELECT 
        answer.customer_id,
        SUM(answer.input) / 20 * 100 Percentage_Creative
    FROM
        answer
            INNER JOIN
        user ON answer.input = user.customer_id
    WHERE
        answer.answer_id BETWEEN 1013 AND 1016
;
# Herunder laves et "View" "Development2" som viser hvor mange procent customer nummer 2 er intereseret i Development. herudover benyttes en "inner join" til at sammenkoble answer.input med user.customer_id.
CREATE VIEW Development2 AS
    SELECT 
        answer.customer_id,
        SUM(answer.input) / 20 * 100 Percentage_Development
    FROM
        answer
            INNER JOIN
        user ON answer.input = user.customer_id
    WHERE
        answer.answer_id BETWEEN 1017 AND 1020
;
# Herunder laves et "View" "Marketing2" som viser hvor mange procent customer nummer 2 er intereseret i Digital Marketing. herudover benyttes en "inner join" til at sammenkoble answer.input med user.customer_id.
CREATE VIEW Marketing2 AS
    SELECT 
        answer.customer_id,
        SUM(answer.input) / 20 * 100 Percentage_Digital_Marketing
    FROM
        answer
            INNER JOIN
        user ON answer.input = user.customer_id
    WHERE
        answer.answer_id BETWEEN 1021 AND 1024
;
# Herunder laves et "View" på baggrund af de tidligere "Views" for at kunne samle de 3 interesser "Customer 2" har svaret på i quiezzen, der er udarbejdet.
CREATE VIEW Customer2_interest AS
    SELECT 
        Creative2.customer_id,
        Creative2.Percentage_Creative,
        Development2.Percentage_Development,
        Marketing2.Percentage_Digital_Marketing
    FROM
        Creative2
            JOIN
        Development2 ON Creative2.customer_id = Development2.customer_id
            JOIN
        Marketing2 ON Development2.customer_id = Marketing2.customer_id
;
# Herunder vises det endelige "View" "Customer2_interest", som viser "Customer 2"s interesser i procent.
SELECT 
    *
FROM
    Customer2_interest;
# Herunder laves et "View" "creative3" som viser hvor mange procent customer nummer 3 er intereseret i Creative. herudover benyttes en "inner join" til at sammenkoble answer.input med user.customer_id for at skabe et bedre visuelt overblik.
CREATE VIEW Creative3 AS
    SELECT 
        answer.customer_id,
        SUM(answer.input) / 20 * 100 Percentage_Creative
    FROM
        answer
            INNER JOIN
        user ON answer.input = user.customer_id
    WHERE
        answer.answer_id BETWEEN 1025 AND 1028
;
# Herunder laves et "View" "Development3" som viser hvor mange procent customer nummer 3 er intereseret i Development. herudover benyttes en "inner join" til at sammenkoble answer.input med user.customer_id.
CREATE VIEW Development3 AS
    SELECT 
        answer.customer_id,
        SUM(answer.input) / 20 * 100 Percentage_Development
    FROM
        answer
            INNER JOIN
        user ON answer.input = user.customer_id
    WHERE
        answer.answer_id BETWEEN 1029 AND 1032
;
# Herunder laves et "View" "Marketing3" som viser hvor mange procent customer nummer 3 er intereseret i Digital Marketing. herudover benyttes en "inner join" til at sammenkoble answer.input med user.customer_id.
CREATE VIEW Marketing3 AS
    SELECT 
        answer.customer_id,
        SUM(answer.input) / 20 * 100 Percentage_Digital_Marketing
    FROM
        answer
            INNER JOIN
        user ON answer.input = user.customer_id
    WHERE
        answer.answer_id BETWEEN 1033 AND 1036
;
# Herunder laves et "View" på baggrund af de tidligere "Views" for at kunne samle de 3 interesser "Customer 3" har svaret på i quiezzen, der er udarbejdet.
CREATE VIEW Customer3_interest AS
    SELECT 
        Creative3.customer_id,
        Creative3.Percentage_Creative,
        Development3.Percentage_Development,
        Marketing3.Percentage_Digital_Marketing
    FROM
        Creative3
            JOIN
        Development3 ON Creative3.customer_id = Development3.customer_id
            JOIN
        Marketing3 ON Development3.customer_id = Marketing3.customer_id
;
# Herunder vises det endelige "View" "Customer3_interest", som viser "Customer 3"s interesser i procent.
SELECT 
    *
FROM
    Customer3_interest;

CREATE VIEW Creative4 AS
    SELECT 
        answer.customer_id,
        SUM(answer.input) / 20 * 100 Percentage_Creative
    FROM
        answer
            INNER JOIN
        user ON answer.input = user.customer_id
    WHERE
        answer.answer_id BETWEEN 1037 AND 1040
;
# Herunder laves et "View" "Development4" som viser hvor mange procent customer nummer 4 er intereseret i Development. herudover benyttes en "inner join" til at sammenkoble answer.input med user.customer_id.
CREATE VIEW Development4 AS
    SELECT 
        answer.customer_id,
        SUM(answer.input) / 20 * 100 Percentage_Development
    FROM
        answer
            INNER JOIN
        user ON answer.input = user.customer_id
    WHERE
        answer.answer_id BETWEEN 1041 AND 1044
;
# Herunder laves et "View" "Marketing4" som viser hvor mange procent customer nummer 4 er intereseret i Digital Marketing. herudover benyttes en "inner join" til at sammenkoble answer.input med user.customer_id.
CREATE VIEW Marketing4 AS
    SELECT 
        answer.customer_id,
        SUM(answer.input) / 20 * 100 Percentage_Digital_Marketing
    FROM
        answer
            INNER JOIN
        user ON answer.input = user.customer_id
    WHERE
        answer.answer_id BETWEEN 1045 AND 1048
;
# Herunder laves et "View" på baggrund af de tidligere "Views" for at kunne samle de 3 interesser "Customer 4" har svaret på i quiezzen, der er udarbejdet.
CREATE VIEW Customer4_interest AS
    SELECT 
        Creative4.customer_id,
        Creative4.Percentage_Creative,
        Development4.Percentage_Development,
        Marketing4.Percentage_Digital_Marketing
    FROM
        Creative4
            JOIN
        Development4 ON Creative4.customer_id = Development4.customer_id
            JOIN
        Marketing4 ON Development4.customer_id = Marketing4.customer_id
;
# Herunder vises det endelige "View" "Customer4_interest", som viser "Customer 4"s interesser i procent.
SELECT 
    *
FROM
    Customer4_interest;
# Herunder laves et "View" "Creative5" som viser hvor mange procent customer nummer 5 er intereseret i Development. herudover benyttes en "inner join" til at sammenkoble answer.input med user.customer_id.
CREATE VIEW Creative5 AS
    SELECT 
        answer.customer_id,
        SUM(answer.input) / 20 * 100 Percentage_Creative
    FROM
        answer
            INNER JOIN
        user ON answer.input = user.customer_id
    WHERE
        answer.answer_id BETWEEN 1049 AND 1052
;
# Herunder laves et "View" "Development5" som viser hvor mange procent customer nummer 5 er intereseret i Development. herudover benyttes en "inner join" til at sammenkoble answer.input med user.customer_id.
CREATE VIEW Development5 AS
    SELECT 
        answer.customer_id,
        SUM(answer.input) / 20 * 100 Percentage_Development
    FROM
        answer
            INNER JOIN
        user ON answer.input = user.customer_id
    WHERE
        answer.answer_id BETWEEN 1053 AND 1056
;
# Herunder laves et "View" "Marketing5" som viser hvor mange procent customer nummer 5 er intereseret i Digital Marketing. herudover benyttes en "inner join" til at sammenkoble answer.input med user.customer_id.
CREATE VIEW Marketing5 AS
    SELECT 
        answer.customer_id,
        SUM(answer.input) / 20 * 100 Percentage_Digital_Marketing
    FROM
        answer
            INNER JOIN
        user ON answer.input = user.customer_id
    WHERE
        answer.answer_id BETWEEN 1057 AND 1060
;
# Herunder laves et "View" på baggrund af de tidligere "Views" for at kunne samle de 5 interesser "Customer 5" har svaret på i quiezzen, der er udarbejdet.
CREATE VIEW Customer5_interest AS
    SELECT 
        Creative5.customer_id,
        Creative5.Percentage_Creative,
        Development5.Percentage_Development,
        Marketing5.Percentage_Digital_Marketing
    FROM
        Creative5
            JOIN
        Development5 ON Creative5.customer_id = Development5.customer_id
            JOIN
        Marketing5 ON Development5.customer_id = Marketing5.customer_id
;
# Herunder vises det endelige "View" "Customer5_interest", som viser "Customer 5"s interesser i procent.
SELECT 
    *
FROM
    Customer5_interest;
# Koden vil blive yderliger uddybet i rapporten.