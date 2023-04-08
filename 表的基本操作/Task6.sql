USE TestDb;

#请在此处添加实现代码
########## Begin ##########

########## update the value ##########
delete from product where model=1001;
update product set maker='JD' where maker='A';
########## End ##########

SELECT * FROM product;