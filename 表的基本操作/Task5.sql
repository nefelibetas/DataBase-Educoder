USE TestDb;

#请在此处添加实现代码
########## Begin ##########

########## bundle insert the value ##########
insert into product (maker,model,type) values ('X',5001,'pc'),('X',6009,'laptop'),('Y',7809,'printer');

load data local infile 'src1/step1/product.csv' into table product character set gbk fields terminated  by ',';
########## End ##########
SELECT * FROM product;