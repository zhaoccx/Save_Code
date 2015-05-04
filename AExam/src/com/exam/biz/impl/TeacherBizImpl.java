package com.exam.biz.impl;

import java.util.Set;

import com.exam.biz.TeacherBiz;
import com.exam.dao.TeacherDao;
import com.exam.entity.ExTeacher;

public class TeacherBizImpl implements TeacherBiz {

	/**
	 * 教师表数据访问层接口
	 */
	private TeacherDao teacherDao;

	public ExTeacher getTeacherbiz(ExTeacher Teacher) {
		if (null == Teacher) {
			return null;
		}
		else {
			ExTeacher teacher2 = this.teacherDao.getTeacherdao(Teacher);
			if (teacher2.getTeachpass().equals(Teacher.getTeachpass())) {
				return teacher2;
			}
			else {
				return null;
			}
		}
	}

	public Set<ExTeacher> getTeachersbiz(ExTeacher Teacher) {
		Set<ExTeacher> set = this.teacherDao.getTeachersdao(Teacher);
		return set;
	}

	public boolean insertTeacherbiz(ExTeacher Teacher) {
		if (null == Teacher.getTeachnum()) {
			return false;
		}
		else {
			this.teacherDao.insertTeacherdao(Teacher);
			return true;
		}
	}

	public boolean deleteTeacherbiz(ExTeacher Teacher) {
		if (null == Teacher.getTeachnum()) {
			return false;
		}
		else {
			try {
				this.teacherDao.deleteTeacherdao(Teacher);
				return true;
			}
			catch (Exception e) {
				System.out.println("有异常。。。。。。。。。。。。。。。。。。。。。");
				return false;
			}
		}
	}

	public boolean updateTeacherbiz(ExTeacher Teacher) {
		return this.teacherDao.updateTeacherdao(Teacher);
	}

	/**
	 * @return the teacherDao
	 */
	public TeacherDao getTeacherDao() {
		return teacherDao;
	}

	/**
	 * @param teacherDao
	 *            the teacherDao to set
	 */
	public void setTeacherDao(TeacherDao teacherDao) {
		this.teacherDao = teacherDao;
	}
}
