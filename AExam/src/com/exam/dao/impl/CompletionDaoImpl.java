package com.exam.dao.impl;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.exam.dao.CompletionDao;
import com.exam.entity.ExCompletion;

public class CompletionDaoImpl extends HibernateDaoSupport implements CompletionDao {

	@SuppressWarnings("unchecked")
	public ExCompletion getCompletiondao(ExCompletion Completion) {
		if (0 == Completion.getComid()) {
			return null;
		}
		try {
			HibernateTemplate hibernateTemplate = this.getHibernateTemplate();
			List<ExCompletion> list = hibernateTemplate.find("from ExCompletion ex where ex.comid=?", Completion.getComid());
			return list.get(0);
		}
		catch (DataAccessException e) {
			System.out.println("нч  ExCompletion  ");
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	public Set<ExCompletion> getCompletionsdao(ExCompletion Completion) {
		try {
			HibernateTemplate hibernateTemplate = this.getHibernateTemplate();
			List<ExCompletion> list = hibernateTemplate.find("from ExCompletion ex where ex.exSyllabus=?", Completion.getExSyllabus());
			Set<ExCompletion> set = new HashSet<ExCompletion>(0);
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

	public boolean insertCompletiondao(ExCompletion Completion) {
		HibernateTemplate hibernateTemplate = this.getHibernateTemplate();
		try {
			hibernateTemplate.save(Completion);
			return true;
		}
		catch (DataAccessException e) {
			return false;
		}
	}

	public boolean deleteCompletiondao(ExCompletion Completion) {
		HibernateTemplate hibernateTemplate = this.getHibernateTemplate();
		try {
			hibernateTemplate.delete(Completion);
			return true;
		}
		catch (DataAccessException e) {
			return false;
		}
	}

	public boolean updateCompletiondao(ExCompletion Completion) {
		return false;
	}
}
