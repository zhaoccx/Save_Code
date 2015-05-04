package com.boao.user.biz.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.boao.user.biz.UserBiz;
import com.boao.user.mapper.TblUserMapper;
import com.boao.user.model.TblUser;

@Service
public class UserBizImpl implements UserBiz {

	@Resource
	private TblUserMapper userMapper;

	public boolean add(TblUser user) {
		return this.userMapper.insertSelective(user) > 0;
	}

	public boolean edit(TblUser user) {
		return this.userMapper.updateByPrimaryKeySelective(user) > 0;
	}

	public boolean deleteById(int id) {
		return this.userMapper.deleteByPrimaryKey(id) > 0;
	}

	public TblUser getById(int id) {
		return this.userMapper.selectByPrimaryKey(id);
	}
}
