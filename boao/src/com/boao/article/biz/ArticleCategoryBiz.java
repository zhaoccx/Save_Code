package com.boao.article.biz;

import java.util.List;

import com.boao.article.model.TblArticleCategory;
import com.boao.util.Page;

public interface ArticleCategoryBiz {

	/**
	 * 增加一个类型
	 * 
	 * @param articleCategory
	 */
	public boolean add(TblArticleCategory articleCategory);

	/**
	 * 根据id删除一个类型
	 * 
	 * @param id
	 */
	public boolean deleteById(Integer id);

	/**
	 * 更新一个
	 * 
	 * @param articleCategory
	 */
	public boolean edit(TblArticleCategory articleCategory);

	/**
	 * 获得指定种类的单类型
	 * 
	 * @param kind
	 *            种类
	 * @param page
	 *            分页对象
	 * @return
	 */
	public List<TblArticleCategory> getListByKind(String kind, Page page);

	/**
	 * 根据id获取一个类型
	 * 
	 * @param id
	 * @return
	 */
	public TblArticleCategory getById(Integer id);

	/**
	 * 根据种类获得所有类型
	 * 
	 * @param kind
	 * @return
	 */
	public List<String> getAllCategoryByKind(String kind);
}
