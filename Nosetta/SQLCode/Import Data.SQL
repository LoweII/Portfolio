# Creates two tables in SQL to view the data on mentions and tags (hashtags)

CREATE table mentionsData(
Mentions varchar(64),
CountTotal int,
TotalLikes int,
AverageLikes int
 );

CREATE table tagsData(
Tags varchar(64),
CountTotal int,
TotalLikes int,
AverageLikes int
 );


load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Mentions-Data.csv'
into table mentionsData
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 Rows ;

load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Tags-Data.csv'
into table tagsData
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 Rows ;
