package com.exam.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/**
 * ExManager entity. @author MyEclipse Persistence Tools
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "EX_MANAGER", schema = "SCOTT")
@SequenceGenerator(name = "SEQ_ExManager", sequenceName = "seq_ex_manager")
public class ExManager implements java.io.Serializable {

	// Fields
	private Integer manid;
	private String manuser;
	private String manpass;

	// Constructors
	/** default constructor */
	public ExManager() {
	}

	/** full constructor */
	public ExManager(String manuser, String manpass) {
		this.manuser = manuser;
		this.manpass = manpass;
	}

	// Property accessors
	@Id
	@GeneratedValue(generator = "SEQ_ExManager", strategy = GenerationType.SEQUENCE)
	@Column(name = "MANID", unique = true, nullable = false, precision = 38, scale = 0)
	public Integer getManid() {
		return this.manid;
	}

	public void setManid(Integer manid) {
		this.manid = manid;
	}

	@Column(name = "MANUSER", nullable = false, length = 50)
	public String getManuser() {
		return this.manuser;
	}

	public void setManuser(String manuser) {
		this.manuser = manuser;
	}

	@Column(name = "MANPASS", nullable = false, length = 50)
	public String getManpass() {
		return this.manpass;
	}

	public void setManpass(String manpass) {
		this.manpass = manpass;
	}
}