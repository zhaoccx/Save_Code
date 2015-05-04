package com.exam.dao;

import java.util.Set;

import com.exam.entity.ExManager;

/**
 * 管理员 ，数据层类
 * 
 * @author Administrator
 * 
 */
public interface ManagerDao {

	/**
	 * 用于验证管理员用户是否合法
	 * 
	 * @param Manager
	 *            管理员对象
	 * @return 数据库中存的管理员对象
	 */
	public ExManager getManagerdao(ExManager Manager);

	/**
	 * 用于获得管理员的集合
	 * 
	 * @param Manager
	 *            管理员对象
	 * @return 数据库中存的相关管理员对象的集合。
	 */
	public Set<ExManager> getManagersdao(ExManager Manager);

	/**
	 * 用于插入管理员到数据库
	 * 
	 * @param Manager
	 *            管理员对象
	 * @return 是否插入成功
	 */
	public boolean insertManagerdao(ExManager Manager);

	/**
	 * 用于删除数据库中相关的管理员对象
	 * 
	 * @param Manager
	 *            管理员对象
	 * @return 是否删除成功
	 */
	public boolean deleteManagerdao(ExManager Manager);

	/**
	 * 用于更新管理员到数据库
	 * 
	 * @param Manager
	 *            管理员对象
	 * @return 是否更新成功
	 */
	public boolean updateManagerdao(ExManager Manager);
}
