/****** Script for SelectTopNRows command from SSMS 
SELECT TOP 1000 [Sn]
      ,[Sname]
      ,[City]
  FROM [DBClass2].[dbo].[S] ******/
  
/*Create new table for product
use DBClass2
Go 
create table tbl (
id int identity(1, 1) primary key,
name nvarchar(50) null,
city nvarchar(50) null,
adrs ntext
)*/

/*create new sublier
use DBClass2
Go 
insert into S values('F', N'پرديس')

insert into p values('P5', 
N'سنجدی',
'40')

delete from S where Sn=8
 
update s set City=N'مشهد', Sname='E' where Sn=7

select * from p*/

select * from P

select pname as N'تولید کننده', Color as N'رنگ', weight as N'وزن' from P where p.Weight >= 20;

select pname as N'تولید کننده', Color as N'رنگ', weight as N'وزن' from P where p.Weight between 10 and 20 and Color=N'آبی'

select * from p where color like N'س%' order by color desc

select * from p order by color desc, weight Desc

select top (50) percent* from p order by weight asc

select * from p 
select * from s 
select * from sp 

-- create join لیست تولید کنندگانی را دهید که نشان دهد چنتا کالا تولید کرده اند
select 
S.Sname as N'تولید کنندگان', 
S.Sn as N'شماره تولید کننده', 
S.City as N'شهر تولیدی', 
Sp.Qty as N'تعداد' 
from S 
right outer join Sp 
on S.Sn=Sp.Sn 
--------------------------------------
select * from S join Sp on S.Sn=Sp.Sn 

select * from S, SP, P where S.Sn=SP.Sn and p.Pn = Sp.Pn

/*delete table
use DBClass2
Go
drop table tbl*/

use DBClass2
Go
-- nobe
select * from S, P, SP where Sp.Pn=p.Pn and S.Sn=SP.Sn
-- advance
select * from S join SP on SP.Sn=S.Sn join P on Sp.Pn = P.Pn 

select * from S join SP on SP.Sn=S.Sn join P on Sp.Pn = P.Pn where P.Weight > 20 and Sp.Qty > 20

select P.Pname, P.Color, P.Weight, Sp.Qty from P join SP on SP.Pn=P.Pn

-- Hamshahri bashan ba A
select * from S where City = (select city from S where Sname='A')

-- Ham color other Product 
select * from P where Color = (select Color from P where Pname='P2') 

-- Note: query Product haye ham Qty** nabayad zir query 2end 2 meghdar bargardone.. 
select * from P join SP on SP.Pn = P.Pn where SP.Qty =(select SP.Qty from SP where Pn = 2 and Qty>20);

select * from S
select * from P
select * from SP

-- َشماره تولید کننده ای که بیشترین تولید را در کالای پی دو داشته  
select * from SP where Pn=2 and Qty = (select max(Qty) from SP where Pn=2)


-- shomare kala ha ro bede bege chanta tolid shode
select sn, SUM(Qty) from SP where Pn=2

-- sum harkodom az kalaha
select Pn, sum(qty) from SP group by Pn 

-- sum harkodom az kalaha k Suplier tolid karde
select Sn, sum(qty) from SP group by Sn

-- sum harkodom az kalaha k Suplier tolid karde if(sum qty > 50)
select Sn, sum(qty) from SP group by Sn having SUM(Qty) > 20

-- query one 
select S.name, S.family from S join R on S.Sid = R.Sid join C on C.Cid = R.Cid where C.name = 'پایگاه داده' and R.midterm = '921'

-- query two
select P.id, P.family from P left join R on P.id = R.Pid

--querythree
select S.name, S.family from S right join R on S.Sid = R.Sid join C on C.Cid = R.Cid

--queryfour
select S.name, S.family from S left join R on S.Sid = R.Sid join C on C.Cid = R.Cid

--queryfive
select R.sid from R where R.Pid = (select P.pid from P where P.family='رضایی')