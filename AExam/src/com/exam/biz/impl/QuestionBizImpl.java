package com.exam.biz.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import com.exam.biz.QuestionBiz;
import com.exam.dao.QuestionDao;
import com.exam.entity.ExQuestion;
import com.exam.entity.ExSyllabus;

public class QuestionBizImpl implements QuestionBiz {

	/**
	 * 问答题数据访问层接口
	 */
	private QuestionDao questionDao;

	/**
	 * @return the questionDao
	 */
	public QuestionDao getQuestionDao() {
		return questionDao;
	}

	/**
	 * @param questionDao
	 *            the questionDao to set
	 */
	public void setQuestionDao(QuestionDao questionDao) {
		this.questionDao = questionDao;
	}

	public ExQuestion getQuestionbiz(ExQuestion Question) {
		if (null == Question) {
			return null;
		}
		else {
			return this.questionDao.getQuestiondao(Question);
		}
	}

	public Set<ExQuestion> getQuestionsbiz(ExQuestion Question) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<ExQuestion> getQuestionsbizLists(ExSyllabus exSyllabus) {
		try {
			ExQuestion exQuestion = new ExQuestion();
			exQuestion.setExSyllabus(exSyllabus);
			Set<ExQuestion> set = this.questionDao.getQuestionsdao(exQuestion);
			System.out.println(set.size());
			Object[] objects = set.toArray();
			List<ExQuestion> list = new ArrayList<ExQuestion>(0);
			int s = (int) Math.random() * (objects.length);
			while (list.size() < 4) {
				if (s > objects.length) {
					s = (int) Math.random() * (objects.length);
					s = s + 1;
				}
				if (!list.contains(objects[s])) {
					list.add((ExQuestion) objects[s]);
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

	public boolean insertQuestionbiz(ExQuestion Question) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean deleteQuestionbiz(ExQuestion Question) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean updateQuestionbiz(ExQuestion Question) {
		// TODO Auto-generated method stub
		return false;
	}
}
