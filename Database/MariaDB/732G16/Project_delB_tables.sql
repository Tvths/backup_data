-- ---------------------------------------------------
-- ---------------------------------------------------
-- vietr933, duyph635 2025-05-05
-- All Tables which is relevant to project del B will be define here.
-- ---------------------------------------------------
-- ---------------------------------------------------

DROP TABLE IF EXISTS programmet CASCADE;
DROP TABLE IF EXISTS student CASCADE;
DROP TABLE IF EXISTS kurs CASCADE;
DROP TABLE IF EXISTS studera CASCADE;
DROP TABLE IF EXISTS kurs_programmet CASCADE;
-- create table programmet
CREATE TABLE programmet(
	pk_programkod VARCHAR(10),
	CONSTRAINT pk_programkod PRIMARY KEY (pk_programkod),
	programname VARCHAR(100)) ENGINE=InnoDB;

-- create table student
CREATE TABLE student(
	pk_personnummer VARCHAR(12),
	CONSTRAINT pk_personnummer PRIMARY KEY (pk_personnummer),
	name VARCHAR(100),
	average_score FLOAT,
	programkod VARCHAR(10)) ENGINE=InnoDB;

-- create table kurs
CREATE TABLE kurs(
	pk_kurskod VARCHAR(10),
	CONSTRAINT pk_kurskod PRIMARY KEY (pk_kurskod),
	kursname VARCHAR(100),
	college_credits INT) ENGINE=InnoDB;

-- create table studera
CREATE TABLE studera(
	personnummer VARCHAR(12),
	kurskod VARCHAR(10),
	CONSTRAINT pk_studera PRIMARY KEY (personnummer, kurskod),
	rate VARCHAR(2)) ENGINE=InnoDB;

-- create table kurs_programmet
CREATE TABLE kurs_programmet(
	programkod VARCHAR(10),
	kurskod VARCHAR(10),
	Obligatorisk BOOLEAN) ENGINE=InnoDB;

-- --------------------------------------------------
-- add foreign keys

ALTER TABLE student
ADD CONSTRAINT fk_student_programmet
FOREIGN KEY (programkod) REFERENCES programmet(pk_programkod);

ALTER TABLE studera
ADD CONSTRAINT fk_studera_student
FOREIGN KEY (personnummer) REFERENCES student(pk_personnummer),
ADD CONSTRAINT fk_studera_kurs
FOREIGN KEY (kurskod) REFERENCES kurs(pk_kurskod);

ALTER TABLE kurs_programmet
ADD CONSTRAINT fk_kurs_programmet_program
FOREIGN KEY (programkod) REFERENCES programmet(pk_programkod),
ADD CONSTRAINT fk_kurs_programmet_kurs
FOREIGN KEY (kurskod) REFERENCES kurs(pk_kurskod);







	


