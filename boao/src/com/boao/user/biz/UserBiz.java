package com.boao.user.biz;

import com.boao.user.model.TblUser;

public interface UserBiz {

	public boolean add(TblUser user);

	public boolean edit(TblUser user);

	public boolean deleteById(int id);

	public TblUser getById(int id);
}