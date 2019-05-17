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
game_type varchar(50)NOT NULL
);


CREATE TABLE borrow(
borrow_id serial NOT NULL PRIMARY KEY,
day varchar(50) NOT NULL,
hourDay int NOT NULL
);

CREATE TABLE history(
history_id serial NOT NULL PRIMARY KEY,
game_id int NOT NULL REFERENCES conference(conference_id),
user_id int REFERENCES users(user_id),
day varchar(50) REFERENCES borrow(day)
);

CREATE TABLE notes(
notes_id serial NOT NULL PRIMARY KEY,
user_id int NOT NULL references users(user_id),
game_id int NOT NULL references speaker(speaker_id),
message_user varchar(300)
);

SELECT * FROM pg_stat_activity;