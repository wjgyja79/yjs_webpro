


SHOW DATABASES;

-- DCL
create user scott identified by 'tiger';
grant all on *.* to scott; -- 권한부여
flush privileges;
revoke all on *.* from scott; --권한 박탈
drop user scott;
-- 특정 데이터 베이스로 들어감
show databases;
use world;			-- world 데이터베이스로 들어감
select database(); -- 현재 들어와 있는 데이터베이스
show tables;
create database kimdb;
use kimdb;
select database();
show tables; 

-- DDL
create table emp(
	empno numeric(4) primary key,
    ename varchar(20) not null,
    nickname varchar(20) unique,
    sal		numeric(7,2) check(sal>0),
    comm	numeric(7,2) default 0
);
desc emp;
drop table if exists emp;
create table emp(
	empno numeric(4) ,
    ename varchar(20) not null,
    nickname varchar(20) ,
    sal		numeric(7,2) ,
    comm	numeric(7,2) default 0,
	primary key(empno),
	unique(nickname),
	check(sal>0)
);
insert into emp values (1111, '홍길동', '동해번쩍', 900, null);
insert into emp values (1111, '홍길동', '동해번쩍', 900, null);
select * from emp;


