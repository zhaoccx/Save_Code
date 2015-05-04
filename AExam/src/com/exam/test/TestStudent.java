package com.exam.test;

import java.util.Iterator;
import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.exam.biz.ChoiceBiz;
import com.exam.biz.CompletionBiz;
import com.exam.biz.QuestionBiz;
import com.exam.biz.TorfBiz;
import com.exam.dao.ChoiceDao;
import com.exam.dao.StudentDao;
import com.exam.entity.ExChoice;
import com.exam.entity.ExCompletion;
import com.exam.entity.ExQuestion;
import com.exam.entity.ExStudent;
import com.exam.entity.ExSyllabus;
import com.exam.entity.ExTorf;

public class TestStudent {

	private StudentDao studentDao;
	private ChoiceDao choiceDao;
	private ChoiceBiz choiceBiz;
	private CompletionBiz completionBiz;
	private QuestionBiz questionBiz;
	private TorfBiz torfBiz;

	@Test
	public void stes() {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		studentDao = (StudentDao) context.getBean("studentDao");
		Iterator<ExStudent> set = this.studentDao.getStudentsdao(null).iterator();
		while (set.hasNext()) {
			System.out.println(set.next().getStupass() + "   " + "abcdfeifdkkasdk");
		}
	}

	@Test
	public void stess() {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		choiceDao = (ChoiceDao) context.getBean("choiceDao");
		Iterator<ExChoice> set = this.choiceDao.getChoicesdao(new ExChoice()).iterator();
		while (set.hasNext()) {
			System.out.println(set.next().getExSyllabus().getSyllid() + "   " + "abcdfeifdkkasdk");
		}
	}

	@Test
	public void choiceb() {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		choiceBiz = (ChoiceBiz) context.getBean("choiceBiz");
		ExSyllabus exSyllabus = new ExSyllabus("java");
		exSyllabus.setSyllid(1);
		List<ExChoice> list = this.choiceBiz.getChoicesbizLists(exSyllabus);
		System.out.println(list.size());
		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i).getChquest());
		}
	}

	@Test
	public void complet() {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		completionBiz = (CompletionBiz) context.getBean("completionBiz");
		ExSyllabus exSyllabus = new ExSyllabus("java");
		exSyllabus.setSyllid(1);
		List<ExCompletion> list = this.completionBiz.getCompletionsbizLists(exSyllabus);
		System.out.println(list.size());
		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i).getComquest());
		}
	}

	@Test
	public void questabc() {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		questionBiz = (QuestionBiz) context.getBean("questionBiz");
		ExSyllabus exSyllabus = new ExSyllabus("java");
		exSyllabus.setSyllid(1);
		List<ExQuestion> list = this.questionBiz.getQuestionsbizLists(exSyllabus);
		System.out.println(list.size());
		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i).getQuestquest());
		}
	}

	@Test
	public void torffff() {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		torfBiz = (TorfBiz) context.getBean("torfBiz");
		ExSyllabus exSyllabus = new ExSyllabus("java");
		exSyllabus.setSyllid(1);
		List<ExTorf> list = this.torfBiz.getExTorfsbizLists(exSyllabus);
		System.out.println(list.size());
		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i).getTorfquest());
		}
	}

	/**
	 * @return the studentDao
	 */
	public StudentDao getStudentDao() {
		return studentDao;
	}

	/**
	 * @param studentDao
	 *            the studentDao to set
	 */
	public void setStudentDao(StudentDao studentDao) {
		this.studentDao = studentDao;
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

	/**
	 * @return the choiceBiz
	 */
	public ChoiceBiz getChoiceBiz() {
		return choiceBiz;
	}

	/**
	 * @param choiceBiz
	 *            the choiceBiz to set
	 */
	public void setChoiceBiz(ChoiceBiz choiceBiz) {
		this.choiceBiz = choiceBiz;
	}

	/**
	 * @return the completionBiz
	 */
	public CompletionBiz getCompletionBiz() {
		return completionBiz;
	}

	/**
	 * @param completionBiz
	 *            the completionBiz to set
	 */
	public void setCompletionBiz(CompletionBiz completionBiz) {
		this.completionBiz = completionBiz;
	}

	/**
	 * @return the questionBiz
	 */
	public QuestionBiz getQuestionBiz() {
		return questionBiz;
	}

	/**
	 * @param questionBiz
	 *            the questionBiz to set
	 */
	public void setQuestionBiz(QuestionBiz questionBiz) {
		this.questionBiz = questionBiz;
	}

	/**
	 * @return the torfBiz
	 */
	public TorfBiz getTorfBiz() {
		return torfBiz;
	}

	/**
	 * @param torfBiz
	 *            the torfBiz to set
	 */
	public void setTorfBiz(TorfBiz torfBiz) {
		this.torfBiz = torfBiz;
	}
}
