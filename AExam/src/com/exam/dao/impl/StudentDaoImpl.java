package com.exam.dao.impl;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.exam.dao.StudentDao;
import com.exam.entity.ExStudent;

public class StudentDaoImpl extends HibernateDaoSupport implements StudentDao {

	@SuppressWarnings("unchecked")
	public ExStudent getStudentdao(ExStudent student) {
		HibernateTemplate template = this.getHibernateTemplate();
		if (null == student) {
			return null;
		}
		List<ExStudent> list = template.find("from ExStudent ex where ex.stunum=?", student.getStunum());
		if (list.size() >= 1) {
			return list.get(0);
		}
		else {
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	public Set<ExStudent> getStudentsdao(ExStudent student) {
		if (null == student) {
			HibernateTemplate template = this.getHibernateTemplate();
			List<ExStudent> list = template.find("from ExStudent ex");
			Set<ExStudent> set = new HashSet<ExStudent>();
			System.out.println("查询Student所有的信息");
			for (int i = 0; i < list.size(); i++) {
				set.add(list.get(i));
			}
			return set;
		}
		else {
			HibernateTemplate template = this.getHibernateTemplate();
			List<ExStudent> list = template.find("from ExStudent ex where ex.stunum like ?", "%" + student.getStunum() + "%");
			Set<ExStudent> set = new HashSet<ExStudent>();
			System.out.println("查询一个Student的信息");
			for (int i = 0; i < list.size(); i++) {
				set.add(list.get(i));
			}
			return set;
		}
	}

	public boolean insertStudentdao(ExStudent student) {
		try {
			HibernateTemplate template = this.getHibernateTemplate();
			if (null != student) {
				System.out.println("kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");
				template.save(student);
			}
			return true;
		}
		catch (DataAccessException e) {
			System.out.println("数据插入异常。。。。。。。。。。。。。。。。。。。。。。。。。。");
			return false;
		}
	}

	public boolean deleteStudentdao(ExStudent student) {
		student = this.getStudentdao(student);
		Session session = this.getSession();
		Transaction tr = session.beginTransaction();
		try {
			tr.begin();
			ExStudent student2 = (ExStudent) session.get(ExStudent.class, student.getStuid());
			session.delete(student2);
			tr.commit();
		}
		catch (Exception e) {
			tr.rollback();
			return false;
		}
		return true;
	}

	public boolean updateStudentdao(ExStudent student) {
		// TODO Auto-generated method stub
		return false;
	}
}
