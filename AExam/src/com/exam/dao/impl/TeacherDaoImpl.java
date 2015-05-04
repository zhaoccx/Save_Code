package com.exam.dao.impl;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.exam.dao.TeacherDao;
import com.exam.entity.ExTeacher;

public class TeacherDaoImpl extends HibernateDaoSupport implements TeacherDao {

	@SuppressWarnings("unchecked")
	public ExTeacher getTeacherdao(ExTeacher Teacher) {
		try {
			if (null == Teacher.getTeachnum()) {
				return null;
			}
			HibernateTemplate hibernateTemplate = this.getHibernateTemplate();
			List<ExTeacher> list = hibernateTemplate.find("from ExTeacher ex where ex.teachnum=?", Teacher.getTeachnum());
			return list.get(0);
		}
		catch (DataAccessException e) {
			System.out.println("from ExTeacher ex where ex.teachnum=");
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	public Set<ExTeacher> getTeachersdao(ExTeacher Teacher) {
		if (null == Teacher) {
			try {
				HibernateTemplate hibernateTemplate = this.getHibernateTemplate();
				List<ExTeacher> list = hibernateTemplate.find("from ExTeacher ex");
				Set<ExTeacher> set = new HashSet<ExTeacher>();
				for (int i = 0; i < list.size(); i++) {
					set.add(list.get(i));
				}
				return set;
			}
			catch (DataAccessException e) {
				System.out.println("from ExTeacher ex where ex.teachnum=");
				return null;
			}
		}
		else {
			try {
				HibernateTemplate hibernateTemplate = this.getHibernateTemplate();
				List<ExTeacher> list = hibernateTemplate.find("from ExTeacher ex where ex.teachnum like ?", "%" + Teacher.getTeachnum() + "%");
				Set<ExTeacher> set = new HashSet<ExTeacher>();
				for (int i = 0; i < list.size(); i++) {
					set.add(list.get(i));
				}
				return set;
			}
			catch (DataAccessException e) {
				System.out.println("from ExTeacher ex where ex.teachnum=");
				return null;
			}
		}
	}

	public boolean insertTeacherdao(ExTeacher Teacher) {
		HibernateTemplate hibernateTemplate = this.getHibernateTemplate();
		if (null == Teacher) {
			return false;
		}
		else {
			try {
				hibernateTemplate.save(Teacher);
				return true;
			}
			catch (DataAccessException e) {
				System.out.println("数据库插入异常。。。。。。。。。。。。。。。");
				e.printStackTrace();
				return false;
			}
		}
	}

	public boolean deleteTeacherdao(ExTeacher Teacher) {
		if (null == Teacher.getTeachnum()) {
			return false;
		}
		else {
			Teacher = this.getTeacherdao(Teacher);
			Session session = this.getSession();
			Transaction transaction = session.beginTransaction();
			try {
				transaction.begin();
				ExTeacher teacher2 = (ExTeacher) session.get(ExTeacher.class, Teacher.getTeachid());
				session.delete(teacher2);
				transaction.commit();
				return true;
			}
			catch (HibernateException e) {
				System.out.println("数据库删除异常");
				transaction.rollback();
				return false;
			}
		}
	}

	public boolean updateTeacherdao(ExTeacher Teacher) {
		if (null != Teacher) {
			Session session = this.getSession();
			Transaction transaction = session.beginTransaction();
			try {
				transaction.begin();
				session.get(ExTeacher.class, Teacher.getTeachid());
				session.update(Teacher);
				transaction.commit();
				return true;
			}
			catch (HibernateException e) {
				System.out.println("更新数据--老师异常");
				transaction.rollback();
				e.printStackTrace();
				return false;
			}
		}
		return false;
	}
}
