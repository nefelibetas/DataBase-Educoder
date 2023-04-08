USE TestDb;

#请在此处添加实现代码
########## Begin ##########

########## modify the column to top ##########
alter table student modify Name varchar(25) FIRST;


########## modify the column to the rear of another column ##########
alter table student modify DeptId int(11) after Salary;

########## End ##########

DESCRIBE student;