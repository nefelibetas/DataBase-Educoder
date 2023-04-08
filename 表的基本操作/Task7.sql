USE TestDb;

#请在此处添加实现代码
########## Begin ##########

########## delete the value ##########
delete from printer where price>800;

delete from product where not exists (
    SELECT model from printer where printer.model=product.model
);
########## End ##########

SELECT * FROM product;
SELECT * FROM printer;