package com.exam.biz;

import java.util.List;
import java.util.Set;

import com.exam.entity.ExChoice;
import com.exam.entity.ExSyllabus;

/**
 * 选择题 ，业务层类
 * 
 * @author Administrator
 * 
 */
public interface ChoiceBiz {

	/**
	 * 用于验证选择题用户是否合法
	 * 
	 * @param Choice
	 *            选择题对象
	 * @return 数据库中存的选择题对象
	 */
	public ExChoice getChoicebiz(ExChoice Choice);

	/**
	 * 用于获得选择题的集合
	 * 
	 * @param Choice
	 *            选择题对象
	 * @return 数据库中存的相关选择题对象的集合。
	 */
	public Set<ExChoice> getChoicesbiz(ExChoice Choice);

	/**
	 * 在数据库中取10个数据。。。。。。。。。。。。。。
	 * 
	 * @param exSyllabus
	 *            课程
	 * @return 10个选择题。
	 */
	public List<ExChoice> getChoicesbizLists(ExSyllabus exSyllabus);

	/**
	 * 用于插入选择题到数据库
	 * 
	 * @param Choice
	 *            选择题对象
	 * @return 是否插入成功
	 */
	public boolean insertChoicebiz(ExChoice Choice);

	/**
	 * 用于删除数据库中相关的选择题对象
	 * 
	 * @param Choice
	 *            选择题对象
	 * @return 是否删除成功
	 */
	public boolean deleteChoicebiz(ExChoice Choice);

	/**
	 * 用于更新选择题到数据库
	 * 
	 * @param Choice
	 *            选择题对象
	 * @return 是否更新成功
	 */
	public boolean updateChoicebiz(ExChoice Choice);
}