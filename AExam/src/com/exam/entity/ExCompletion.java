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
 * ExCompletion entity. @author MyEclipse Persistence Tools
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "EX_COMPLETION", schema = "SCOTT")
@SequenceGenerator(name = "SEQ_ExCompletion", sequenceName = "seq_ex_completion")
public class ExCompletion implements java.io.Serializable {

	// Fields
	private Integer comid;
	private ExSyllabus exSyllabus;
	private String comquest;
	private String comresult;
	private Integer comvalue;

	// Constructors
	/** default constructor */
	public ExCompletion() {
	}

	/** full constructor */
	public ExCompletion(ExSyllabus exSyllabus, String comquest, String comresult, Integer comvalue) {
		this.exSyllabus = exSyllabus;
		this.comquest = comquest;
		this.comresult = comresult;
		this.comvalue = comvalue;
	}

	// Property accessors
	@Id
	@GeneratedValue(generator = "SEQ_ExCompletion", strategy = GenerationType.SEQUENCE)
	@Column(name = "COMID", unique = true, nullable = false, precision = 38, scale = 0)
	public Integer getComid() {
		return this.comid;
	}

	public void setComid(Integer comid) {
		this.comid = comid;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "SYLLID", nullable = false)
	public ExSyllabus getExSyllabus() {
		return this.exSyllabus;
	}

	public void setExSyllabus(ExSyllabus exSyllabus) {
		this.exSyllabus = exSyllabus;
	}

	@Column(name = "COMQUEST", nullable = false)
	public String getComquest() {
		return this.comquest;
	}

	public void setComquest(String comquest) {
		this.comquest = comquest;
	}

	@Column(name = "COMRESULT", nullable = false, length = 200)
	public String getComresult() {
		return this.comresult;
	}

	public void setComresult(String comresult) {
		this.comresult = comresult;
	}

	@Column(name = "COMVALUE", nullable = false, precision = 38, scale = 0)
	public Integer getComvalue() {
		return this.comvalue;
	}

	public void setComvalue(Integer comvalue) {
		this.comvalue = comvalue;
	}
}