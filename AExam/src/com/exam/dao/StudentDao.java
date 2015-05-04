package com.exam.dao;

import java.util.Set;

import com.exam.entity.ExStudent;

/**
 * 学生 ，数据层类
 * 
 * @author Administrator
 * 
 */
public interface StudentDao {

	/**
	 * 用于验证学生用户是否合法
	 * 
	 * @param student
	 *            学生对象
	 * @return 数据库中存的学生对象
	 */
	public ExStudent getStudentdao(ExStudent student);

	/**
	 * 用于获得学生的集合
	 * 
	 * @param student
	 *            学生对象
	 * @return 数据库中存的相关学生对象的集合。
	 */
	public Set<ExStudent> getStudentsdao(ExStudent student);

	/**
	 * 用于插入学生到数据库
	 * 
	 * @param student
	 *            学生对象
	 * @return 是否插入成功
	 */
	public boolean insertStudentdao(ExStudent student);

	/**
	 * 用于删除数据库中相关的学生对象
	 * 
	 * @param student
	 *            学生对象
	 * @return 是否删除成功
	 */
	public boolean deleteStudentdao(ExStudent student);

	/**
	 * 用于更新学生到数据库
	 * 
	 * @param student
	 *            学生对象
	 * @return 是否更新成功
	 */
	public boolean updateStudentdao(ExStudent student);
}
