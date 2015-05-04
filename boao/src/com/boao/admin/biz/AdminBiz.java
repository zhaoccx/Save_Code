package com.boao.admin.biz;

import com.boao.admin.model.TblAdmin;

/**
 * 管理员biz，负责后台管理员的登录等相关操作
 * 
 * @author Administrator
 * 
 */
public interface AdminBiz {

	/**
	 * 增加一个管理员
	 * 
	 * @param admin
	 */
	public void saveAdmin(TblAdmin admin);

	/**
	 * 管理员登录的方法，登录成功则返回管理员对象，否则返回Null
	 * 
	 * @param username
	 * @param password
	 * @return
	 */
	public TblAdmin login(String username, String password);

	/**
	 * 修改密码的方法
	 * 
	 * @param id
	 * @param oldPassword
	 * @param newPasswrod
	 * @return
	 */
	public boolean modifyPassword(Integer id, String oldPassword, String newPasswrod);
}
