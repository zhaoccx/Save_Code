/*
	文章类型表，可以是普通文章，帮助中心，网站公告等
	hdr
*/
drop table  if exists tbl_article_category;
create table tbl_article_category(
	id int primary key auto_increment,	#主键，自增id
	kind varchar(32),					#类型的种类:文章，帮助，公告等
	subject varchar(32),				#类型名,直接存放中文名
	create_date datetime,				#记录插入的日期
	logo varchar(512),					#logo
	author int,							#外键，引用teacher表的外键
	remark varchar(512)					#备注	
);
select * from tbl_article_category;

drop table  if exists tbl_article ;
create table tbl_article(
	id int primary key auto_increment,	#主键，自增id
	category int ,						#外键，引用tbl_article_category(id),表示文章所属的类型
	subject varchar(128),				#文章的标题
	logo varchar(512),					#logo
	source varchar(128),				#文章的来源
	clicks int,							#文章被浏览的次数
	up_clicks int,						#文章被'顶'的次数
	down_clicks int,					#文章被'踩'的次数
	create_date datetime,				#文章发表的日期
	update_date datetime,				#文章更新(刷新)日期
	body text,							#文章的正文部分
	summary varchar(512),				#文章的摘要，最多256个中文字符
	key_words varchar(64),				#关键字，可用来搜索
	reccomend_category	varchar(32),	#推荐的类型，内容为:top,hot等
	reccomend_date date,				#推荐到期日
	page_url varchar(256),				#页面路径，保留字段
	is_essence int						#是否是精华，用以管理员在网站上面做推荐
);
select * from tbl_article;

/*
	帮助中心视图
*/
drop view if exists view_assist;
create view view_assist as(
	select 
			a.id,
			a.subject,
			a.logo,
			a.body,
			ac.kind,
			ac.subject as category,
			a.create_date 
		from tbl_article a join tbl_article_category ac on  a.category=ac.id 
);
select * from view_assist;
















