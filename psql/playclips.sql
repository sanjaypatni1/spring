drop table users;
drop table clips;
drop table message;
drop table playclips;
drop table score;
drop table event;
drop table usergroup;

CREATE TABLE if not exists users (
ID  SERIAL PRIMARY KEY,
login varchar(255) NOT NULL,
insertion_date date NOT NULL DEFAULT CURRENT_TIMESTAMP,
email varchar(120) NOT NULL,
password varchar(60) NOT NULL,
access_token varchar(60) NOT NULL,
auth  varchar(25) NOT NULL,
phone varchar(20) NOT NULL,
role varchar(20) NOT NULL,
application varchar(20) NOT NULL,
usergroup varchar(50)
);

CREATE UNIQUE INDEX i1 ON users (username);

CREATE TABLE if not exists clips (
ID  SERIAL PRIMARY KEY,
login varchar(255) NOT NULL,
title varchar(145) NOT NULL,
feed varchar(145) DEFAULT NULL,
insertion_date date NOT NULL DEFAULT CURRENT_TIMESTAMP,
description varchar(500) DEFAULT NULL,
link varchar(145) DEFAULT NULL,
thumbnail varchar(145) ,
application varchar(80) NOT NULL,
file_name varchar(80) ,
type varchar(145) DEFAULT NULL
);
CREATE UNIQUE INDEX i2 ON clips (title);


CREATE TABLE if not exists playclips (
ID  SERIAL PRIMARY KEY,
login varchar(255) NOT NULL,
title varchar(145) NOT NULL,
description varchar(500) DEFAULT NULL,
type  varchar(10) DEFAULT NULL,
application  varchar(80) DEFAULT NULL,
start_date  varchar(30) DEFAULT NULL,
end_date  varchar(30) DEFAULT NULL,
likes int DEFAULT NULL,
obj json not null
);
CREATE UNIQUE INDEX i3 ON playclips (title);

CREATE TABLE if not exists message (
ID  SERIAL PRIMARY KEY,
login varchar(255)  NOT NULL ,
message  varchar(255) NOT NULL,
application  varchar(50) NOT NULL,
usergroup  varchar(50) NOT NULL
);
CREATE TABLE if not exists usergroup (
ID  SERIAL PRIMARY KEY,
user_id int  NOT NULL ,
usergroup  varchar(50) NOT NULL
);
CREATE TABLE if not exists score (
ID  SERIAL PRIMARY KEY,
title varchar(50) NOT NULL,
team varchar(50) NOT NULL,
score int NOT NULL ,
application  varchar(50) NOT NULL
);
