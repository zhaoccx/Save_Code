package com.exam.dao.impl;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.exam.dao.TorfDao;
import com.exam.entity.ExTorf;

public class TorfDaoImpl extends HibernateDaoSupport implements TorfDao {

	@SuppressWarnings("unchecked")
	public ExTorf getTorfdao(ExTorf Torf) {
		if (0 == Torf.getTorfid()) {
			return null;
		}
		try {
			HibernateTemplate hibernateTemplate = this.getHibernateTemplate();
			List<ExTorf> list = hibernateTemplate.find("from ExTorf ex where ex.torfid=?", Torf.getTorfid());
			return list.get(0);
		}
		catch (DataAccessException e) {
			System.out.println("нч  ExTorf  ");
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	public Set<ExTorf> getTorfsdao(ExTorf Torf) {
		try {
			HibernateTemplate hibernateTemplate = this.getHibernateTemplate();
			List<ExTorf> list = hibernateTemplate.find("from ExTorf ex where ex.exSyllabus=?", Torf.getExSyllabus());
			Set<ExTorf> set = new HashSet<ExTorf>(0);
			for (int i = 0; i < list.size(); i++) {
				set.add(list.get(i));
			}
			return set;
		}
		catch (DataAccessException e) {
			System.out.println("нч  ExTorf  ");
			e.printStackTrace();
			return null;
		}
	}

	public boolean insertTorfdao(ExTorf Torf) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean deleteTorfdao(ExTorf Torf) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean updateTorfdao(ExTorf Torf) {
		// TODO Auto-generated method stub
		return false;
	}
}
