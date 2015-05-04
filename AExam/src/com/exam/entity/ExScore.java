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
 * ExScore entity. @author MyEclipse Persistence Tools
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "EX_SCORE", schema = "SCOTT")
@SequenceGenerator(name = "SEQ_ExScore", sequenceName = "seq_ex_score")
public class ExScore implements java.io.Serializable {

	// Fields
	private Integer scoreid;
	private ExStudent exStudent;
	private ExSyllabus exSyllabus;
	private ExTeacher exTeacher;
	private Integer scorech;
	private Integer scorecom;
	private Integer scoretorf;
	private Integer scorequest;
	private Integer scoretotal;

	// Constructors
	/** default constructor */
	public ExScore() {
	}

	/** full constructor */
	public ExScore(ExStudent exStudent, ExSyllabus exSyllabus, ExTeacher exTeacher, Integer scorech, Integer scorecom, Integer scoretorf, Integer scorequest, Integer scoretotal) {
		this.exStudent = exStudent;
		this.exSyllabus = exSyllabus;
		this.exTeacher = exTeacher;
		this.scorech = scorech;
		this.scorecom = scorecom;
		this.scoretorf = scoretorf;
		this.scorequest = scorequest;
		this.scoretotal = scoretotal;
	}

	// Property accessors
	@Id
	@GeneratedValue(generator = "SEQ_ExScore", strategy = GenerationType.SEQUENCE)
	@Column(name = "SCOREID", unique = true, nullable = false, precision = 38, scale = 0)
	public Integer getScoreid() {
		return this.scoreid;
	}

	public void setScoreid(Integer scoreid) {
		this.scoreid = scoreid;
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

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "TEACHID")
	public ExTeacher getExTeacher() {
		return this.exTeacher;
	}

	public void setExTeacher(ExTeacher exTeacher) {
		this.exTeacher = exTeacher;
	}

	@Column(name = "SCORECH", precision = 38, scale = 0)
	public Integer getScorech() {
		return this.scorech;
	}

	public void setScorech(Integer scorech) {
		this.scorech = scorech;
	}

	@Column(name = "SCORECOM", precision = 38, scale = 0)
	public Integer getScorecom() {
		return this.scorecom;
	}

	public void setScorecom(Integer scorecom) {
		this.scorecom = scorecom;
	}

	@Column(name = "SCORETORF", precision = 38, scale = 0)
	public Integer getScoretorf() {
		return this.scoretorf;
	}

	public void setScoretorf(Integer scoretorf) {
		this.scoretorf = scoretorf;
	}

	@Column(name = "SCOREQUEST", precision = 38, scale = 0)
	public Integer getScorequest() {
		return this.scorequest;
	}

	public void setScorequest(Integer scorequest) {
		this.scorequest = scorequest;
	}

	@Column(name = "SCORETOTAL", precision = 38, scale = 0)
	public Integer getScoretotal() {
		return this.scoretotal;
	}

	public void setScoretotal(Integer scoretotal) {
		this.scoretotal = scoretotal;
	}
}