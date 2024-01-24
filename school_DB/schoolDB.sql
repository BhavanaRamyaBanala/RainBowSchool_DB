-- Create Database
CREATE DATABASE RainbowSchoolDB;
GO

-- Use the Database
USE RainbowSchoolDB;
GO

-- Create Classes Table
CREATE TABLE Classes (
    classID INT PRIMARY KEY,
    className VARCHAR(50) NOT NULL
);
GO

-- Create Subjects Table
CREATE TABLE Subjects (
    subjectID INT PRIMARY KEY,
    subjectName VARCHAR(50) NOT NULL
);
GO

-- Create Students Table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DateOfBirth DATE,
    ClassID INT,
    CONSTRAINT FK_Students_Classes FOREIGN KEY (ClassID) REFERENCES Classes(ClassID)
);
GO


INSERT INTO Classes values(1,'classA');
INSERT INTO Classes values(2,'classB');

select * from Classes;

INSERT INTO Students values(1,'Sudheer','Reddy','2004-01-28',2);
INSERT INTO Students values(2,'Sindhu','Banala','2003-07-17',1);

select * from Students;

INSERT INTO Subjects values(1,'Maths');
INSERT INTO Subjects values(2,'English');

select * from Subjects;

select FirstName from Students where classID=2;

-- Create Index on Students' ClassID
CREATE INDEX Students_ClassID ON Students (ClassID);
GO

-- Index on Subjects' SubjectName
CREATE INDEX Subjects_SubjectName ON Subjects (SubjectName);
GO

