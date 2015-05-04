package com.exam.dao;

import java.util.Set;

import com.exam.entity.ExTeacher;

/**
 * 教师 ，数据层类
 * 
 * @author Administrator
 * 
 */
public interface TeacherDao {

	/**
	 * 用于验证教师用户是否合法
	 * 
	 * @param Teacher
	 *            教师对象
	 * @return 数据库中存的教师对象
	 */
	public ExTeacher getTeacherdao(ExTeacher Teacher);

	/**
	 * 用于获得教师的集合
	 * 
	 * @param Teacher
	 *            教师对象
	 * @return 数据库中存的相关教师对象的集合。
	 */
	public Set<ExTeacher> getTeachersdao(ExTeacher Teacher);

	/**
	 * 用于插入教师到数据库
	 * 
	 * @param Teacher
	 *            教师对象
	 * @return 是否插入成功
	 */
	public boolean insertTeacherdao(ExTeacher Teacher);

	/**
	 * 用于删除数据库中相关的教师对象
	 * 
	 * @param Teacher
	 *            教师对象
	 * @return 是否删除成功
	 */
	public boolean deleteTeacherdao(ExTeacher Teacher);

	/**
	 * 用于更新教师到数据库
	 * 
	 * @param Teacher
	 *            教师对象
	 * @return 是否更新成功
	 */
	public boolean updateTeacherdao(ExTeacher Teacher);
}
