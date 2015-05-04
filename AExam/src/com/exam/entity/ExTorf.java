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
 * ExTorf entity. @author MyEclipse Persistence Tools
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "EX_TORF", schema = "SCOTT")
@SequenceGenerator(name = "SEQ_ExTorf", sequenceName = "seq_ex_torf")
public class ExTorf implements java.io.Serializable {

	// Fields
	private Integer torfid;
	private ExSyllabus exSyllabus;
	private String torfquest;
	private String torfresult;
	private Integer torfvalue;

	// Constructors
	/** default constructor */
	public ExTorf() {
	}

	/** full constructor */
	public ExTorf(ExSyllabus exSyllabus, String torfquest, String torfresult, Integer torfvalue) {
		this.exSyllabus = exSyllabus;
		this.torfquest = torfquest;
		this.torfresult = torfresult;
		this.torfvalue = torfvalue;
	}

	// Property accessors
	@Id
	@GeneratedValue(generator = "SEQ_ExTorf", strategy = GenerationType.SEQUENCE)
	@Column(name = "TORFID", unique = true, nullable = false, precision = 38, scale = 0)
	public Integer getTorfid() {
		return this.torfid;
	}

	public void setTorfid(Integer torfid) {
		this.torfid = torfid;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "SYLLID", nullable = false)
	public ExSyllabus getExSyllabus() {
		return this.exSyllabus;
	}

	public void setExSyllabus(ExSyllabus exSyllabus) {
		this.exSyllabus = exSyllabus;
	}

	@Column(name = "TORFQUEST", nullable = false)
	public String getTorfquest() {
		return this.torfquest;
	}

	public void setTorfquest(String torfquest) {
		this.torfquest = torfquest;
	}

	@Column(name = "TORFRESULT", nullable = false, length = 10)
	public String getTorfresult() {
		return this.torfresult;
	}

	public void setTorfresult(String torfresult) {
		this.torfresult = torfresult;
	}

	@Column(name = "TORFVALUE", nullable = false, precision = 38, scale = 0)
	public Integer getTorfvalue() {
		return this.torfvalue;
	}

	public void setTorfvalue(Integer torfvalue) {
		this.torfvalue = torfvalue;
	}
}