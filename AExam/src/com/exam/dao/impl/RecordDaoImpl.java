package com.exam.dao.impl;

import java.util.List;
import java.util.Set;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.exam.dao.RecordDao;
import com.exam.entity.ExRecord;

public class RecordDaoImpl extends HibernateDaoSupport implements RecordDao {

	@SuppressWarnings("unchecked")
	public ExRecord getRecorddao(ExRecord Record) {
		if (null == Record.getExStudent()) {
			return null;
		}
		HibernateTemplate hibernateTemplate = this.getHibernateTemplate();
		List<ExRecord> list = hibernateTemplate.find("from ExRecord ex where ex.exStudent=?", Record.getExStudent());
		for (ExRecord es : list) {
			if (es.getExSyllabus().getSyllid().equals(Record.getExSyllabus().getSyllid())) {
				return es;
			}
		}
		return null;
	}

	public Set<ExRecord> getRecordsdao(ExRecord Record) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean insertRecorddao(ExRecord Record) {
		if (null == Record) {
			return false;
		}
		Session session = this.getSession();
		Transaction tr = session.beginTransaction();
		try {
			tr.begin();
			session.save(Record);
			tr.commit();
			return true;
		}
		catch (HibernateException e) {
			tr.rollback();
			e.printStackTrace();
			return false;
		}
	}

	public boolean deleteRecorddao(ExRecord Record) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean updateRecorddao(ExRecord Record) {
		ExRecord cord = this.getRecorddao(Record);
		Session session = this.getSession();
		Transaction tr = session.beginTransaction();
		try {
			tr.begin();
			ExRecord aRecord = (ExRecord) session.get(ExRecord.class, cord.getRecid());
			aRecord.setRecchvalue(Record.getRecchvalue());
			aRecord.setReccomvalue(Record.getReccomvalue());
			aRecord.setRectorfvalue(Record.getRectorfvalue());
			aRecord.setRecquvalue(Record.getRecquvalue());
			tr.commit();
			return true;
		}
		catch (HibernateException e) {
			System.out.println("插入数据异常");
			e.printStackTrace();
			return false;
		}
	}
}
