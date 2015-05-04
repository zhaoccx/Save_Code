package com.exam.dao.impl;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.exam.dao.QuestionDao;
import com.exam.entity.ExQuestion;

public class QuestionDaoImpl extends HibernateDaoSupport implements QuestionDao {

	@SuppressWarnings("unchecked")
	public ExQuestion getQuestiondao(ExQuestion Question) {
		if (0 == Question.getQuestid()) {
			return null;
		}
		try {
			HibernateTemplate hibernateTemplate = this.getHibernateTemplate();
			List<ExQuestion> list = hibernateTemplate.find("from ExQuestion ex where ex.questid=?", Question.getQuestid());
			return list.get(0);
		}
		catch (DataAccessException e) {
			System.out.println("нч  ExCompletion  ");
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	public Set<ExQuestion> getQuestionsdao(ExQuestion Question) {
		try {
			HibernateTemplate hibernateTemplate = this.getHibernateTemplate();
			List<ExQuestion> list = hibernateTemplate.find("from ExQuestion ex where ex.exSyllabus=?", Question.getExSyllabus());
			Set<ExQuestion> set = new HashSet<ExQuestion>(0);
			for (int i = 0; i < list.size(); i++) {
				set.add(list.get(i));
			}
			return set;
		}
		catch (DataAccessException e) {
			System.out.println("нч  ExQuestion  ");
			e.printStackTrace();
			return null;
		}
	}

	public boolean insertQuestiondao(ExQuestion Question) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean deleteQuestiondao(ExQuestion Question) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean updateQuestiondao(ExQuestion Question) {
		// TODO Auto-generated method stub
		return false;
	}
}
