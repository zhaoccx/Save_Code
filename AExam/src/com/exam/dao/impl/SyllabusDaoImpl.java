package com.exam.dao.impl;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.exam.dao.SyllabusDao;
import com.exam.entity.ExSyllabus;

public class SyllabusDaoImpl extends HibernateDaoSupport implements SyllabusDao {

	@SuppressWarnings("unchecked")
	public ExSyllabus getSyllabusdao(ExSyllabus Syllabus) {
		HibernateTemplate hibernateTemplate = this.getHibernateTemplate();
		if (null == Syllabus) {
			return null;
		}
		else {
			if (null != Syllabus.getSyllid()) {
				try {
					List<ExSyllabus> list = hibernateTemplate.find("from ExSyllabus ex where ex.syllid=?", Syllabus.getSyllid());
					return list.get(0);
				}
				catch (DataAccessException e) {
					System.out.println("涙乂仁殻。。。。。。。。。。。。。。。。。");
					e.printStackTrace();
					return null;
				}
			}
			else {
				try {
					List<ExSyllabus> list = hibernateTemplate.find("from ExSyllabus ex where ex.syllname=?", Syllabus.getSyllname());
					return list.get(0);
				}
				catch (DataAccessException e) {
					System.out.println("涙乂仁殻。。。。。。。。。。。。。。。。。");
					e.printStackTrace();
					return null;
				}
			}
		}
	}

	@SuppressWarnings("unchecked")
	public Set<ExSyllabus> getSyllabussdao(ExSyllabus Syllabus) {
		HibernateTemplate hibernateTemplate = this.getHibernateTemplate();
		if (null != Syllabus.getExSyllTeas()) {
			List<ExSyllabus> list = hibernateTemplate.find("from ExSyllabus ex where ex.exSyllTeas=?", Syllabus.getExSyllTeas());
			Set<ExSyllabus> set = new HashSet<ExSyllabus>();
			for (ExSyllabus ex : list) {
				set.add(ex);
			}
			return set;
		}
		else {
			List<ExSyllabus> list = hibernateTemplate.find("from ExSyllabus ex where ex.exStuSylls=?", Syllabus.getExStuSylls());
			Set<ExSyllabus> set = new HashSet<ExSyllabus>();
			for (ExSyllabus ex : list) {
				set.add(ex);
			}
			return set;
		}
	}

	public boolean insertSyllabusdao(ExSyllabus Syllabus) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean deleteSyllabusdao(ExSyllabus Syllabus) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean updateSyllabusdao(ExSyllabus Syllabus) {
		// TODO Auto-generated method stub
		return false;
	}
}
