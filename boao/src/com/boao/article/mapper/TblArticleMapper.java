package com.boao.article.mapper;

import com.boao.article.model.TblArticle;

public interface TblArticleMapper {

	int deleteByPrimaryKey(Integer id);

	int insert(TblArticle record);

	int insertSelective(TblArticle record);

	TblArticle selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(TblArticle record);
}