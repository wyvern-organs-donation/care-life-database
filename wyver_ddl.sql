CREATE DATABASE wyver;
USE wyver;

CREATE TABLE user_types (
	id int NOT NULL AUTO_INCREMENT,
    type_name varchar(30) NOT NULL,
	PRIMARY KEY (id)
);
CREATE TABLE organ_types (
	id int NOT NULL AUTO_INCREMENT,
    type_name varchar(30) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE users (
	id int NOT NULL AUTO_INCREMENT,
    user_type int NOT NULL,
    user_name varchar(70) NOT NULL,
	email varchar(255) NOT NULL,
	user_password varchar(70) NOT NULL,
	birth_date date NOT NULL,
	phone_number varchar(20) NOT NULL,
    doc_country varchar(35),
    doc_number varchar(20),
    adress varchar(95),
    city varchar(35),
	state varchar(35),
    country varchar(35),
    zip varchar(20),
	PRIMARY KEY (id),
    FOREIGN KEY (user_type) REFERENCES user_types(id)
);

CREATE TABLE organs (
	id int NOT NULL AUTO_INCREMENT,
    organ_type int NOT NULL,
    donor int NOT NULL,
    institution int NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (organ_type) REFERENCES organ_types(id),
	FOREIGN KEY (donor) REFERENCES users(id),
	FOREIGN KEY (institution) REFERENCES users(id)
);