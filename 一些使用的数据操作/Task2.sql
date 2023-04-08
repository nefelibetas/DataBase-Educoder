USE test_wyy_db_guet
Go

SET NOCOUNT ON


-- ********** Begin ********** --
---------- 第一题----------
select snative,count(*) from student group by snative; 
-- ********** End ********** --
GO


-- ********** Begin ********** --
---------- 第二题----------
select sum(c.credit) from course c
inner join (select distinct cno from sc) s
on c.cno=s.cno; 
-- ********** End ********** --
GO

-- ********** Begin ********** --
---------- 第三题----------
select c.cno,s.grade,count(s.sno)
from course c 
inner join sc s
on c.cno=s.cno
group by s.grade,c.cno;
-- ********** End ********** --
GO