package com.exam.biz.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import com.exam.biz.TorfBiz;
import com.exam.dao.TorfDao;
import com.exam.entity.ExSyllabus;
import com.exam.entity.ExTorf;

public class TorfBizImpl implements TorfBiz {

	/**
	 * 判断题数据访问层接口
	 */
	private TorfDao torfDao;

	/**
	 * @return the torfDao
	 */
	public TorfDao getTorfDao() {
		return torfDao;
	}

	/**
	 * @param torfDao
	 *            the torfDao to set
	 */
	public void setTorfDao(TorfDao torfDao) {
		this.torfDao = torfDao;
	}

	public ExTorf getTorfbiz(ExTorf Torf) {
		if (null == Torf) {
			return null;
		}
		else {
			return this.torfDao.getTorfdao(Torf);
		}
	}

	public Set<ExTorf> getTorfsbiz(ExTorf Torf) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<ExTorf> getExTorfsbizLists(ExSyllabus exSyllabus) {
		try {
			ExTorf exTorf = new ExTorf();
			exTorf.setExSyllabus(exSyllabus);
			Set<ExTorf> set = this.torfDao.getTorfsdao(exTorf);
			Object[] objects = set.toArray();
			List<ExTorf> list = new ArrayList<ExTorf>(0);
			int s = (int) Math.random() * (objects.length);
			while (list.size() < 10) {
				if (s > objects.length) {
					s = (int) Math.random() * (objects.length);
					s = s + 1;
				}
				if (!list.contains(objects[s])) {
					list.add((ExTorf) objects[s]);
					s = s + 1;
				}
			}
			return list;
		}
		catch (Exception e) {
			System.out.println("ooooooooooooooooooooooooooooooooooooo");
			e.printStackTrace();
			return null;
		}
	}

	public boolean insertTorfbiz(ExTorf Torf) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean deleteTorfbiz(ExTorf Torf) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean updateTorfbiz(ExTorf Torf) {
		// TODO Auto-generated method stub
		return false;
	}
}
