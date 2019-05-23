CREATE TABLE usersOwn(
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

-- Setup extensions

create extension if not exists "uuid-ossp";

-- Create tables
DROP TABLE IF EXISTS teach04_scripture;
CREATE TABLE teach04_scripture
(
    id UUID NOT NULL DEFAULT uuid_generate_v4(),
    book VARCHAR(50) NOT NULL,
    chapter NUMERIC(3,0) NOT NULL,
    verse NUMERIC(3,0) NOT NULL,
    content TEXT NOT NULL,
    -- key setup
    PRIMARY KEY (id)
);
-- inserting into teach04_scripture
INSERT INTO teach04_scripture
    (book, chapter, verse, content)
VALUES
    ('John', 1, 5, 'And the light shineth in darkness; and the darkness comprehended it not.'),
    ('Doctrine and Covenants', 88, 49, 'The light shineth in darkness, and the darkness comprehendeth it not; nevertheless, the day shall come when you shall comprehend even God, being quickened in him and by him.'),
    ('Doctrine and Covenants', 93, 28, 'He that keepeth his commandments receiveth btruth and clight, until he is glorified in truth and dknoweth all things.'),
    ('Mosiah', 16, 9, 'He is the light and the life of the world; yea, a light that is endless, that can never be darkened; yea, and also a life which is endless, that there can be no more death.');



 