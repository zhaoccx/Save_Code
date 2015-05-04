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
 * ExQuestion entity. @author MyEclipse Persistence Tools
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "EX_QUESTION", schema = "SCOTT")
@SequenceGenerator(name = "SEQ_ExQuestion", sequenceName = "seq_ex_question")
public class ExQuestion implements java.io.Serializable {

	// Fields
	private Integer questid;
	private ExSyllabus exSyllabus;
	private String questquest;
	private String questresult;
	private Integer questvalue;

	// Constructors
	/** default constructor */
	public ExQuestion() {
	}

	/** full constructor */
	public ExQuestion(ExSyllabus exSyllabus, String questquest, String questresult, Integer questvalue) {
		this.exSyllabus = exSyllabus;
		this.questquest = questquest;
		this.questresult = questresult;
		this.questvalue = questvalue;
	}

	// Property accessors
	@Id
	@GeneratedValue(generator = "SEQ_ExQuestion", strategy = GenerationType.SEQUENCE)
	@Column(name = "QUESTID", unique = true, nullable = false, precision = 38, scale = 0)
	public Integer getQuestid() {
		return this.questid;
	}

	public void setQuestid(Integer questid) {
		this.questid = questid;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "SYLLID", nullable = false)
	public ExSyllabus getExSyllabus() {
		return this.exSyllabus;
	}

	public void setExSyllabus(ExSyllabus exSyllabus) {
		this.exSyllabus = exSyllabus;
	}

	@Column(name = "QUESTQUEST", nullable = false)
	public String getQuestquest() {
		return this.questquest;
	}

	public void setQuestquest(String questquest) {
		this.questquest = questquest;
	}

	@Column(name = "QUESTRESULT", nullable = false)
	public String getQuestresult() {
		return this.questresult;
	}

	public void setQuestresult(String questresult) {
		this.questresult = questresult;
	}

	@Column(name = "QUESTVALUE", nullable = false, precision = 38, scale = 0)
	public Integer getQuestvalue() {
		return this.questvalue;
	}

	public void setQuestvalue(Integer questvalue) {
		this.questvalue = questvalue;
	}
}