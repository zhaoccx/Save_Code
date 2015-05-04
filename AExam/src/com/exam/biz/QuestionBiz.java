package com.exam.biz;

import java.util.List;
import java.util.Set;

import com.exam.entity.ExQuestion;
import com.exam.entity.ExSyllabus;

/**
 * 问答题 ，业务层类
 * 
 * @author Administrator
 * 
 */
public interface QuestionBiz {

	/**
	 * 用于验证问答题用户是否合法
	 * 
	 * @param Question
	 *            问答题对象
	 * @return 数据库中存的问答题对象
	 */
	public ExQuestion getQuestionbiz(ExQuestion Question);

	/**
	 * 用于获得问答题的集合
	 * 
	 * @param Question
	 *            问答题对象
	 * @return 数据库中存的相关问答题对象的集合。
	 */
	public Set<ExQuestion> getQuestionsbiz(ExQuestion Question);

	/**
	 * 在数据库中取4个数据。。。。。。。。。。。。。。
	 * 
	 * @param exSyllabus
	 *            课程
	 * @return 4个问答题。
	 */
	public List<ExQuestion> getQuestionsbizLists(ExSyllabus exSyllabus);

	/**
	 * 用于插入问答题到数据库
	 * 
	 * @param Question
	 *            问答题对象
	 * @return 是否插入成功
	 */
	public boolean insertQuestionbiz(ExQuestion Question);

	/**
	 * 用于删除数据库中相关的问答题对象
	 * 
	 * @param Question
	 *            问答题对象
	 * @return 是否删除成功
	 */
	public boolean deleteQuestionbiz(ExQuestion Question);

	/**
	 * 用于更新问答题到数据库
	 * 
	 * @param Question
	 *            问答题对象
	 * @return 是否更新成功
	 */
	public boolean updateQuestionbiz(ExQuestion Question);
}
