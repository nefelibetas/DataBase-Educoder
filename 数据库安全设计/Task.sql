/*
1、数据库维护人员（1人）：可对订单数据库进行任何操作。
账号名称：system_dbowner，密码为usercode1，允许任何ip通过此用户连接数据库
*/
grant all on 订单数据库.* to 'system_dbowner'@'%' identified by 'usercode1';
/*
2、数据录入人员（2人）：可对订单数据库中所有表进行插入、删除、更新操作，
（注意：为了顺利进行删除更新操作，也需要能有查询权限）
不能创建与修改表结构及其它授权等操作。
账号名称：datarecorder1, datarecorder2，密码为usercode1，允许任何ip通过此用户连接数据库
*/
grant select,insert,update,delete on 订单数据库.* to 'datarecorder1'@'%' identified by 'usercode1';
grant select,insert,update,delete on 订单数据库.* to 'datarecorder2'@'%' identified by 'usercode1';
/*
3、订单管理人员（2人）：能对订单数据库中的订单表和订货项目表进行插入、删除、更新操作，
其它表仅能查询（注意：为了顺利进行删除更新操作，订单表和订货项目表也需要能有查询权限）。
不能创建与修改表结构及其它授权等操作。
账号名称：order_1,order_2，密码为usercode1，允许任何ip通过此用户连接数据库
*/
grant select on 订单数据库.* to 'order_1'@'%' identified by 'usercode1';
grant select on 订单数据库.* to 'order_2'@'%' identified by 'usercode1';

grant insert,update,delete on 订单数据库.订单 to 'order_1'@'%' identified by 'usercode1';
grant insert,update,delete on 订单数据库.订单 to 'order_2'@'%' identified by 'usercode1';
grant insert,update,delete on 订单数据库.订货项目 to 'order_1'@'%' identified by 'usercode1';
grant insert,update,delete on 订单数据库.订货项目 to 'order_2'@'%' identified by 'usercode1';
/*
4、客户管理人员（2人）：能对订单数据库中的代理商表和客户表进行插入、删除、更新，
其它表仅能查询（注意：为了顺利进行删除更新操作，代理商表和客户表也需要能有查询权限）。
不能创建与修改表结构及其它授权等操作。
账号名称：customer_1, customer_2，密码为usercode1，允许任何ip通过此用户连接数据库
*/
grant usage on *.* to 'customer_2'@'%' identified by 'usercode1';
grant usage on *.* to 'customer_1'@'%' identified by 'usercode1';

grant select on 订单数据库.* to 'customer_2'@'%' identified by 'usercode1';
grant select on 订单数据库.* to 'customer_1'@'%' identified by 'usercode1';

grant insert,update,delete on 订单数据库.客户 to 'customer_2'@'%' identified by 'usercode1';
grant insert,update,delete on 订单数据库.客户 to 'customer_1'@'%' identified by 'usercode1';
grant insert,update,delete on 订单数据库.代理商 to 'customer_2'@'%' identified by 'usercode1';
grant insert,update,delete on 订单数据库.代理商 to 'customer_1'@'%' identified by 'usercode1';


