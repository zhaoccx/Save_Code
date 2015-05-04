package com.boao.article.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

import com.boao.article.model.TblArticleCategory;

public interface TblArticleCategoryMapper {

	int deleteByPrimaryKey(Integer id);

	int insert(TblArticleCategory record);

	int insertSelective(TblArticleCategory record);

	TblArticleCategory selectByPrimaryKey(Integer id);

	List<TblArticleCategory> selectByKind(@Param("kind") String kind, RowBounds rn);

	int countByKind(@Param("kind") String kind);

	int updateSelective(TblArticleCategory articleCategory);

	List<String> selectCategoryByKind(@Param("kind") String kind);
}