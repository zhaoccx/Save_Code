package com.exam.biz.impl;

import java.util.Set;

import com.exam.biz.ManagerBiz;
import com.exam.dao.ManagerDao;
import com.exam.entity.ExManager;

public class ManagerBizImpl implements ManagerBiz {

	/**
	 * 管理员数据访问层接口
	 */
	private ManagerDao managerDao;

	public ExManager gExManagerBiz(ExManager exManager) {
		if (null == exManager) {
			return null;
		}
		return this.managerDao.getManagerdao(exManager);
	}

	/**
	 * @return the managerDao
	 */
	public ManagerDao getManagerDao() {
		return managerDao;
	}

	/**
	 * @param managerDao
	 *            the managerDao to set
	 */
	public void setManagerDao(ManagerDao managerDao) {
		this.managerDao = managerDao;
	}

	public ExManager getManagerbiz(ExManager Manager) {
		if (null == Manager) {
			return null;
		}
		return this.managerDao.getManagerdao(Manager);
	}

	public Set<ExManager> getManagersbiz(ExManager Manager) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean insertManagerbiz(ExManager Manager) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean deleteManagerbiz(ExManager Manager) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean updateManagerbiz(ExManager Manager) {
		// TODO Auto-generated method stub
		return false;
	}
}
