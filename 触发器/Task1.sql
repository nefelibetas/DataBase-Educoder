USE accountDB
go

SET NOCOUNT ON 
go
--********** create trigger_insert_operator  **********--
--********** Begin **********--
create trigger triggrt_insert_opertor
on operator
after insert
as
Begin
  declare @accno varchar(50),@type varchar(10),@num float,@count_num int,@count_num1 int
  select @accno=accno,@type=type,@num=num from inserted
  if @type='in'
    Begin
      select @count_num =count(accountno) from account where @accno=accountno 
      if @count_num>0
      Begin
        update account set total=total+@num where @accno=accountno
        end
      else 
      Begin
        insert into account(accountno,total) values(@accno,@num)
      End
    End
  else if (@type='out')
    Begin
      select @count_num =count(accountno) from account where @accno=accountno
      select @count_num1 =count(accountno) from account where @accno=accountno and total >@num
      if (@count_num=0 or @count_num1=0)
          Begin
            raiserror("插入的账户异常，操作被禁止",1,1)
            
          end 
      else  
        Begin
          update account set total=total-@num where accountno=@accno
        End
    End
  End;
--********** End **********--
go

--以下代码请勿删除
insert into operator(accno,type,num) values('002','in',878)
go
insert into operator(accno,type,num) values('003','in',608)
go
insert into operator(accno,type,num) values('002','out',90)
go
insert into operator(accno,type,num) values('001','out',50)
go
insert into operator(accno,type,num) values('004','out',50)
go
select * from account
go