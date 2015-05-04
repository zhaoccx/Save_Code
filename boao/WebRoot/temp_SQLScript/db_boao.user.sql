/*
	
	【名	称】	博奥好学网数据库

	【日	期】	2013-07-26

	【作	者】	黄继定

	【脚本说明】
	
		1.	因是在SQLServer2005的环境下做脚本的设计与编写，所以在应用到 MySQL 5.X 前确保将所有
			"IDENTITY"(自增序列)替换为"auto_incremenet"。

		2.	表命名均以“ tbl_[表名] ”开头。

		3.	表下的属性(字段)均采用小写英文单词命名，多个单词以 "_" (下划线)分开。

		4.	视图和存储过程则分别以"view_[视图名称]" 和 "proc_[存储过程名称]" 命名。

		5.	布尔值采用INT代替，默认情况下：0 = yes = true , 1 = n o= false。
		
		6.	数据模型的设计应尽量遵循 "2/3NF" 范式设计，需考虑自身或日后的可扩展性和维护性，但也应该尽量避免使用外键。

		7.	* 3 Class ：User、UserInfo、UserTechInfo

	
*/






/* 
	【名	称】：会员表（学员与教员 tbl_user）

	【最后编辑】：2013-08-14	12:03
	
	【编辑说明】：将原来的tbl_user 与 tbl_user_info 做出了整合。普通用户即一表。教员则需要生成tbl_user_tech表
	
	【字段说明】

			--	基本信息 --------------------------------------------------------

			id					会员标识Id

			login_account		会员的登录帐号	（唯一但不区分大小写,非汉字）

			login_password		会员的登录密码	（区分大小写且需要进行MD5加密）

			category			会员类型，分为“学员”与“教员”两种 ( student || teacher )

			email				电邮地址	

			activate			帐号是否有效，仅用于控制是否运行该会员登录平台( 0=有效、1=无效 )默认为“0”


			--	帐号相关 --------------------------------------------------------

			create_date			帐号的注册时间（格式为：yyyy-MM-dd hh:mm ）

			introducer			注册时可选填的介绍人

			login_times			登录次数

			last_login_date		上一次登录时间（格式为：yyyy-MM-dd hh:mm:ss ）


			--	账户信息 --------------------------------------------------------

			boao_score			帐号当前博奥积分	（非空，默认为0 ）

			boao_coin			帐号当前的博奥金币	（非空，默认为0 ）


			--	帐号安全 --------------------------------------------------------

			pwd_question	(通用字段)	忘记密码的问题,有系统指定

			pwd_answer		(通用字段)	忘记密码的问题的答案,由用户自行设置
		
	
			--	基本信息 --------------------------------------------------------

			user_id			(通用字段)	会员的标识Id (非空、唯一且必须已存在记录)

			nick_name		(通用字段)	用户昵称

			photo			(通用字段)	用户头像


			--	联系方式 --------------------------------------------------------

			mobile_phone	(通用字段)	手机号码 (格式：13800138000)

			telephone		(通用字段)	必填，固定电话 (格式：区号+电话号码)

			QQ				(通用字段)	选填，腾讯QQ（选填）

			MSN				(通用字段)	MSN地址（选填

			province		(通用字段)	省份

			city			(通用字段)	城市

			address			(通用字段)	现居住地/详细地址（省、市、区、街道）

			unit			(通用字段)	小区/花园/单位名称
			

			--	其它相关 --------------------------------------------------------

			recieve_msg		(通用字段)	是否接收站内信（用户 VS 用户）
			
			recieve_notify	(通用字段)	是否接收平台的通知和活动、优惠、推广等信息

*/


	/*	删除tbl_user  */
	DROP TABLE tbl_user;


	--	光标选中开始	--
	CREATE TABLE tbl_user(
		
		id INT PRIMARY KEY AUTO_INCREMENT	NOT NULL,

		login_account	VARCHAR(64)					,
		login_password	VARCHAR(768)				,
		category		VARCHAR(8)					,
		
		email			VARCHAR(128)				,
		
		activate		INT							,

		create_date		DATETIME					,
		introducer		VARCHAR(64)					,
		login_times		INT							,
		last_login_date	DATETIME					,

		boao_score		INT							,
		boao_coint		DECIMAL						,
		
		pwd_question	VARCHAR(128)				,
		pwd_answer		VARCHAR(128)				,

		nick_name		VARCHAR(24)					,
		photo			VARCHAR(512)				,

		province		VARCHAR(24)					,
		city			VARCHAR(12)					,
		address			VARCHAR(256)				,
		unit			VARCHAR(128)				,
		
		mobile_phone	VARCHAR(24)					,
		telephone		VARCHAR(32)					,
		qq				VARCHAR(18)					,
		msn				VARCHAR(128)				,
		
		recieve_msg		INT							,
		recieve_notify	INT

	)ENGINE=InnoDB DEFAULT CHARSET=utf8;
	--	光标选中结束	--






/*


	【名	称】：教员信息与资质表(tbl_user_tech)

	【最后编辑】：2013-08-07
	
	【字段说明】

		--	基本信息 --------------------------------------------------------

		user_id			会员的标识Id (非空、唯一且必须已存在记录)

		validate		(仅对教员)	帐号（教员）是否通过审核和验证此值仅对‘会员类型’为’教员‘的会员产生作用
									VAL1 = 等待验证（Default）
									VAL2 = 验证审核
									VAL3 = 验证失败 [失败原因由系统站内消息告知]

		validate_date	(仅对教员)	验证/审核的操作时间


		--	教员信息 --------------------------------------------------------	

		real_name		(仅对教员)	真实姓名

		gender			(仅对教员)	性别

		birthdate		(仅对教员)	出生年月日

		origin			(仅对教员)	籍贯,

		id_card			(仅对教员)	身份证号码

		occupation		(仅对教员)	当前身份或职业，例如：在读大学生、在职幼儿教师、在职初中教师、退休教师...

		high_school		(仅对教员)	毕业的高中学校名称

		university		(仅对教员)	毕业或正在就读的大学名称

		majoy			(仅对教员)	专业或主修课程名称

		education		(仅对教员)	最高学历


		--	授课信息 --------------------------------------------------------	
						
		subjects		(仅对教员)	授课信息：教员可以或希望从事的授课科目，如高一数学、小学英语..
								   （格式：科目类型由系统指定，多个科目则以"|"符进行区分累加）

		evaluation		(仅对教员)	教学能力或自我评价（需要过滤掉相关联系方式）

		tech_age		(仅对教员)	教龄，单位年
		
		tech_style		(仅对教员)	教学风格，如：理智型 情感型 幽默型 技巧型 自然型 ...
		
		tech_way		(仅对教员)	辅导方式，如：老师上门、学生上门、网络家教、住家家教.. 	
									（格式：辅导方式由系统指定，多种方式则以"|"符进行区分累加）	
	
		tech_language	(仅对教员)	教学语言，如：普通话、广东话、英、日、韩、法、德、俄语等 
									（格式：教学语言由系统指定，多种语言则以"|"符进行区分累加）	
				
		tech_salary		(仅对教员)	教员的教学薪水要求，如100元每小时，90元每节课、每节课45分钟...
									(仅为客观的期望值)
		

		--	授课时间 --------------------------------------------------------	
		
		【排班说明】	星期一 至 星期七 均以数字 1、2、3、4、5、6、7 代表。

		morning			(仅对教员)	早上.（格式：一周里七天（1~7）多天则以"|"符进行区分和累加）	

		noon			(仅对教员)	中午.（格式：一周里七天（1~7）多天则以"|"符进行区分和累加）	

		night			(仅对教员)	晚上.（格式：一周里七天（1~7）多天则以"|"符进行区分和累加）	


*/

	/*	删除表	tbl_user_tech */
	DROP TABLE tbl_user_tech;


	--	光标选中开始	--
	CREATE TABLE tbl_user_tech(
	
		user_id			INT	 PRIMARY KEY,

		validate		VARCHAR(512)	,
		validate_date	DATETIME		,		
		
		real_name		VARCHAR(32)		,
		gender			VARCHAR(2)		CHECK(gender='男' OR gender='女') ,
		birthdate		VARCHAR(24)		,
		
		origin			VARCHAR(18)		,
		id_card			VARCHAR(24)		,
		occupation		VARCHAR(256)	,
		high_school		VARCHAR(96)		,
		university		VARCHAR(128)	,
		majoy			VARCHAR(256)	,
		education		VARCHAR(64)		,	
		
		subjects		TEXT			,
		evaluation		TEXT			,
		tech_age		INT				,
		tech_style		VARCHAR(32)		,
		tech_way		VARCHAR(128)	,
		tech_language	VARCHAR(256)	,
		tech_salary		VARCHAR(384)	,

		morning			VARCHAR(32)		,
		noon			VARCHAR(32)		,
		night			VARCHAR(32)		,
		--	外键约束 --
		CONSTRAINT `fk_tech_user_id`  FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`)
		
	)ENGINE=InnoDB DEFAULT CHARSET=utf8;
	--	光标选中结束	--




	











