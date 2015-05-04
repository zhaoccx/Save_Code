package com.boao.user.model;

import java.util.Date;

public class TblScoreRecord {

	private Integer id;
	private Integer userId;
	private Integer variation;
	private Date changeTime;
	private Integer current;
	private String cause;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getVariation() {
		return variation;
	}

	public void setVariation(Integer variation) {
		this.variation = variation;
	}

	public Date getChangeTime() {
		return changeTime;
	}

	public void setChangeTime(Date changeTime) {
		this.changeTime = changeTime;
	}

	public Integer getCurrent() {
		return current;
	}

	public void setCurrent(Integer current) {
		this.current = current;
	}

	public String getCause() {
		return cause;
	}

	public void setCause(String cause) {
		this.cause = cause;
	}
}