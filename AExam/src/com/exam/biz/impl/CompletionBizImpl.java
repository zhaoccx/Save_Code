package com.exam.biz.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import com.exam.biz.CompletionBiz;
import com.exam.dao.CompletionDao;
import com.exam.entity.ExCompletion;
import com.exam.entity.ExSyllabus;

public class CompletionBizImpl implements CompletionBiz {

	/**
	 * 填空题数据访问层接口
	 */
	private CompletionDao completionDao;

	/**
	 * @return the completionDao
	 */
	public CompletionDao getCompletionDao() {
		return completionDao;
	}

	/**
	 * @param completionDao
	 *            the completionDao to set
	 */
	public void setCompletionDao(CompletionDao completionDao) {
		this.completionDao = completionDao;
	}

	public CompletionBizImpl() {
		// TODO Auto-generated constructor stub
	}

	public ExCompletion getCompletionbiz(ExCompletion Completion) {
		if (null == Completion) {
			return null;
		}
		else {
			return this.completionDao.getCompletiondao(Completion);
		}
	}

	public Set<ExCompletion> getCompletionsbiz(ExCompletion Completion) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<ExCompletion> getCompletionsbizLists(ExSyllabus exSyllabus) {
		try {
			ExCompletion exCompletion = new ExCompletion();
			exCompletion.setExSyllabus(exSyllabus);
			Set<ExCompletion> set = this.completionDao.getCompletionsdao(exCompletion);
			System.out.println(set.size());
			Object[] objects = set.toArray();
			List<ExCompletion> list = new ArrayList<ExCompletion>(0);
			int s = (int) Math.random() * (objects.length);
			while (list.size() < 10) {
				if (s > objects.length) {
					s = (int) Math.random() * (objects.length);
					s = s + 1;
				}
				if (!list.contains(objects[s])) {
					list.add((ExCompletion) objects[s]);
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

	public boolean insertCompletionbiz(ExCompletion Completion) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean deleteCompletionbiz(ExCompletion Completion) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean updateCompletionbiz(ExCompletion Completion) {
		// TODO Auto-generated method stub
		return false;
	}
}
