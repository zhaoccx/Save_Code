package com.boao.user.mapper;

import com.boao.user.model.TblUserTech;
import com.boao.user.model.TblUserTechWithBLOBs;

public interface TblUserTechMapper {

	int deleteByPrimaryKey(Integer userId);

	int insert(TblUserTechWithBLOBs record);

	int insertSelective(TblUserTechWithBLOBs record);

	TblUserTechWithBLOBs selectByPrimaryKey(Integer userId);

	int updateByPrimaryKeySelective(TblUserTechWithBLOBs record);

	int updateByPrimaryKeyWithBLOBs(TblUserTechWithBLOBs record);

	int updateByPrimaryKey(TblUserTech record);
}