package com.boao.article.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.boao.article.biz.ArticleBiz;
import com.boao.article.mapper.TblArticleMapper;
import com.boao.article.mapper.ViewAssistMapper;
import com.boao.article.model.TblArticle;
import com.boao.article.model.ViewAssist;
import com.boao.util.Page;

@Service
public class ArticleBizImpl implements ArticleBiz {

	@Resource
	private TblArticleMapper articleMapper;
	@Resource
	private ViewAssistMapper assistMapper;

	public List<TblArticle> getByKind(String kind, Page page) {
		return null;
	}

	public List<ViewAssist> getAssistList(String kind, String category, Page page) {
		if ("".equals(category)) {
			category = null;
		}
		if (!page.hasCountOrSum()) {
			page.initCountAndSum(assistMapper.countByKindAndCategory(kind, category));
		}
		return assistMapper.selectByKindAndCategory(kind, category, page.createRowBounds());
	}

	public boolean add(TblArticle article) {
		return this.articleMapper.insert(article) > 0;
	}

	public boolean edit(TblArticle article) {
		return this.articleMapper.updateByPrimaryKeySelective(article) > 0;
	}

	public boolean deleteById(Integer id) {
		return this.articleMapper.deleteByPrimaryKey(id) > 0;
	}

	public TblArticle getById(Integer id) {
		return this.articleMapper.selectByPrimaryKey(id);
	}

	public ViewAssist getAssistById(Integer id) {
		return this.assistMapper.selectById(id);
	}
}
