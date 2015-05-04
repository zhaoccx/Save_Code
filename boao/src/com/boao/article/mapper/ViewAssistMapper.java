package com.boao.article.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

import com.boao.article.model.ViewAssist;

public interface ViewAssistMapper {

	ViewAssist selectById(Integer id);

	List<ViewAssist> selectByKindAndCategory(@Param("kind") String kind, @Param("category") String category, RowBounds rb);

	int countByKindAndCategory(@Param("kind") String kind, @Param("category") String category);
}