select Tags, AverageLikes, CountTotal as count from tagsData where CountTotal>5 order by AverageLikes desc;

select Tags, AverageLikes, CountTotal as count from tagsData order by AverageLikes desc;

select Tags, AverageLikes, CountTotal as count from tagsData where AverageLikes>250 order by AverageLikes desc;

select Mentions, AverageLikes, CountTotal as count from mentionsData where CountTotal>5 order by AverageLikes desc;

select Mentions, AverageLikes, CountTotal as count from mentionsData order by AverageLikes desc;

select Mentions, AverageLikes, CountTotal as count from mentionsData where AverageLikes>250 order by AverageLikes desc;
