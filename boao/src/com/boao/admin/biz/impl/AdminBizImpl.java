package com.boao.admin.biz.impl;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.boao.admin.biz.AdminBiz;
import com.boao.admin.mapper.TblAdminMapper;
import com.boao.admin.model.TblAdmin;
import com.boao.util.Md5Encrypt;

@Service
public class AdminBizImpl implements AdminBiz {

	@Resource
	private TblAdminMapper adminMapper;

	public void saveAdmin(TblAdmin admin) {
		admin.setPassword(Md5Encrypt.md5Mix(admin.getPassword()));
		adminMapper.insert(admin);
	}

	public TblAdmin login(String username, String password) {
		password = Md5Encrypt.md5Mix(password);
		TblAdmin admin = adminMapper.selectByUsernameAndPassword(username, password);
		if (admin != null) {
			adminMapper.updateLastLoginDate(admin.getId(), new Date());
		}
		return admin;
	}

	public boolean modifyPassword(Integer id, String oldPassword, String newPasswrod) {
		return false;
	}
}
