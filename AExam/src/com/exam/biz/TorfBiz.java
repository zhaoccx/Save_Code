package com.exam.biz;

import java.util.List;
import java.util.Set;

import com.exam.entity.ExSyllabus;
import com.exam.entity.ExTorf;

/**
 * 判断题 ，业务层类
 * 
 * @author Administrator
 * 
 */
public interface TorfBiz {

	/**
	 * 用于验证判断题用户是否合法
	 * 
	 * @param Torf
	 *            判断题对象
	 * @return 数据库中存的判断题对象
	 */
	public ExTorf getTorfbiz(ExTorf Torf);

	/**
	 * 用于获得判断题的集合
	 * 
	 * @param Torf
	 *            判断题对象
	 * @return 数据库中存的相关判断题对象的集合。
	 */
	public Set<ExTorf> getTorfsbiz(ExTorf Torf);

	/**
	 * 在数据库中取10个数据。。。。。。。。。。。。。。
	 * 
	 * @param exSyllabus
	 *            课程
	 * @return 10个判断题。
	 */
	public List<ExTorf> getExTorfsbizLists(ExSyllabus exSyllabus);

	/**
	 * 用于插入判断题到数据库
	 * 
	 * @param Torf
	 *            判断题对象
	 * @return 是否插入成功
	 */
	public boolean insertTorfbiz(ExTorf Torf);

	/**
	 * 用于删除数据库中相关的判断题对象
	 * 
	 * @param Torf
	 *            判断题对象
	 * @return 是否删除成功
	 */
	public boolean deleteTorfbiz(ExTorf Torf);

	/**
	 * 用于更新判断题到数据库
	 * 
	 * @param Torf
	 *            判断题对象
	 * @return 是否更新成功
	 */
	public boolean updateTorfbiz(ExTorf Torf);
}
