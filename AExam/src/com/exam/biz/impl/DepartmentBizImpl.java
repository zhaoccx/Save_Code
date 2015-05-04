package com.exam.biz.impl;

import java.util.Set;

import com.exam.biz.DepartmentBiz;
import com.exam.dao.DepartmentDao;
import com.exam.entity.ExDepartment;

public class DepartmentBizImpl implements DepartmentBiz {

	/**
	 * 部门表数据访问层接口
	 */
	private DepartmentDao departmentDao;

	/**
	 * @return the departmentDao
	 */
	public DepartmentDao getDepartmentDao() {
		return departmentDao;
	}

	/**
	 * @param departmentDao
	 *            the departmentDao to set
	 */
	public void setDepartmentDao(DepartmentDao departmentDao) {
		this.departmentDao = departmentDao;
	}

	public ExDepartment getDepartmentbiz(ExDepartment Department) {
		// TODO Auto-generated method stub
		return null;
	}

	public Set<ExDepartment> getDepartmentsbiz(ExDepartment Department) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean insertDepartmentbiz(ExDepartment Department) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean deleteDepartmentbiz(ExDepartment Department) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean updateDepartmentbiz(ExDepartment Department) {
		// TODO Auto-generated method stub
		return false;
	}
}
