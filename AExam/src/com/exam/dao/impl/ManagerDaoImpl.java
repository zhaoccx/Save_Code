package com.exam.dao.impl;

import java.util.List;
import java.util.Set;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.exam.dao.ManagerDao;
import com.exam.entity.ExManager;

public class ManagerDaoImpl extends HibernateDaoSupport implements ManagerDao {

	@SuppressWarnings("rawtypes")
	public ExManager getManagerdao(ExManager Manager) {
		if (null == Manager) {
			return null;
		}
		HibernateTemplate hiblr = this.getHibernateTemplate();
		List list = hiblr.find("from ExManager ex where ex.manuser=?", Manager.getManuser());
		if (list.size() < 1) {
			return null;
		}
		// System.out.println("»ðÖÐÈ¡Àõ°É");
		for (int i = 0; i < list.size(); i++) {
			ExManager exManager2 = (ExManager) list.get(i);
			if (exManager2.getManpass().equals(Manager.getManpass())) {
				return exManager2;
			}
		}
		return null;
	}

	public Set<ExManager> getManagersdao(ExManager Manager) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean insertManagerdao(ExManager Manager) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean deleteManagerdao(ExManager Manager) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean updateManagerdao(ExManager Manager) {
		// TODO Auto-generated method stub
		return false;
	}
}
