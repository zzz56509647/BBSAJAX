create database Day412
go
use Day412


create table UserInfo
(
	Id        int primary key identity,
	Mailbox    varchar(100),
	UserName   varchar(50),
	Pass      varchar(50),
	Phone     varchar(50),
)

insert into  UserInfo values('1427865035@qq.com','张三','000','13285280135')

select count(1) from UserInfo where UserName='张三' and Pass='000'


create table Post
(
	Id           int primary key identity,
	Headline    varchar(5000),   --帖子标题
	Content    varchar(5000),
	UptTime      datetime,
	Remark        varchar(5000),
	UserInfoId  int,
	Reply       varchar(5000),
)
insert into Post values('Ajax实现：原生JS和JQ的4种使用方式','Ajax 是一种在无需重新加载整个网页的情况下，能够更新网页部分内容的技术，实现页面和 web 服务器之间数据的异步传输。',
                         GETDATE(),'本篇文章还缺少一个重要的知识点','1','')

select * from Post join UserInfo on Post.UserInfoId=UserInfo.Id


drop table Post

create table BBS
(
	Id           int primary key identity,
	BContent     varchar(5000),
	PostId        int,
)

select * from BBS