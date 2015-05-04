package com.boao.article.controller.sys;

import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.boao.article.biz.ArticleBiz;
import com.boao.article.biz.ArticleCategoryBiz;
import com.boao.article.model.TblArticle;
import com.boao.article.model.TblArticleCategory;
import com.boao.util.FileUtil;
import com.boao.util.Page;

/**
 * 
 * @author hdr
 * 
 */
@Controller
@RequestMapping("/admin")
public class ArticleController {

	@Resource
	private ArticleBiz articleBiz;
	@Resource
	private ArticleCategoryBiz articleCategoryBiz;

	@RequestMapping("/articleCategoryList")
	public String toArticleCategoryList(Model model, String kind, Page page) {
		model.addAttribute("ARTICLE_CATEGORY_LIST", articleCategoryBiz.getListByKind(kind, page));
		model.addAttribute("kind", kind);
		return "control/article_category_list";
	}

	@RequestMapping("/toAddArticleCategory")
	public String toAddAritcleCategory() {
		return "control/article_category_add";
	}

	@RequestMapping("/doAddArticleCategory")
	public String doAddArticleCategory(Model model, TblArticleCategory articleCategory) {
		articleCategory.setCreateDate(new Date());
		articleCategoryBiz.add(articleCategory);
		return this.toArticleCategoryList(model, null, new Page());
	}

	@RequestMapping(value = "/deleteArticleCategory-{id}", method = RequestMethod.POST)
	@ResponseBody
	public boolean deleteArticleCategory(Model model, @PathVariable("id") Integer id) {
		return this.articleCategoryBiz.deleteById(id);
	}

	@RequestMapping("toEditArticleCategory-{id}")
	public String toEditArticleCategory(Model model, @PathVariable("id") Integer id, String kind) {
		Page page = new Page(RowBounds.NO_ROW_OFFSET, RowBounds.NO_ROW_LIMIT);
		model.addAttribute("CATEGORY_LIST", this.articleCategoryBiz.getListByKind(kind, page));
		model.addAttribute("ENTITY", articleCategoryBiz.getById(id));
		return "control/article_category_edit";
	}

	@RequestMapping("/doEditArticleCategory")
	public String doEditArticleCategory(Model model, TblArticleCategory articleCategory, String kind) {
		this.articleCategoryBiz.edit(articleCategory);
		return this.toArticleCategoryList(model, articleCategory.getKind(), new Page());
	}

	@RequestMapping("/assistList")
	public String assistList(Model model, String category, Page page, String kind) {
		model.addAttribute("CATEGORY_LIST", this.articleCategoryBiz.getAllCategoryByKind(kind));
		model.addAttribute("CATEGORY", category);
		model.addAttribute("LIST", this.articleBiz.getAssistList(kind, category, page == null ? new Page() : page));
		model.addAttribute("kind", kind);
		return "control/article_assist_list";
	}

	@RequestMapping("/toAddAssist")
	public String toAddAssist(Model model, HttpServletRequest request, String kind) {
		Page page = new Page(RowBounds.NO_ROW_OFFSET, RowBounds.NO_ROW_LIMIT);
		model.addAttribute("CATEGORY_LIST", this.articleCategoryBiz.getListByKind(kind, page));
		model.addAttribute("kind", kind);
		return "control/article_assist_add";
	}

	@RequestMapping("/doAddArticle")
	public String doAddArticle(Model model, TblArticle article, MultipartFile file, HttpServletRequest request, String kind) {
		article.setCreateDate(new Date());
		article.setLogo(FileUtil.uploadFile("dir.article.logo", file, request));
		this.articleBiz.add(article);
		return this.assistList(model, null, new Page(), kind);
	}

	@RequestMapping("/toEditAssist-{id}")
	public String toEditAssist(Model model, @PathVariable("id") Integer id, String kind) {
		Page page = new Page(RowBounds.NO_ROW_OFFSET, RowBounds.NO_ROW_LIMIT);
		model.addAttribute("CATEGORY_LIST", this.articleCategoryBiz.getListByKind(kind, page));
		model.addAttribute("ENTITY", articleBiz.getById(id));
		model.addAttribute("kind", kind);
		return "control/article_assist_edit";
	}

	@RequestMapping("/doEditAssist")
	public String doEditAssist(Model model, TblArticle article, MultipartFile file, HttpServletRequest request, String kind) {
		FileUtil.delFile(article.getLogo(), request);
		article.setLogo(FileUtil.uploadFile("dir.article.logo", file, request));
		this.articleBiz.edit(article);
		return this.assistList(model, null, new Page(), kind);
	}

	@RequestMapping("deleteArticle-{id}")
	@ResponseBody
	public boolean deleteArticle(@PathVariable("id") Integer id) {
		return this.articleBiz.deleteById(id);
	}

	@RequestMapping("assistDetail-{id}")
	public String assistDetail(Model model, @PathVariable("id") Integer id, String kind) {
		model.addAttribute("ENTITY", articleBiz.getAssistById(id));
		model.addAttribute("kind", kind);
		return "control/article_assist_detail";
	}
}
