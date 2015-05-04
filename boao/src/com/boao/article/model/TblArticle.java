package com.boao.article.model;

import java.util.Date;

public class TblArticle {

	private Integer id;
	private Integer category;
	private String subject;
	private String logo;
	private String source;
	private Integer clicks;
	private Integer upClicks;
	private Integer downClicks;
	private Date createDate;
	private Date updateDate;
	private String summary;
	private String keyWords;
	private String reccomendCategory;
	private Date reccomendDate;
	private String pageUrl;
	private Integer isEssence;
	private String body;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getCategory() {
		return category;
	}

	public void setCategory(Integer category) {
		this.category = category;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public Integer getClicks() {
		return clicks;
	}

	public void setClicks(Integer clicks) {
		this.clicks = clicks;
	}

	public Integer getUpClicks() {
		return upClicks;
	}

	public void setUpClicks(Integer upClicks) {
		this.upClicks = upClicks;
	}

	public Integer getDownClicks() {
		return downClicks;
	}

	public void setDownClicks(Integer downClicks) {
		this.downClicks = downClicks;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getKeyWords() {
		return keyWords;
	}

	public void setKeyWords(String keyWords) {
		this.keyWords = keyWords;
	}

	public String getReccomendCategory() {
		return reccomendCategory;
	}

	public void setReccomendCategory(String reccomendCategory) {
		this.reccomendCategory = reccomendCategory;
	}

	public Date getReccomendDate() {
		return reccomendDate;
	}

	public void setReccomendDate(Date reccomendDate) {
		this.reccomendDate = reccomendDate;
	}

	public String getPageUrl() {
		return pageUrl;
	}

	public void setPageUrl(String pageUrl) {
		this.pageUrl = pageUrl;
	}

	public Integer getIsEssence() {
		return isEssence;
	}

	public void setIsEssence(Integer isEssence) {
		this.isEssence = isEssence;
	}

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}
}