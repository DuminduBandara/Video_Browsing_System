
create table video (
	videoTag varchar(100),
    videoName varchar(100),
	descript varchar(255),
    likeCount int,
    dislikeCount int,
    userName varchar(100),
    primary key(videoTag),
    foreign key(userName) references viduser(userName)
);

create table comments (
	videoTag varchar(100),
    comments varchar(255),
    foreign key(videoTag) references video(videoTag)
);

create table vidPlayList (
	playID varchar(100),
    playName varchar(100),
    userName varchar(100),
    Primary key(playID),
    foreign key(userName) references viduser(userName)
);

create table playListVideo (
	videoTag varchar(100),
    userName varchar(100),
    playID varchar(100),
    primary key(videoTag, userName, playID),
    foreign key(userName) references viduser(userName),
    foreign key(videoTag) references video(videoTag),
    foreign key(playID) references vidPlayList(playID)
);
