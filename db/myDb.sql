CREATE TABLE users(
user_id serial NOT NULL PRIMARY KEY,
name varchar(50) NOT NULL,
last_name varchar(50) NOT NULL,
password varchar (50) NOT NULL,
phone_number int NOT NULL
);

CREATE TABLE games(
game_id serial NOT NULL PRIMARY KEY,
game_name varchar(50) NOT NULL,
user_id int references users(user_id),
type varchar(50)NOT NULL
);


CREATE TABLE borrow(
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

