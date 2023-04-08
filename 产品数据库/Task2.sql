 USE test_product;

####################
#请在此处添加实现代码
########## Begin ##########
-- 第一题
select hd,count(*) from pc group by hd having count(hd)<=2;

-- 第二题
select distinct maker from pc,product 
where pc.model=product.model
and pc.speed=(select max(speed) from pc); 

-- 第三题
select maker from (
    select model,maker from product
    where model in(
        select model from pc
    ) 
) as a group by maker having count(maker)=2;

-- 第四题
select maker from (
    select maker,model from product where model in (
        select model from pc where speed > 2
    ) 
    union
    select maker,model from product where model in (
        select model from laptop where speed > 2
    ) 
) as c 
group by maker 
having count(*) >= 2;

-- 第五题
select maker from product group by maker order by count(model) desc limit 1;
########## End ##########
 