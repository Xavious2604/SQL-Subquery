CREATE TABLE DATA (
    NAME varchar(255),
    ROLL_NO varchar(255),
    LOCATION varchar(255),
    PHONE_NUMBER varchar(255)
);

INSERT INTO DATA (NAME, ROLL_NO, LOCATION, PHONE_NUMBER)

VALUES

('Ram',101 , 'Chennai' ,9988775566),
('Raj',102 , 'Coimbatore' ,8877665544),
('Sasi',103 , 'Madurai' ,7766553344),
('Ravi',104 , 'Salem' ,8989898989),
('Sumathi',105 , 'Kanchipuram' ,8989856868);

CREATE TABLE DATAS (
    NAME varchar(255),
    ROLL_NO int,
    SECTION varchar(255));

INSERT INTO DATAS (NAME, ROLL_NO, SECTION)

VALUES

('Ravi',104 , 'A'),
('Sumathi',105 , 'B'),
('Raj',102 , 'A')

Select NAME, LOCATION, PHONE_NUMBER from DATA 
WHERE ROLL_NO IN
(SELECT ROLL_NO from DATAS where SECTION='A'); 

CREATE TABLE Student3 (
    NAME varchar(255),
    ROLL_NO int,
    LOCATION varchar(255),
    PHONE_NUMBER varchar(255)
);

INSERT INTO Student3 (NAME, ROLL_NO, LOCATION, PHONE_NUMBER)

VALUES

('Ram',101 , 'Chennai' ,123),
('Raj',102 , 'Coimbatore' ,456),
('Ravi',103 , 'Salem' ,789);

CREATE TABLE Student2 (
    NAME varchar(255),
    ROLL_NO int,
    LOCATION varchar(255),
    PHONE_NUMBER varchar(255)
);

INSERT INTO Student2 (NAME, ROLL_NO, LOCATION, PHONE_NUMBER)

VALUES

('Raj',111 , 'Chennai' ,8787878787),
('Sai',112 , 'mumbai' ,6565656565),
('Sri',113 , 'coimbatore' ,7878787878);

INSERT INTO Student3  SELECT * FROM Student2;

SELECT * FROM Student3;

DELETE FROM Student2 
WHERE ROLL_NO IN ( SELECT ROLL_NO FROM Student3 
                   WHERE LOCATION = 'Chennai');

SELECT * FROM Student2;

UPDATE Student2 
SET NAME='Irfan' 
WHERE LOCATION IN ( SELECT LOCATION 
                    FROM Student3 
                    WHERE NAME IN ('Raj','Ravi'));

SELECT * FROM Student2;
