USE test_wyy_db_guet
GO

SET NOCOUNT ON

 
-- ********** Begin ********** --
-- ********** 此处写第一题的SQL语句 ********** --
select count(cno) from course where credit>2;
-- ********** End ********** --

GO
 
-- ********** Begin ********** --
-- ********** 此处写第二题的SQL语句 ********** --
select sum(credit) from course where cno like "BT%";
-- ********** End ********** --

GO

 
-- ********** Begin ********** --
-- ********** 此处写第三题的SQL语句 ********** --
select substring(cno,1,2),count(cno)
from course
group by substring(cno,1,2)
-- ********** End ********** --

GO