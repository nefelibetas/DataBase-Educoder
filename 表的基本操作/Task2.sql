USE TestDb;

#请在此处添加实现代码
########## Begin ##########

########## change the column name ##########
alter table student change Id stuid int(11);

########## change the data type of column ##########
alter table student modify Name varchar(30);


########## End ##########

DESCRIBE student;