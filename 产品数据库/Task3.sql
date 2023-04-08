  USE test_product;
####################
#请在此处添加实现代码
########## Begin ##########
update pc set price = price + 200 where pc.model in (
  select model from product where maker = 'A'
);

delete from laptop where laptop.model in (
  select model from product where maker = 'B'
);
delete from product where maker = 'B' and type = 'laptop';

insert into product values('K',9001,'pc'),('K',9002,'laptop');

delete from product where product.model in (
  select model from printer where type = 'ink-jet'
);
delete from printer where type = 'ink-jet'; 
########## End ##########

select * from product order by maker;
select * from pc order by model;
select * from laptop order by model;
select * from printer order by model;
 