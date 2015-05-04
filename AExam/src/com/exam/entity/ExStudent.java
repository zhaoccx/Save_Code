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
 * ExStudent entity. @author MyEclipse Persistence Tools
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "EX_STUDENT", schema = "SCOTT")
@SequenceGenerator(name = "SEQ_ExStudent", sequenceName = "seq_ex_student")
public class ExStudent implements java.io.Serializable {

	// Fields
	private Integer stuid;
	private String stunum;
	private String stuname;
	private String stupass;
	private String stuphone;
	private String stucardid;
	private String stuemail;
	private Set<ExTeacher> exStuTeas = new HashSet<ExTeacher>(0);
	private Set<ExSyllabus> exStuSylls = new HashSet<ExSyllabus>(0);
	private Set<ExRecord> exRecords = new HashSet<ExRecord>(0);
	private Set<ExScore> exScores = new HashSet<ExScore>(0);

	// Constructors
	/** default constructor */
	public ExStudent() {
	}

	/** full constructor */
	public ExStudent(String stunum, String stuname, String stupass, String stuphone, String stucardid, String stuemail, Set<ExTeacher> exStuTeas, Set<ExSyllabus> exStuSylls, Set<ExRecord> exRecords, Set<ExScore> exScores) {
		this.stunum = stunum;
		this.stuname = stuname;
		this.stupass = stupass;
		this.stuphone = stuphone;
		this.stucardid = stucardid;
		this.stuemail = stuemail;
		this.exStuTeas = exStuTeas;
		this.exStuSylls = exStuSylls;
		this.exRecords = exRecords;
		this.exScores = exScores;
	}

	// Property accessors
	@Id
	@GeneratedValue(generator = "SEQ_ExStudent", strategy = GenerationType.SEQUENCE)
	@Column(name = "STUID", unique = true, nullable = false, precision = 38, scale = 0)
	public Integer getStuid() {
		return this.stuid;
	}

	public void setStuid(Integer stuid) {
		this.stuid = stuid;
	}

	@Column(name = "STUNUM", length = 50)
	public String getStunum() {
		return this.stunum;
	}

	public void setStunum(String stunum) {
		this.stunum = stunum;
	}

	@Column(name = "STUNAME", length = 50)
	public String getStuname() {
		return this.stuname;
	}

	public void setStuname(String stuname) {
		this.stuname = stuname;
	}

	@Column(name = "STUPASS", length = 50)
	public String getStupass() {
		return this.stupass;
	}

	public void setStupass(String stupass) {
		this.stupass = stupass;
	}

	@Column(name = "STUPHONE", length = 50)
	public String getStuphone() {
		return this.stuphone;
	}

	public void setStuphone(String stuphone) {
		this.stuphone = stuphone;
	}

	@Column(name = "STUCARDID", length = 50)
	public String getStucardid() {
		return this.stucardid;
	}

	public void setStucardid(String stucardid) {
		this.stucardid = stucardid;
	}

	@Column(name = "STUEMAIL", length = 50)
	public String getStuemail() {
		return this.stuemail;
	}

	public void setStuemail(String stuemail) {
		this.stuemail = stuemail;
	}

	@ManyToMany(targetEntity = com.exam.entity.ExTeacher.class, cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinTable(name = "ex_stu_tea", joinColumns = @JoinColumn(name = "stuid"), inverseJoinColumns = @JoinColumn(name = "teachid"))
	public Set<ExTeacher> getExStuTeas() {
		return this.exStuTeas;
	}

	public void setExStuTeas(Set<ExTeacher> exStuTeas) {
		this.exStuTeas = exStuTeas;
	}

	@ManyToMany(targetEntity = com.exam.entity.ExSyllabus.class, cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinTable(name = "ex_stu_syll", joinColumns = @JoinColumn(name = "stuid"), inverseJoinColumns = @JoinColumn(name = "syllid"))
	public Set<ExSyllabus> getExStuSylls() {
		return this.exStuSylls;
	}

	public void setExStuSylls(Set<ExSyllabus> exStuSylls) {
		this.exStuSylls = exStuSylls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "exStudent")
	public Set<ExRecord> getExRecords() {
		return this.exRecords;
	}

	public void setExRecords(Set<ExRecord> exRecords) {
		this.exRecords = exRecords;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "exStudent")
	public Set<ExScore> getExScores() {
		return this.exScores;
	}

	public void setExScores(Set<ExScore> exScores) {
		this.exScores = exScores;
	}
}