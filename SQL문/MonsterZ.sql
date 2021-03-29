create database MonsterZ

use MonsterZ

--drop table dbo.member

create table member(
	mem_idx int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	userid varchar(20) NOT NULL,
	pwd varchar(20) NOT NULL,
	username varchar(20) NOT NULL,
	year varchar(10) NOT NULL,
	month varchar(10) NOT NULL,
	day varchar(10) NOT NULL,
	phone varchar(50) NOT NULL,
	regdate datetime DEFAULT(getdate()) NULL)