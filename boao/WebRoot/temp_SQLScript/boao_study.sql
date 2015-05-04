

create table tbl_course(
	id int primary key auto_increment,
	subject varchar(20),		#科目的名称
	category varchar(20),		#科目的类别(理科，文科，，，)
	introduce varchar(2000)		#对这个科目的介绍
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table tbl_grade(
	id int primary key auto_increment,
	subject varchar(20),		#年级的名称
	category varchar(20)		#年纪的类别（小学，中学，大学，，，）
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
