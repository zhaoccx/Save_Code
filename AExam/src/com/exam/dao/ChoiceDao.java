package com.exam.dao;

import java.util.Set;

import com.exam.entity.ExChoice;

/**
 * 选择题 ，数据层类
 * 
 * @author Administrator
 * 
 */
public interface ChoiceDao {

	/**
	 * 用于验证选择题用户是否合法
	 * 
	 * @param Choice
	 *            选择题对象
	 * @return 数据库中存的选择题对象
	 */
	public ExChoice getChoicedao(ExChoice Choice);

	/**
	 * 用于获得选择题的集合
	 * 
	 * @param Choice
	 *            选择题对象
	 * @return 数据库中存的相关选择题对象的集合。
	 */
	public Set<ExChoice> getChoicesdao(ExChoice Choice);

	/**
	 * 用于插入选择题到数据库
	 * 
	 * @param Choice
	 *            选择题对象
	 * @return 是否插入成功
	 */
	public boolean insertChoicedao(ExChoice Choice);

	/**
	 * 用于删除数据库中相关的选择题对象
	 * 
	 * @param Choice
	 *            选择题对象
	 * @return 是否删除成功
	 */
	public boolean deleteChoicedao(ExChoice Choice);

	/**
	 * 用于更新选择题到数据库
	 * 
	 * @param Choice
	 *            选择题对象
	 * @return 是否更新成功
	 */
	public boolean updateChoicedao(ExChoice Choice);
}
