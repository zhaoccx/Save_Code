package com.exam.biz;

import java.util.Set;

import com.exam.entity.ExTeacher;

/**
 * 教师 ，业务层类
 * 
 * @author Administrator
 * 
 */
public interface TeacherBiz {

	/**
	 * 用于验证教师用户是否合法
	 * 
	 * @param Teacher
	 *            教师对象
	 * @return 数据库中存的教师对象
	 */
	public ExTeacher getTeacherbiz(ExTeacher Teacher);

	/**
	 * 用于获得教师的集合
	 * 
	 * @param Teacher
	 *            教师对象
	 * @return 数据库中存的相关教师对象的集合。
	 */
	public Set<ExTeacher> getTeachersbiz(ExTeacher Teacher);

	/**
	 * 用于插入教师到数据库
	 * 
	 * @param Teacher
	 *            教师对象
	 * @return 是否插入成功
	 */
	public boolean insertTeacherbiz(ExTeacher Teacher);

	/**
	 * 用于删除数据库中相关的教师对象
	 * 
	 * @param Teacher
	 *            教师对象
	 * @return 是否删除成功
	 */
	public boolean deleteTeacherbiz(ExTeacher Teacher);

	/**
	 * 用于更新教师到数据库
	 * 
	 * @param Teacher
	 *            教师对象
	 * @return 是否更新成功
	 */
	public boolean updateTeacherbiz(ExTeacher Teacher);
}