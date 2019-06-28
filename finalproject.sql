/*
		Title - College Student Management System
		This Project is done by
		Himanshu Singh 2017291
		Harsh Anand    2017052
*/


SELECT "WELCOME TO THE College_Student_Management_System" AS "";

-- SHOW DATABASES;

DROP DATABASE IF EXISTS college_student_management_system;

-- SHOW DATABASES;

CREATE DATABASE college_student_management_system;

-- SHOW DATABASES;

USE college_student_management_system;

CREATE TABLE Student(
	Rollno VARCHAR(7) NOT NULL,
	Name   VARCHAR(20) NOT NULL,
	FatherName VARCHAR(20) NOT NULL,
	MotherName VARCHAR(20) NOT NULL,
	Address VARCHAR(30) NOT NULL DEFAULT "NOT KNOWN",
	ContactNo VARCHAR(11) NOT NULL,
	Branch VARCHAR(4) NOT NULL,
	-- YearOfJoining INT NOT NULL,
	CGPA FLOAT NULL,
	PresentSemester INT NULL,
	PRIMARY KEY (Rollno)
);

-- DESCRIBE Student;

INSERT INTO Student VALUE ("2017002","Rahul kapoor","Rohan Kapoor","Simran Kapoor","Sarita Vihar" ,"7788464689","CSE",8.0,4);
INSERT INTO Student VALUE ("2017089","Pranav Pathak","Tilak Pathak" ,"Pooja Pathak","Vasant Kunj","9945671238","CSAM",8.6,4);
INSERT INTO Student VALUE ("2018149","Gagan Tilak","Sushant Tilak","Sanjana Tilak","Lajpat Nagar","8989456767","CSD",8.4,2);
INSERT INTO Student VALUE ("2016102","Azam Khan","Aziz Khan","Shalima Khan","Lucknow","7878487625","CSSS",9,6);
INSERT INTO Student VALUE ("2015212","Gurpreet Singh","Marvender Singh","Shikha Singh","Amritsar","9928372893","CSB",7.8,8);

-- DELETE * FROM Student;

CREATE TABLE Projects(
	Rollno VARCHAR(7) NOT NULL,
	ProjCode   VARCHAR(10) NOT NULL,
	ProjectName VARCHAR(70) NOT NULL,
	Description VARCHAR(500) NOT NULL DEFAULT "NOT DESCRIBED",
	BTP BOOLEAN NOT NULL DEFAULT false,
	IP BOOLEAN NOT NULL DEFAULT  false,
	PRIMARY KEY (Rollno,ProjCode)
);


INSERT INTO Projects VALUE ("2017002","2MHS","Multimedia Systems for healthcare and society",DEFAULT,false,false);
INSERT INTO Projects VALUE ("2017089","DRPN2","DRP numerical schemes for advection-diffusion-reaction equations",DEFAULT,true,false);
INSERT INTO Projects VALUE ("2018149","ABDNA2","Analysing big data with novel algorithm","Analysis of hyperdemsional data in genomics",true,false);
INSERT INTO Projects VALUE ("2016102","VLC2","VLC annd 5G Testbed",DEFAULT,false,true);


CREATE TABLE Grades(
	Rollno VARCHAR(7) NOT NULL,
	CourseId VARCHAR(10) NOT NULL,
	Grade VARCHAR(2) NOT NULL,
	GradePoint INT  NOT NULL,
	Semester INT NOT NULL,
	PRIMARY KEY(Rollno,CourseId)
);

INSERT INTO Grades VALUES ("2017002","CSE202","B",8,4),("2017002","CSE204","A",10,4),("2017002","CSE205","A-",9,4),
("2017002","MTH101","B",8,4),("2017002","MTH201","A-",9,4);
INSERT INTO Grades VALUES ("2017089","CSE202","B",8,4),("2017089","CSE204","B",8,4),("2017089","MTH100","C",6,4),
("2017089","MTH200","A",10,4),("2017089","MTH300","A",10,4);
INSERT INTO Grades VALUES ("2018149","CSE101","A",10,2),("2018149","CSE102","A-",9,2),("2018149","CSE103","B-",7,2),
("2018149","MTH101","C",6,2),("2018149","ECE111","D",4,2);
INSERT INTO Grades VALUES ("2016102","CSE303","A",10,6),("2016102","CSE305","B",8,6),("2016102","MTH333","A",10,6),
("2016102","MTH404","A-",9,6),("2016102","MTH323","C",6,6);
INSERT INTO Grades VALUES ("2015212","CSE505","A",10,8),("2015212","CSE555","B",8,8),("2015212","CSE444","A",10,8),
("2015212","CSE404","A",10,8),("2015212","MTH323","B",8,8);
INSERT INTO Grades VALUES ("2018149","CSE001","A",10,1),("2018149","CSE002","A",10,1),("2018149","CSE003","C",6,1),
("2018149","MTH001","B",8,1),("2018149","ECE001","A-",9,1);


-- DELETE * FROM Grades;

CREATE TABLE Courses(
	CourseId VARCHAR(8) NOT NULL,
	CourseName VARCHAR(30) NOT NULL,
	Credits INT NOT NULL DEFAULT 4,
	PRIMARY KEY (CourseId)
); 

INSERT INTO Courses VALUE ("CSE202","AP",4);
INSERT INTO Courses VALUE ("CSE204","ADA",4);
INSERT INTO Courses VALUE ("CSE205","DBMS",4);
INSERT INTO Courses VALUE ("MTH101","Math1",4);
INSERT INTO Courses VALUE ("MTH201","Probablity and Statistics",4);
INSERT INTO Courses VALUE ("MTH100","IML",4);
INSERT INTO Courses VALUE ("MTH200","Abstract Algebra",4);
INSERT INTO Courses VALUE ("MTH300","Math4",4);
INSERT INTO Courses VALUE ("CSE101","IP",4);
INSERT INTO Courses VALUE ("CSE102","Systems Management",4);
INSERT INTO Courses VALUE ("CSE103","DSA",4);
INSERT INTO Courses VALUE ("ECE111","Basic Electronics",4);
INSERT INTO Courses VALUE ("CSE303","Deep Learning",4);
INSERT INTO Courses VALUE ("CSE305","Intro To Machine Learning",4);
INSERT INTO Courses VALUE ("MTH333","TOC",4);
INSERT INTO Courses VALUE ("MTH404","Complexity theory",4);
INSERT INTO Courses VALUE ("MTH323","DS",4);
INSERT INTO Courses VALUE ("CSE505","Artificial Intellignece",4);
INSERT INTO Courses VALUE ("CSE555","SSD",4);
INSERT INTO Courses VALUE ("CSE444","Reinforcement Learning",4);
INSERT INTO Courses VALUE ("CSE506","Data Mining",4);
INSERT INTO Courses VALUE ("MTH202","Math3",4);
INSERT INTO Courses VALUE ("CSE001","Basic c++",4);
INSERT INTO Courses VALUE ("CSE002","Basic Python",4);
INSERT INTO Courses VALUE ("CSE003","Basic Networks",4);
INSERT INTO Courses VALUE ("MTH001","Intro to Computer Mathematics",4);
INSERT INTO Courses VALUE ("ECE001","Basics of signals",4);

-- DELETE * FROM Courses;


CREATE TABLE Prerequisites(
	CourseId VARCHAR(10) NOT NULL,
	Prereqid VARCHAR(10) NOT NULL,
	PRIMARY KEY (CourseId, Prereqid)
);

INSERT INTO Prerequisites VALUE ("CSE202","CSE101");
INSERT INTO Prerequisites VALUE ("CSE204","CSE103");
INSERT INTO Prerequisites VALUE ("CSE204","MTH323");
INSERT INTO Prerequisites VALUE ("CSE205","CSE103");
INSERT INTO Prerequisites VALUE ("MTH100","MTH323");
INSERT INTO Prerequisites VALUE ("MTH300","MTH202");
INSERT INTO Prerequisites VALUE ("CSE305","CSE303");
INSERT INTO Prerequisites VALUE ("CSE303","MTH101");
INSERT INTO Prerequisites VALUE ("CSE303","MTH201");
INSERT INTO Prerequisites VALUE ("CSE303","CSE101");
INSERT INTO Prerequisites VALUE ("CSE303","MTH202");
INSERT INTO Prerequisites VALUE ("MTH333","MTH323");
INSERT INTO Prerequisites VALUE ("MTH404","MTH404");
INSERT INTO Prerequisites VALUE ("CSE505","MTH201");
INSERT INTO Prerequisites VALUE ("CSE444","MTH201");
INSERT INTO Prerequisites VALUE ("CSE506","CSE205");
INSERT INTO Prerequisites VALUE ("CSE506","CSE101");
INSERT INTO Prerequisites VALUE ("CSE506","MTH101");
INSERT INTO Prerequisites VALUE ("CSE506","MTH201");


--	DELETE * FROM Prerequisites;

CREATE TABLE Scholarships(
	Rollno VARCHAR(10) NOT NULL,
	ScholarId VARCHAR(10) NOT NULL,
	Sname VARCHAR(35) NOT NULL,
	Amount INT NOT NULL,
	PRIMARY KEY (Rollno, ScholarId)	
);

INSERT INTO Scholarships VALUE ("2017002","SSPI1000","SSPI Scholarship Program",100000);
INSERT INTO Scholarships VALUE ("2017089","GUSA2020","GUS Archie Scholarship program",120000);



CREATE TABLE Internships(
	Rollno VARCHAR(7) NOT NULL,
	IntershipCode VARCHAR(10) NOT NULL,
	Name_Description VARCHAR(30) NOT NULL,
	CompanyName VARCHAR(30) NOT NULL,
	Duration VARCHAR(20) NOT NULL,
	PRIMARY KEY (Rollno,IntershipCode)
);

INSERT INTO Internships VALUE ("2017002","INT201011","Web Development","LiveIntuitions Technologies","6 Months");
INSERT INTO Internships VALUE ("2017089","INT201044","Mobile App Development","Indian Road Safety Campaign","60 days");
INSERT INTO Internships VALUE ("2015212","INS008921","Google Summer of Code","Google","3 Months");
INSERT INTO Internships VALUE ("2016102","INT101010","Artificial Intellignece","MASYS Technologies","6 Months");

-- DELETE * FROM Internships;

CREATE TABLE Hostel(
	Rollno VARCHAR(7) NOT NULL,
	Roomno INT NOT NULL,
	Fees FLOAT NOT NULL,
	Wing CHAR(1) NOT NULL,
	OLdNewHostel VARCHAR(3) NOT NULL,
	Sharingtype VARCHAR(10) NOT NULL,
	BoyGirl VARCHAR(5) NOT NULL,
	PRIMARY KEY (Rollno, Roomno)
);

INSERT INTO Hostel VALUE ("2017089",411,22000,"B","Old","Double","Boys");
INSERT INTO Hostel VALUE ("2018149",611,22000,"A","New","Double","Boys");
INSERT INTO Hostel VALUE ("2015212",401,30000,"C","Old","Single","Boys");


CREATE TABLE Fees(
	Rollno VARCHAR(7) NOT NULL,
	Semester INT NOT NULL,
	Amount INT  NOT NULL,
	PRIMARY KEY(Rollno, Semester)
);

INSERT INTO Fees VALUE ("2017002",4,175000);
INSERT INTO Fees VALUE ("2017089",4,175000);
INSERT INTO Fees VALUE ("2018149",2,150000);
INSERT INTO Fees VALUE ("2016102",6,145000);
INSERT INTO Fees VALUE ("2015212",8,125000);

-- QUERIES  FOR THE PROJECT
SELECT "ENTRIES ARE DONE ... LETS START WITH THE QUERIES" AS "";

SELECT "1. View the whole table .. eg Student table " AS "QUERY 1";
SELECT * FROM Student;

SELECT "2. View Student Details of 2017 batch" AS "QUERY 2";
 SELECT * FROM Student WHERE Rollno LIKE "2017___";

SELECT "3. View details of CSE Courses" AS "QUERY 3";
SELECT CourseId, CourseName , Credits FROM Courses WHERE CourseID LIKE "CSE%";

SELECT "4. List Prerequisites of a particular course... eg CSE303 Deep Learning" AS "QUERY 4";
SELECT p.Prereqid AS CourseId_of_Prerequisite, c.CourseName,c.Credits FROM Courses AS c, Prerequisites AS p   WHERE p.Prereqid = c.CourseID AND p.CourseId = 'CSE303';

SELECT "5. View all the details of courses done by a student...eg Rollno 2018149" AS "QUERY 5";
SET @year=(SELECT PresentSemester FROM Student WHERE Rollno="2018149");
SELECT g.CourseId,c.CourseName,g.Grade,g.GradePoint,g.Semester FROM Grades AS g, Courses AS c WHERE g.CourseId=c.CourseId AND g.Rollno = "2018149" AND g.Semester<=@year ORDER BY g.Semester;

SELECT "6. Students with their Project Details " AS "QUERY 6";
SELECT s.Rollno, s.Name, p.ProjectName  FROM Student AS s, Projects AS p WHERE s.Rollno=p.Rollno;

SELECT "7. Students details who interned at Google " AS "QUERY 7";
SELECT i.Rollno,s.Name,i.IntershipCode,i.Name_Description AS Internship_Title,i.Duration FROM Student AS s, Internships AS i WHERE s.Rollno = i.Rollno AND i.CompanyName LIKE "Google%";

SELECT "8. Students who have Scholarships " AS "QUERY 8";
SELECT s.Rollno,sc.ScholarId, s.Name,sc.Sname AS Scholarship_Name,sc.Amount FROM Student AS s, Scholarships AS sc WHERE s.Rollno= sc.Rollno;

SELECT "9. Students who are day Scholars " AS "QUERY 9";
SELECT s.Rollno,s.Name FROM Student AS s WHERE s.Rollno NOT IN (SELECT h.Rollno FROM Hostel AS h);

SELECT "10. Hostler's Details " AS "QUERY 10";
SELECT s.Rollno,s.Name,h.Roomno,h.Wing,h.OLdNewHostel AS Hostel_Building,h.Sharingtype AS Room_Type FROM Student AS s, Hostel AS h WHERE s.Rollno=h.Rollno;

SELECT "11. Student can view the courses whose Prerequisites are the courses he has done ...eg.2017002	" AS "11";
SELECT p.CourseId,c1.CourseName AS Course_Completed,p.Prereqid,c2.CourseName AS Future_Courses FROM Prerequisites AS p, Courses AS c1, Courses AS c2 WHERE p.CourseId =c1.CourseId AND p.Prereqid=c2.CourseId AND p.CourseId IN (SELECT g.CourseId FROM Grades AS g WHERE g.Rollno="2017002");

SELECT "12. Updating PresentSemester in Student eg..incrementin by 2 except those who are in 8th semester" AS "QUERY 12";
SELECT * FROM Student;
UPDATE Student SET PresentSemester = PresentSemester+2 WHERE PresentSemester!=8;
SELECT * FROM Student;

SELECT "13. Deleting records of students leaving the hostel ...eg.2015212 " AS "QUERY 13";
SELECT * FROM Hostel;
DELETE FROM Hostel WHERE Rollno="2015212";
SELECT * FROM Hostel;

SELECT "END OF THE PROJECT" AS "";