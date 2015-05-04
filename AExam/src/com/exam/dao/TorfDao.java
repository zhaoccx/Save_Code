package com.exam.dao;

import java.util.Set;

import com.exam.entity.ExTorf;

/**
 * 判断题 ，数据层类
 * 
 * @author Administrator
 * 
 */
public interface TorfDao {

	/**
	 * 用于验证判断题用户是否合法
	 * 
	 * @param Torf
	 *            判断题对象
	 * @return 数据库中存的判断题对象
	 */
	public ExTorf getTorfdao(ExTorf Torf);

	/**
	 * 用于获得判断题的集合
	 * 
	 * @param Torf
	 *            判断题对象
	 * @return 数据库中存的相关判断题对象的集合。
	 */
	public Set<ExTorf> getTorfsdao(ExTorf Torf);

	/**
	 * 用于插入判断题到数据库
	 * 
	 * @param Torf
	 *            判断题对象
	 * @return 是否插入成功
	 */
	public boolean insertTorfdao(ExTorf Torf);

	/**
	 * 用于删除数据库中相关的判断题对象
	 * 
	 * @param Torf
	 *            判断题对象
	 * @return 是否删除成功
	 */
	public boolean deleteTorfdao(ExTorf Torf);

	/**
	 * 用于更新判断题到数据库
	 * 
	 * @param Torf
	 *            判断题对象
	 * @return 是否更新成功
	 */
	public boolean updateTorfdao(ExTorf Torf);
}
