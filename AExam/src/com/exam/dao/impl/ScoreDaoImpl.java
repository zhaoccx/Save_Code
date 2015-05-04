package com.exam.dao.impl;

import java.util.List;
import java.util.Set;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.exam.dao.ScoreDao;
import com.exam.entity.ExScore;

public class ScoreDaoImpl extends HibernateDaoSupport implements ScoreDao {

	@SuppressWarnings("unchecked")
	public List<ExScore> getScoredao(ExScore Score) {
		if (null == Score.getExStudent()) {
			return null;
		}
		else {
			HibernateTemplate hibernateTemplate = this.getHibernateTemplate();
			List<ExScore> list = hibernateTemplate.find("from ExScore ex where ex.exStudent=?", Score.getExStudent());
			return list;
		}
	}

	public Set<ExScore> getScoresdao(ExScore Score) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean insertScoredao(ExScore Score) {
		if (null == Score.getExStudent() || null == Score.getExSyllabus()) {
			return false;
		}
		Session session = this.getSession();
		Transaction tr = session.beginTransaction();
		try {
			tr.begin();
			session.save(Score);
			tr.commit();
			return false;
		}
		catch (HibernateException e) {
			tr.rollback();
			e.printStackTrace();
			return false;
		}
	}

	public boolean deleteScoredao(ExScore Score) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean updateScoredao(ExScore Score) {
		// TODO Auto-generated method stub
		return false;
	}
}
