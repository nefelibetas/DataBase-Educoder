USE TestDb;

#请在此处添加实现代码
########## Begin ##########

########## add the column ##########
alter table student add sex varchar(2) default '男' after Name; 

 
########## delete the column ##########
alter table student drop Salary;


########## End ##########

DESCRIBE student;