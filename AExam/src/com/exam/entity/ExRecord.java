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
 * ExRecord entity. @author MyEclipse Persistence Tools
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "EX_RECORD", schema = "SCOTT")
@SequenceGenerator(name = "SEQ_ExRecord", sequenceName = "seq_ex_record")
public class ExRecord implements java.io.Serializable {

	// Fields
	private Integer recid;
	private ExStudent exStudent;
	private ExSyllabus exSyllabus;
	private String recchquest;
	private String recchvalue;
	private String reccomquest;
	private String reccomvalue;
	private String rectorfquest;
	private String rectorfvalue;
	private String recququest;
	private String recquvalue;

	// Constructors
	/** default constructor */
	public ExRecord() {
	}

	/** full constructor */
	public ExRecord(ExStudent exStudent, ExSyllabus exSyllabus, String recchquest, String recchvalue, String reccomquest, String reccomvalue, String rectorfquest, String rectorfvalue, String recququest, String recquvalue) {
		this.exStudent = exStudent;
		this.exSyllabus = exSyllabus;
		this.recchquest = recchquest;
		this.recchvalue = recchvalue;
		this.reccomquest = reccomquest;
		this.reccomvalue = reccomvalue;
		this.rectorfquest = rectorfquest;
		this.rectorfvalue = rectorfvalue;
		this.recququest = recququest;
		this.recquvalue = recquvalue;
	}

	// Property accessors
	@Id
	@GeneratedValue(generator = "SEQ_ExRecord", strategy = GenerationType.SEQUENCE)
	@Column(name = "RECID", unique = true, nullable = false, precision = 38, scale = 0)
	public Integer getRecid() {
		return this.recid;
	}

	public void setRecid(Integer recid) {
		this.recid = recid;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "STUID")
	public ExStudent getExStudent() {
		return this.exStudent;
	}

	public void setExStudent(ExStudent exStudent) {
		this.exStudent = exStudent;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "SYLLID")
	public ExSyllabus getExSyllabus() {
		return this.exSyllabus;
	}

	public void setExSyllabus(ExSyllabus exSyllabus) {
		this.exSyllabus = exSyllabus;
	}

	@Column(name = "RECCHQUEST", length = 100)
	public String getRecchquest() {
		return this.recchquest;
	}

	public void setRecchquest(String recchquest) {
		this.recchquest = recchquest;
	}

	@Column(name = "RECCHVALUE", length = 100)
	public String getRecchvalue() {
		return this.recchvalue;
	}

	public void setRecchvalue(String recchvalue) {
		this.recchvalue = recchvalue;
	}

	@Column(name = "RECCOMQUEST", length = 100)
	public String getReccomquest() {
		return this.reccomquest;
	}

	public void setReccomquest(String reccomquest) {
		this.reccomquest = reccomquest;
	}

	@Column(name = "RECCOMVALUE", length = 1000)
	public String getReccomvalue() {
		return this.reccomvalue;
	}

	public void setReccomvalue(String reccomvalue) {
		this.reccomvalue = reccomvalue;
	}

	@Column(name = "RECTORFQUEST", length = 100)
	public String getRectorfquest() {
		return this.rectorfquest;
	}

	public void setRectorfquest(String rectorfquest) {
		this.rectorfquest = rectorfquest;
	}

	@Column(name = "RECTORFVALUE", length = 100)
	public String getRectorfvalue() {
		return this.rectorfvalue;
	}

	public void setRectorfvalue(String rectorfvalue) {
		this.rectorfvalue = rectorfvalue;
	}

	@Column(name = "RECQUQUEST", length = 100)
	public String getRecququest() {
		return this.recququest;
	}

	public void setRecququest(String recququest) {
		this.recququest = recququest;
	}

	@Column(name = "RECQUVALUE", length = 2000)
	public String getRecquvalue() {
		return this.recquvalue;
	}

	public void setRecquvalue(String recquvalue) {
		this.recquvalue = recquvalue;
	}
}