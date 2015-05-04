package com.exam.biz.impl;

import java.util.Set;

import com.exam.biz.StudentBiz;
import com.exam.dao.StudentDao;
import com.exam.entity.ExStudent;

public class StudentBizImpl implements StudentBiz {

	/**
	 * ѧ�������ݷ��ʲ�ӿ�
	 */
	private StudentDao studentDao;

	/**
	 * @return the studentDao
	 */
	public StudentDao getStudentDao() {
		return studentDao;
	}

	/**
	 * @param studentDao
	 *            the studentDao to set
	 */
	public void setStudentDao(StudentDao studentDao) {
		this.studentDao = studentDao;
	}

	public ExStudent getStudentbiz(ExStudent student) {
		ExStudent student2 = this.studentDao.getStudentdao(student);
		if (null == student || null == student2) {
			return null;
		}
		if (student.getStupass().trim().equals(student2.getStupass().trim())) {
			return student2;
		}
		return null;
	}

	public Set<ExStudent> getStudentsbiz(ExStudent student) {
		if (null == student) {
			System.out.println("Student ��һ���յġ���������");
			return this.studentDao.getStudentsdao(null);
		}
		else {
			System.out.println("Studnet " + student.toString());
			return this.studentDao.getStudentsdao(student);
		}
	}

	public boolean insertStudentbiz(ExStudent student) {
		try {
			if (null != student) {
				this.studentDao.insertStudentdao(student);
				System.out.println("oooooooooooooooooooooooooooooooooooooooooooooooooooooooo");
			}
			return true;
		}
		catch (Exception e) {
			System.out.println("���ݲ����쳣��������������������������������������������������������������");
			return false;
		}
	}

	public boolean deleteStudentbiz(ExStudent student) {
		if (null == student || null == student.getStunum()) {
			return false;
		}
		else {
			try {
				this.studentDao.deleteStudentdao(student);
				return true;
			}
			catch (Exception e) {
				System.out.println("ɾ��ѧ�����󲻳ɹ�������������������������������������������");
				return false;
			}
		}
	}

	public boolean updateStudentbiz(ExStudent student) {
		return this.studentDao.updateStudentdao(student);
	}
}
