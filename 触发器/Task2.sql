USE studentdb
go

SET NOCOUNT ON 
go
--********** create trigger_insert_score  **********--
--********** Begin **********--
create trigger trigger_insert_score
on score
after insert
as
begin
if not exists(select * from student where sno in(select sno from inserted))
    begin
        rollback transaction
        begin transaction
    end
end	
--********** End **********--
go
delete from score
go
insert into score values('1001','2001','89.5')
go
insert into score values('1002','2001','95')
go
insert into score values('1011','2001','88')
go
select * from score
go


--********** create trigger_delete_student  **********--
--********** Begin **********--
create trigger trigger_delete_student
on student
for delete
as
begin
    delete score where sno in (select sno from deleted)
end
--********** End **********--
go
delete from student where sno='1001'
go
select * from student
go
select * from score
go

--********** create trigger_protect_grade **********--
--********** Begin **********--
create trigger trigger_protect_grade
on score 
for update
as
begin
    if UPDATE(grade)
    begin
        raiserror('更新grade操作被禁止',1,1)
        rollback transaction
        begin transaction
    end
end
--********** End **********--
go
update score set grade=84 where sno='1002'
go
select * from score
go