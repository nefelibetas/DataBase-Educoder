USE test_wyy_db_guet
Go

SET NOCOUNT ON

---------- 第1题 ----------
-- ********** Begin ********** --
select hd from V_test
group by hd
having  count(model)<3;
-- ********** End ********** --

GO

---------- 第2题 ----------
-- ********** Begin ********** --
select max(avgSpeed) 
from ( select avg(speed) as avgSpeed from V_test group by maker)
as avgTable;
-- ********** End ********** --

GO

---------- 第3题 ----------
-- ********** Begin ********** --
select maker,count(*) 
from V_test 
where price>1000
group by maker;

-- ********** End ********** --

GO
---------- 第4题 ----------
-- ********** Begin ********** --
select maker,type,avg(price) from V_test group by maker,type;


-- ********** End ********** --

GO
