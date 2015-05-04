package com.exam.dao;

import java.util.Set;

import com.exam.entity.ExCompletion;

/**
 * 填空题 ，数据层类
 * 
 * @author Administrator
 * 
 */
public interface CompletionDao {

	/**
	 * 用于验证填空题用户是否合法
	 * 
	 * @param Completion
	 *            填空题对象
	 * @return 数据库中存的填空题对象
	 */
	public ExCompletion getCompletiondao(ExCompletion Completion);

	/**
	 * 用于获得填空题的集合
	 * 
	 * @param Completion
	 *            填空题对象
	 * @return 数据库中存的相关填空题对象的集合。
	 */
	public Set<ExCompletion> getCompletionsdao(ExCompletion Completion);

	/**
	 * 用于插入填空题到数据库
	 * 
	 * @param Completion
	 *            填空题对象
	 * @return 是否插入成功
	 */
	public boolean insertCompletiondao(ExCompletion Completion);

	/**
	 * 用于删除数据库中相关的填空题对象
	 * 
	 * @param Completion
	 *            填空题对象
	 * @return 是否删除成功
	 */
	public boolean deleteCompletiondao(ExCompletion Completion);

	/**
	 * 用于更新填空题到数据库
	 * 
	 * @param Completion
	 *            填空题对象
	 * @return 是否更新成功
	 */
	public boolean updateCompletiondao(ExCompletion Completion);
}