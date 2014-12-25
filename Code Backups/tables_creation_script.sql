create database ugly_ind;
use ugly_ind;

create table USERS(
UID bigint primary key auto_increment,
username varchar(50),
email_address varchar(100),
first_name varchar(100),
last_name varchar(100),
user_agent varchar(100),
created_time datetime
);

create table USER_TICKET(
USER_TICKET_ID bigint primary key auto_increment,
TICKET_ID VARCHAR(150),
UID bigint,
created_time datetime
);

create table SPOT(
SPOT_ID bigint Primary key auto_increment,
latitude float,
longitude float,
current_status int,
created_time datetime, 
modified_time datetime
);

create table SPOT_EVENT(
SPOT_EVENT_ID bigint Primary key auto_increment,
SPOT_ID bigint,
created_time datetime, 
modified_time datetime
);

create table EVENT_STATUS(
EVENT_STATUS bigint Primary key auto_increment,
SPOT_EVENT_ID bigint,
stat int,
UID bigint,
reported_time datetime,
created_time datetime, 
modified_time datetime
);

create table EVENTS_MEMBERS(
EVENTS_MEMBERS_ID bigint Primary key auto_increment,
EVENT_ID bigint,
UID bigint,
created_time datetime, 
modified_time datetime
);