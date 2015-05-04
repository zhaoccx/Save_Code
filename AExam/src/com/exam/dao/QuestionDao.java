package com.exam.dao;

import java.util.Set;

import com.exam.entity.ExQuestion;

/**
 * 问答题 ，数据层类
 * 
 * @author Administrator
 * 
 */
public interface QuestionDao {

	/**
	 * 用于验证问答题用户是否合法
	 * 
	 * @param Question
	 *            问答题对象
	 * @return 数据库中存的问答题对象
	 */
	public ExQuestion getQuestiondao(ExQuestion Question);

	/**
	 * 用于获得问答题的集合
	 * 
	 * @param Question
	 *            问答题对象
	 * @return 数据库中存的相关问答题对象的集合。
	 */
	public Set<ExQuestion> getQuestionsdao(ExQuestion Question);

	/**
	 * 用于插入问答题到数据库
	 * 
	 * @param Question
	 *            问答题对象
	 * @return 是否插入成功
	 */
	public boolean insertQuestiondao(ExQuestion Question);

	/**
	 * 用于删除数据库中相关的问答题对象
	 * 
	 * @param Question
	 *            问答题对象
	 * @return 是否删除成功
	 */
	public boolean deleteQuestiondao(ExQuestion Question);

	/**
	 * 用于更新问答题到数据库
	 * 
	 * @param Question
	 *            问答题对象
	 * @return 是否更新成功
	 */
	public boolean updateQuestiondao(ExQuestion Question);
}
