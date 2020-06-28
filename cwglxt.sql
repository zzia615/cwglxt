create database cwglxt
go

use cwglxt
go
--用户信息表
create table yhxx
(
yhzh nvarchar(20) not null primary key, --用户账号
yhxm nvarchar(20) not null,--用户名称
yhmm nvarchar(50) not null --用户密码
)
go

insert into yhxx(yhzh,yhxm,yhmm) values('admin','admin','admin')
go

--凭证信息
create table pzxx
(
id int identity(1,1) not null primary key, --主键
mc nvarchar(50) not null, --名称
lb nvarchar(100) not null, --凭证文件URL
rq datetime default getdate() not null --日期
)
go
--收费管理
create table sfxx
(
id int identity(1,1) not null primary key, --主键
mc nvarchar(50) not null,--名称
lb nvarchar(50) not null,--类别
je numeric(12,2) default 0 not null,--凭证
sm nvarchar(500) null--说明
)
go
--收费信息
create table sfxx
(
id int identity(1,1) not null primary key, --主键
mc nvarchar(50) not null,--名称
lb nvarchar(50) not null,--类别
je numeric(12,2) default 0 not null,--凭证
sm nvarchar(500) null,--说明
rq datetime default getdate() not null
)
go

--收费信息
create table sfxx
(
id int identity(1,1) not null primary key, --主键
mc nvarchar(50) not null,--名称
lb nvarchar(50) not null,--类别
je numeric(12,2) default 0 not null,--凭证
sm nvarchar(500) null,--说明
rq datetime default getdate() not null
)
go