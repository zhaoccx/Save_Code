package com.exam.biz.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import com.exam.biz.ChoiceBiz;
import com.exam.dao.ChoiceDao;
import com.exam.entity.ExChoice;
import com.exam.entity.ExSyllabus;

public class ChoiceBizImpl implements ChoiceBiz {

	/**
	 * 选择题数据访问层接口
	 */
	private ChoiceDao choiceDao;

	public ExChoice getChoicebiz(ExChoice Choice) {
		if (null == Choice) {
			return null;
		}
		else {
			return this.choiceDao.getChoicedao(Choice);
		}
	}

	public Set<ExChoice> getChoicesbiz(ExChoice Choice) {
		// TODO Auto-generated method stub
		return null;
	}

	// public List<ExChoice> getChoicesbizList(ExChoice Choice) {
	// try {
	// Set<ExChoice> set = this.choiceDao.getChoicesdao(Choice);
	// Object[] objects = set.toArray();
	// List<ExChoice> list = new ArrayList<ExChoice>(0);
	// int s = (int) Math.random() * (objects.length);
	// while (list.size() < 10) {
	// if (s > objects.length) {
	// s = (int) Math.random() * (objects.length);
	// s = s + 1;
	// }
	// if (!list.contains(objects[s])) {
	// list.add((ExChoice) objects[s]);
	// s = s + 1;
	// }
	// }
	// return list;
	// } catch (Exception e) {
	// System.out.println("ooooooooooooooooooooooooooooooooooooo");
	// e.printStackTrace();
	// return null;
	// }
	// }
	public List<ExChoice> getChoicesbizLists(ExSyllabus exSyllabus) {
		try {
			ExChoice choice = new ExChoice();
			choice.setExSyllabus(exSyllabus);
			Set<ExChoice> set = this.choiceDao.getChoicesdao(choice);
			Object[] objects = set.toArray();
			List<ExChoice> list = new ArrayList<ExChoice>(0);
			int s = (int) Math.random() * (objects.length);
			while (list.size() < 10) {
				if (s > objects.length) {
					s = (int) Math.random() * (objects.length);
					s = s + 1;
				}
				if (!list.contains(objects[s])) {
					list.add((ExChoice) objects[s]);
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

	public boolean insertChoicebiz(ExChoice Choice) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean deleteChoicebiz(ExChoice Choice) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean updateChoicebiz(ExChoice Choice) {
		// TODO Auto-generated method stub
		return false;
	}

	/**
	 * @return the choiceDao
	 */
	public ChoiceDao getChoiceDao() {
		return choiceDao;
	}

	/**
	 * @param choiceDao
	 *            the choiceDao to set
	 */
	public void setChoiceDao(ChoiceDao choiceDao) {
		this.choiceDao = choiceDao;
	}
}
