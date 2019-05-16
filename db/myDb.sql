CREATE TABLE users(
user_id serial NOT NULL PRIMARY KEY,
name varchar(50) NOT NULL,
last_name varchar(50)
);

CREATE TABLE speaker(
speaker_id serial NOT NULL PRIMARY KEY,
name varchar(50) NOT NULL
);


CREATE TABLE conference(
conference_id serial NOT NULL PRIMARY KEY,
month varchar(50) NOT NULL,
year int NOT NULL
);

CREATE TABLE session(
session_id serial NOT NULL PRIMARY KEY,
conference_id int NOT NULL references conference(conference_id),
session_time varchar(10) NOT NULL,
session_day varchar(10) NOT NULL
);

CREATE TABLE notes(
notes_id serial NOT NULL PRIMARY KEY,
user_id int NOT NULL references users(user_id),
speaker_id int NOT NULL references speaker(speaker_id),
conference_id int NOT NULL references conference(conference_id),
session_id int NOT NULL references session(session_id),
data varchar(255) NOT NULL
);

INSERT INTO users(name) VALUES('Mario');

INSERT INTO users(name) VALUES('Tristan');

INSERT INTO speaker(name) VALUES('Bednar');

INSERT INTO speaker(name) VALUES('Oaks');

INSERT INTO speaker(name) VALUES('Nelson');

INSERT INTO conference(month, year) VALUES('April', 2001);