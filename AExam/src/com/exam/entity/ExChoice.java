package com.exam.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/**
 * ExChoice entity. @author MyEclipse Persistence Tools
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "EX_CHOICE", schema = "SCOTT")
@SequenceGenerator(name = "SEQ_ExChice", sequenceName = "seq_ex_choice")
public class ExChoice implements java.io.Serializable {

	// Fields
	private Integer chid;
	private ExSyllabus exSyllabus;
	private String chquest;
	private String cha;
	private String chb;
	private String chc;
	private String chd;
	private String chresult;
	private Integer chvalue;

	// Constructors
	/** default constructor */
	public ExChoice() {
	}

	/** full constructor */
	public ExChoice(ExSyllabus exSyllabus, String chquest, String cha, String chb, String chc, String chd, String chresult, Integer chvalue) {
		this.exSyllabus = exSyllabus;
		this.chquest = chquest;
		this.cha = cha;
		this.chb = chb;
		this.chc = chc;
		this.chd = chd;
		this.chresult = chresult;
		this.chvalue = chvalue;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SEQ_ExChice")
	@Column(name = "CHID", unique = true, nullable = false, precision = 38, scale = 0)
	public Integer getChid() {
		return this.chid;
	}

	public void setChid(Integer chid) {
		this.chid = chid;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "SYLLID", nullable = false)
	public ExSyllabus getExSyllabus() {
		return this.exSyllabus;
	}

	public void setExSyllabus(ExSyllabus exSyllabus) {
		this.exSyllabus = exSyllabus;
	}

	@Column(name = "CHQUEST", nullable = false)
	public String getChquest() {
		return this.chquest;
	}

	public void setChquest(String chquest) {
		this.chquest = chquest;
	}

	@Column(name = "CHA", nullable = false)
	public String getCha() {
		return this.cha;
	}

	public void setCha(String cha) {
		this.cha = cha;
	}

	@Column(name = "CHB", nullable = false)
	public String getChb() {
		return this.chb;
	}

	public void setChb(String chb) {
		this.chb = chb;
	}

	@Column(name = "CHC", nullable = false)
	public String getChc() {
		return this.chc;
	}

	public void setChc(String chc) {
		this.chc = chc;
	}

	@Column(name = "CHD", nullable = false)
	public String getChd() {
		return this.chd;
	}

	public void setChd(String chd) {
		this.chd = chd;
	}

	@Column(name = "CHRESULT", nullable = false, length = 10)
	public String getChresult() {
		return this.chresult;
	}

	public void setChresult(String chresult) {
		this.chresult = chresult;
	}

	@Column(name = "CHVALUE", nullable = false, precision = 38, scale = 0)
	public Integer getChvalue() {
		return this.chvalue;
	}

	public void setChvalue(Integer chvalue) {
		this.chvalue = chvalue;
	}
}