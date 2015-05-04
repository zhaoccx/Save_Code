package com.boao.article.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.boao.article.biz.ArticleCategoryBiz;
import com.boao.article.mapper.TblArticleCategoryMapper;
import com.boao.article.model.TblArticleCategory;
import com.boao.util.Page;

@Service
public class ArticleCategoryBizImpl implements ArticleCategoryBiz {

	@Resource
	private TblArticleCategoryMapper mapper;

	public boolean add(TblArticleCategory articleCategory) {
		return mapper.insert(articleCategory) > 0;
	}

	public boolean deleteById(Integer id) {
		return mapper.deleteByPrimaryKey(id) > 0;
	}

	public boolean edit(TblArticleCategory articleCategory) {
		return mapper.updateSelective(articleCategory) > 0;
	}

	public List<TblArticleCategory> getListByKind(String kind, Page page) {
		if ("".equals(kind)) {
			kind = null;
		}
		if (!page.hasCountOrSum()) {
			page.initCountAndSum(this.mapper.countByKind(kind));
		}
		return mapper.selectByKind(kind, page.createRowBounds());
	}

	public TblArticleCategory getById(Integer id) {
		return mapper.selectByPrimaryKey(id);
	}

	public List<String> getAllCategoryByKind(String kind) {
		if ("".equals(kind))
			kind = null;
		return mapper.selectCategoryByKind(kind);
	}
}
