/****** Script for SelectTopNRows command from SSMS  ******/
use university
GO 
create table S (
	id int identity(1, 1) not null,
	Sid nvarchar(20) not null primary key,
	Sname nvarchar(50) null,
	Sfamily nvarchar(50) null,
	Saddress nvarchar(50) null,
)
create table C (
	id int identity(1, 1) not null,
	Cid nvarchar(20) not null primary key,
	Cname nvarchar(50) null,
	unit int null,
)
create table R (
	id int identity(1, 1) not null primary key,
	Sid nvarchar(20) not null,
	Cid nvarchar(20) null,
	Pid nvarchar(20) null,
	Rmid nvarchar(50) null,
	Rnum int null,
)

  use university 
  Go
  insert into S values('88001', N'محمد', N'حسینی', N'تهران')
  insert into S values('88002', N'رضا', N'کریمی', N'شیراز')
  insert into S values('88003', N'زهرا', N'نادری', N'تهران')
  insert into S values('88004', N'علی', N'غفاری', N'همدان')
  insert into S values('88005', N'علیرضا', N'سلطانی', N'پردیس')
  
  insert into C values('1111', N'پایگاه داده',3)
  insert into C values('1112', N'مهندسی نرم افزار',3)
  insert into C values('1113', N'مدار منطقی',3)
  insert into C values('1114', N'معماری کامپیوتر',3)
  
  insert into P values('111', N'محمود', N'رضایی', N'دکتری')
  insert into P values('122', N'محسن', N'نعیمی', N'ارشد')
  insert into P values('133', N'میلاد', N'مرادی', N'ارشد')
  insert into P values('144', N'فاطمه', N'نوری', N'دکتری')
  
  insert into R values('88001', N'1111', N'111', N'921', 19)
  insert into R values('88001', N'1114', N'122', N'921', 20)
  insert into R values('88002', N'1113', N'133', N'921', 17)
  insert into R values('88002', N'1114', N'122', N'921', 18)
  insert into R values('88003', N'1111', N'111', N'921', 20)
  insert into R values('88002', N'1111', N'111', N'921', 19)
  insert into R values('88002', N'1112', N'113', N'921', 19)
  
  delete from R
  
  select * from S 
  select * from C
  select * from P 
  select * from R 
  
  use university
	GO 
  -- query set 1
	select distinct S.Sname, S.Sfamily from S join R on S.Sid=R.Sid join C on C.Cid=R.Cid where C.Cname=N'پایگاه داده' and R.Rmid='921'
  -- bad way
	select S.Sfamily, S.Sname from S where S.Sid in( select R.Sid from R where R.Cid = (select C.Cid from C where Cname=N'پایگاه داده' )) 
	
  -- query set 2
	select * from P where P.Pid = ( select p.pid from p except select r.Pid from r)
	
  -- query set 3
   select distinct S.Sname, S.Sfamily from S inner join R on S.Sid=R.Sid 
   
  -- query set 4
	select * from S where S.Sid = ( select S.Sid from S except select R.Sid from R ) 
	select * from S where S.Sid in(select S.Sid from S except select R.Sid from R)
	
  -- query set 5
	select R.Sid from R where R.Pid = ( select P.Pid from P where P.Pfamily = N'رضایی') order by R.Sid Asc
	
	-- Practice for math functional 
	select R.Sid, AVG(Rnum) from R group by R.Sid
     
    --select distinct S.Sid, S.Sname, S.Sfamily, R.Cid from S inner join R on R.Sid=S.Sid 
    
	
	