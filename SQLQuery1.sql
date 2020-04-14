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

insert into  UserInfo values('1427865035@qq.com','����','000','13285280135')

select count(1) from UserInfo where UserName='����' and Pass='000'


create table Post
(
	Id           int primary key identity,
	Headline    varchar(5000),   --���ӱ���
	Content    varchar(5000),
	UptTime      datetime,
	Remark        varchar(5000),
	UserInfoId  int,
	Reply       varchar(5000),
)
insert into Post values('Ajaxʵ�֣�ԭ��JS��JQ��4��ʹ�÷�ʽ','Ajax ��һ�����������¼���������ҳ������£��ܹ�������ҳ�������ݵļ�����ʵ��ҳ��� web ������֮�����ݵ��첽���䡣',
                         GETDATE(),'��ƪ���»�ȱ��һ����Ҫ��֪ʶ��','1','')

select * from Post join UserInfo on Post.UserInfoId=UserInfo.Id


drop table Post

create table BBS
(
	Id           int primary key identity,
	BContent     varchar(5000),
	PostId        int,
)

select * from BBS