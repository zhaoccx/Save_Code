package com.exam.dao.impl;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.exam.dao.ChoiceDao;
import com.exam.entity.ExChoice;

public class ChoiceDaoImpl extends HibernateDaoSupport implements ChoiceDao {

	@SuppressWarnings("unchecked")
	public ExChoice getChoicedao(ExChoice Choice) {
		if (0 == Choice.getChid()) {
			return null;
		}
		HibernateTemplate hibernateTemplate = this.getHibernateTemplate();
		List<ExChoice> list = hibernateTemplate.find("from ExChoice ex where ex.chid=?", Choice.getChid());
		return list.get(0);
	}

	@SuppressWarnings("unchecked")
	public Set<ExChoice> getChoicesdao(ExChoice Choice) {
		try {
			HibernateTemplate hibernateTemplate = this.getHibernateTemplate();
			List<ExChoice> list = hibernateTemplate.find("from ExChoice ex where ex.exSyllabus=?", Choice.getExSyllabus());
			// Choice.getExSyllabus());
			Set<ExChoice> set = new HashSet<ExChoice>(0);
			for (int i = 0; i < list.size(); i++) {
				set.add(list.get(i));
			}
			return set;
		}
		catch (DataAccessException e) {
			System.out.println("нч  ExCompletion  ");
			e.printStackTrace();
			return null;
		}
	}

	public boolean insertChoicedao(ExChoice Choice) {
		HibernateTemplate hibernateTemplate = this.getHibernateTemplate();
		try {
			hibernateTemplate.save(Choice);
			return true;
		}
		catch (DataAccessException e) {
			return false;
		}
	}

	public boolean deleteChoicedao(ExChoice Choice) {
		HibernateTemplate hibernateTemplate = this.getHibernateTemplate();
		try {
			hibernateTemplate.delete(Choice);
			return true;
		}
		catch (DataAccessException e) {
			return false;
		}
	}

	public boolean updateChoicedao(ExChoice Choice) {
		return false;
	}
}
