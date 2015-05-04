package com.boao.article.biz;

import java.util.List;

import com.boao.article.model.TblArticle;
import com.boao.article.model.ViewAssist;
import com.boao.util.Page;

/**
 * 文章/帮助中心/网站公告 相关业务类
 * 
 * @author hdr
 * 
 */
public interface ArticleBiz {

	/**
	 * 根据id获取文章对象
	 * 
	 * @param id
	 * @return
	 */
	public TblArticle getById(Integer id);

	/**
	 * 根据种类获得文章
	 * 
	 * @param kind
	 *            选值为:文章/帮助中心/网站公告
	 * @return
	 */
	public List<TblArticle> getByKind(String kind, Page page);

	/**
	 * 获得帮助列表
	 * 
	 * @param page
	 *            分页对象
	 * @return
	 */
	public List<ViewAssist> getAssistList(String kind, String category, Page page);

	/**
	 * @param id
	 * @return
	 */
	public ViewAssist getAssistById(Integer id);

	public boolean add(TblArticle article);

	public boolean edit(TblArticle article);

	public boolean deleteById(Integer id);
}
