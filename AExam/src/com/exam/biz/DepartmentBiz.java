package com.exam.biz;

import java.util.Set;

import com.exam.entity.ExDepartment;

/**
 * 教师部门 ，业务层类
 * 
 * @author Administrator
 * 
 */
public interface DepartmentBiz {

	/**
	 * 用于验证教师部门用户是否合法
	 * 
	 * @param Department
	 *            教师部门对象
	 * @return 数据库中存的教师部门对象
	 */
	public ExDepartment getDepartmentbiz(ExDepartment Department);

	/**
	 * 用于获得教师部门的集合
	 * 
	 * @param Department
	 *            教师部门对象
	 * @return 数据库中存的相关教师部门对象的集合。
	 */
	public Set<ExDepartment> getDepartmentsbiz(ExDepartment Department);

	/**
	 * 用于插入教师部门到数据库
	 * 
	 * @param Department
	 *            教师部门对象
	 * @return 是否插入成功
	 */
	public boolean insertDepartmentbiz(ExDepartment Department);

	/**
	 * 用于删除数据库中相关的教师部门对象
	 * 
	 * @param Department
	 *            教师部门对象
	 * @return 是否删除成功
	 */
	public boolean deleteDepartmentbiz(ExDepartment Department);

	/**
	 * 用于更新教师部门到数据库
	 * 
	 * @param Department
	 *            教师部门对象
	 * @return 是否更新成功
	 */
	public boolean updateDepartmentbiz(ExDepartment Department);
}
