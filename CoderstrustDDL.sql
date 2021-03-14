# Herunder laves database "coderstrustfinal".
create database coderstrustfinal;
# Herunder bliver MYSQL bedt om at benytte databasen "coderstrust".
use coderstrustfinal;
# Herunder laves der en tabel, der indeholder attributter, samt de forskellige datatyper der hører til. Herudover defineres "Customer_ID" også som primary key.
CREATE TABLE User (
    Customer_ID INT,
    Firstname VARCHAR(255) NOT NULL,
    Lastname VARCHAR(255) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    Phonenumber INT,
    Email VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    PRIMARY KEY (Customer_ID)
);
# Herunder laves der en tabel, der indeholder attributter, samt de forskellige datatyper der hører til. Herudover defineres "Question_ID" også som primary key.
CREATE TABLE Question (
    Question_ID INT,
    Quiz_ID INT,
    Choice INT,
    PRIMARY KEY (Question_ID)
);
# Herunder laves der en tabel, der indeholder attributter, samt de forskellige datatyper der hører til. Herudover defineres "Quiz_ID" også som primary key.
CREATE TABLE Quiz (
    Quiz_ID INT,
    Title VARCHAR(255) NOT NULL,
    Expression VARCHAR(255) NOT NULL,
    PRIMARY KEY (Quiz_ID)
);
# Herunder laves der en tabel, der indeholder attributter, samt de forskellige datatyper der hører til. Herudover defineres "Answer_ID" også som primary key.
# Herunder defineres foreign keys også, samt referencerne til de andre tabeller.
CREATE TABLE answer (
    Answer_ID INT AUTO_INCREMENT,
    Customer_ID INT,
    Question_ID INT,
    Quiz_ID INT,
    Input INT,
    PRIMARY KEY (Answer_ID),
    FOREIGN KEY (Question_ID)
        REFERENCES Question (Question_ID),
    FOREIGN KEY (Customer_ID)
        REFERENCES User (Customer_ID),
    FOREIGN KEY (Quiz_ID)
        REFERENCES Quiz (Quiz_ID)
);
# Herunder laves der en tabel, der indeholder attributter, samt de forskellige datatyper der hører til. Herudover defineres "Option_ID" også som primary key.
# Herunder defineres foreign keys også, samt referencerne til de andre tabeller.
CREATE TABLE Options (
    Option_ID INT AUTO_INCREMENT,
    Question_ID INT,
    Options INT,
    PRIMARY KEY (Option_ID),
    FOREIGN KEY (Question_ID)
        REFERENCES Question (Question_ID)
);
