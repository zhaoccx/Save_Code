package com.boao.study.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

import com.boao.study.model.TblCourse;

public interface TblCourseMapper {

	int deleteByPrimaryKey(Integer id);

	int insert(TblCourse record);

	int insertSelective(TblCourse record);

	TblCourse selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(TblCourse record);

	int updateByPrimaryKey(TblCourse record);

	int countByCategory(@Param("category") String category);

	List<TblCourse> selectByCategory(RowBounds rb, @Param("category") String category);
}