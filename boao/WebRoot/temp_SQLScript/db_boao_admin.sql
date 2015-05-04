/*
	管理员表
*/

create table if not exists tbl_admin(
	id int primary key auto_increment,#主键，自增id
	username varchar(32),							#用户名，拿来登录
	password varchar(512),						#密码，存md5加密后的数据
	create_date datetime,							#管理员的创建日期
	last_login_date datetime					#上一次登录时间
);
select * from tbl_admin;
