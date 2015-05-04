package com.exam.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/**
 * ExSyllabus entity. @author MyEclipse Persistence Tools
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "EX_SYLLABUS", schema = "SCOTT")
@SequenceGenerator(name = "SEQ_ExSyllabus", sequenceName = "seq_ex_syllabus")
public class ExSyllabus implements java.io.Serializable {

	// Fields
	private Integer syllid;
	private String syllname;
	private Set<ExScore> exScores = new HashSet<ExScore>(0);
	private Set<ExCompletion> exCompletions = new HashSet<ExCompletion>(0);
	private Set<ExChoice> exChoices = new HashSet<ExChoice>(0);
	private Set<ExTorf> exTorfs = new HashSet<ExTorf>(0);
	private Set<ExTeacher> exSyllTeas = new HashSet<ExTeacher>(0);
	private Set<ExRecord> exRecords = new HashSet<ExRecord>(0);
	private Set<ExQuestion> exQuestions = new HashSet<ExQuestion>(0);
	private Set<ExStudent> exStuSylls = new HashSet<ExStudent>(0);

	// Constructors
	/** default constructor */
	public ExSyllabus() {
	}

	/** minimal constructor */
	public ExSyllabus(String syllname) {
		this.syllname = syllname;
	}

	/** full constructor */
	public ExSyllabus(String syllname, Set<ExScore> exScores, Set<ExCompletion> exCompletions, Set<ExChoice> exChoices, Set<ExTorf> exTorfs, Set<ExTeacher> exSyllTeas, Set<ExRecord> exRecords, Set<ExQuestion> exQuestions, Set<ExStudent> exStuSylls) {
		this.syllname = syllname;
		this.exScores = exScores;
		this.exCompletions = exCompletions;
		this.exChoices = exChoices;
		this.exTorfs = exTorfs;
		this.exSyllTeas = exSyllTeas;
		this.exRecords = exRecords;
		this.exQuestions = exQuestions;
		this.exStuSylls = exStuSylls;
	}

	// Property accessors
	@Id
	@GeneratedValue(generator = "SEQ_ExSyllabus", strategy = GenerationType.SEQUENCE)
	@Column(name = "SYLLID", unique = true, nullable = false, precision = 38, scale = 0)
	public Integer getSyllid() {
		return this.syllid;
	}

	public void setSyllid(Integer syllid) {
		this.syllid = syllid;
	}

	@Column(name = "SYLLNAME", nullable = false, length = 50)
	public String getSyllname() {
		return this.syllname;
	}

	public void setSyllname(String syllname) {
		this.syllname = syllname;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "exSyllabus")
	public Set<ExScore> getExScores() {
		return this.exScores;
	}

	public void setExScores(Set<ExScore> exScores) {
		this.exScores = exScores;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "exSyllabus")
	public Set<ExCompletion> getExCompletions() {
		return this.exCompletions;
	}

	public void setExCompletions(Set<ExCompletion> exCompletions) {
		this.exCompletions = exCompletions;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "exSyllabus")
	public Set<ExChoice> getExChoices() {
		return this.exChoices;
	}

	public void setExChoices(Set<ExChoice> exChoices) {
		this.exChoices = exChoices;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "exSyllabus")
	public Set<ExTorf> getExTorfs() {
		return this.exTorfs;
	}

	public void setExTorfs(Set<ExTorf> exTorfs) {
		this.exTorfs = exTorfs;
	}

	@ManyToMany(targetEntity = com.exam.entity.ExTeacher.class, cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JoinTable(name = "ex_syll_tea", joinColumns = @JoinColumn(name = "syllid"), inverseJoinColumns = @JoinColumn(name = "teachid"))
	public Set<ExTeacher> getExSyllTeas() {
		return this.exSyllTeas;
	}

	public void setExSyllTeas(Set<ExTeacher> exSyllTeas) {
		this.exSyllTeas = exSyllTeas;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "exSyllabus")
	public Set<ExRecord> getExRecords() {
		return this.exRecords;
	}

	public void setExRecords(Set<ExRecord> exRecords) {
		this.exRecords = exRecords;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "exSyllabus")
	public Set<ExQuestion> getExQuestions() {
		return this.exQuestions;
	}

	public void setExQuestions(Set<ExQuestion> exQuestions) {
		this.exQuestions = exQuestions;
	}

	@ManyToMany(targetEntity = com.exam.entity.ExStudent.class, cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "exStuSylls")
	// @JoinTable(
	// name="ex_stu_syll",
	// joinColumns=@JoinColumn(name="syllid"),
	// inverseJoinColumns=@JoinColumn(name="stuid")
	// )
	public Set<ExStudent> getExStuSylls() {
		return this.exStuSylls;
	}

	public void setExStuSylls(Set<ExStudent> exStuSylls) {
		this.exStuSylls = exStuSylls;
	}
}