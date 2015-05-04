package com.boao.study.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

import com.boao.study.model.TblGrade;

public interface TblGradeMapper {

	int deleteByPrimaryKey(Integer id);

	int insert(TblGrade record);

	int insertSelective(TblGrade record);

	TblGrade selectByPrimaryKey(Integer id);

	int countByCategory(@Param("category") String category);

	List<TblGrade> selectByCategory(RowBounds rb, @Param("category") String category);

	int updateByPrimaryKeySelective(TblGrade record);

	int updateByPrimaryKey(TblGrade record);
}