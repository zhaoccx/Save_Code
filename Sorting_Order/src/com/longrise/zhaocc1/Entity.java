package com.longrise.zhaocc1;

import java.util.Date;

public class Entity {

	private int id;
	private String name;
	private String pwd;
	private String abcString;
	private String ccString;
	private Date date;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getAbcString() {
		return abcString;
	}

	public void setAbcString(String abcString) {
		this.abcString = abcString;
	}

	public String getCcString() {
		return ccString;
	}

	public void setCcString(String ccString) {
		this.ccString = ccString;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Entity() {
		super();
	}

	public Entity(int id, String name, String pwd) {
		super();
		this.id = id;
		this.name = name;
		this.pwd = pwd;
	}

	public Entity(int id, String name, String pwd, String abcString, String ccString, Date date) {
		super();
		this.id = id;
		this.name = name;
		this.pwd = pwd;
		this.abcString = abcString;
		this.ccString = ccString;
		this.date = date;
	}
}
