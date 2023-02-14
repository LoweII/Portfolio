select Tags, AverageLikes, CountTotal as count from tagsData where CountTotal>5 order by AverageLikes desc
into outfile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/tagsData1.csv'
fields enclosed by '"'
terminated by ','
escaped by '"'
lines terminated by '\r\n';

select Tags, AverageLikes, CountTotal as count from tagsData order by AverageLikes desc
into outfile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/tagsData2.csv'
fields enclosed by '"'
terminated by ','
escaped by '"'
lines terminated by '\r\n';

select Tags, AverageLikes, CountTotal as count from tagsData where AverageLikes>250 order by AverageLikes desc
into outfile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/tagsData3.csv'
fields enclosed by '"'
terminated by ','
escaped by '"'
lines terminated by '\r\n';

select Mentions, AverageLikes, CountTotal as count from mentionsData where CountTotal>5 order by AverageLikes desc
into outfile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/mentionsData1.csv'
fields enclosed by '"'
terminated by ','
escaped by '"'
lines terminated by '\r\n';

select Mentions, AverageLikes, CountTotal as count from mentionsData order by AverageLikes desc
into outfile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/mentionsData2.csv'
fields enclosed by '"'
terminated by ','
escaped by '"'
lines terminated by '\r\n';

select Mentions, AverageLikes, CountTotal as count from mentionsData where AverageLikes>250 order by AverageLikes desc
into outfile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/mentionsData3.csv'
fields enclosed by '"'
terminated by ','
escaped by '"'
lines terminated by '\r\n';

