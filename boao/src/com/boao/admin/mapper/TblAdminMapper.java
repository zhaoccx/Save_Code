package com.boao.admin.mapper;

import java.util.Date;

import org.apache.ibatis.annotations.Param;

import com.boao.admin.model.TblAdmin;

public interface TblAdminMapper {

	int deleteByPrimaryKey(Integer id);

	int insert(TblAdmin record);

	int insertSelective(TblAdmin record);

	TblAdmin selectByPrimaryKey(Integer id);

	TblAdmin selectByUsernameAndPassword(@Param("username") String username, @Param("password") String password);

	void updateLastLoginDate(@Param("id") Integer id, @Param("lastLoginDate") Date lastDate);
}