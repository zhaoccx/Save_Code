package com.boao.user.mapper;

import com.boao.user.model.TblScoreRecord;

public interface TblScoreRecordMapper {

	int deleteByPrimaryKey(Integer id);

	int insert(TblScoreRecord record);

	int insertSelective(TblScoreRecord record);

	TblScoreRecord selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(TblScoreRecord record);

	int updateByPrimaryKey(TblScoreRecord record);
}