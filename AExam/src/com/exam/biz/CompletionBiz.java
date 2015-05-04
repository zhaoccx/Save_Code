package com.exam.biz;

import java.util.List;
import java.util.Set;

import com.exam.entity.ExCompletion;
import com.exam.entity.ExSyllabus;

/**
 * 填空题 ，业务层类
 * 
 * @author Administrator
 * 
 */
public interface CompletionBiz {

	/**
	 * 用于验证填空题用户是否合法
	 * 
	 * @param Completion
	 *            填空题对象
	 * @return 数据库中存的填空题对象
	 */
	public ExCompletion getCompletionbiz(ExCompletion Completion);

	/**
	 * 用于获得填空题的集合
	 * 
	 * @param Completion
	 *            填空题对象
	 * @return 数据库中存的相关填空题对象的集合。
	 */
	public Set<ExCompletion> getCompletionsbiz(ExCompletion Completion);

	/**
	 * 在数据库中取10个数据。。。。。。。。。。。。。。
	 * 
	 * @param Completion
	 *            入课程名
	 * @return 10个填空题。
	 */
	public List<ExCompletion> getCompletionsbizLists(ExSyllabus exSyllabus);

	/**
	 * 用于插入填空题到数据库
	 * 
	 * @param Completion
	 *            填空题对象
	 * @return 是否插入成功
	 */
	public boolean insertCompletionbiz(ExCompletion Completion);

	/**
	 * 用于删除数据库中相关的填空题对象
	 * 
	 * @param Completion
	 *            填空题对象
	 * @return 是否删除成功
	 */
	public boolean deleteCompletionbiz(ExCompletion Completion);

	/**
	 * 用于更新填空题到数据库
	 * 
	 * @param Completion
	 *            填空题对象
	 * @return 是否更新成功
	 */
	public boolean updateCompletionbiz(ExCompletion Completion);
}
