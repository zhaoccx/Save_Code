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
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/**
 * ExTeacher entity. @author MyEclipse Persistence Tools
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "EX_TEACHER", schema = "SCOTT")
@SequenceGenerator(name = "SEQ_ExTeacher", sequenceName = "seq_ex_teacher")
public class ExTeacher implements java.io.Serializable {

	// Fields
	private Integer teachid;
	private ExDepartment exDepartment;
	private String teachnum;
	private String teachname;
	private String teachpass;
	private String teachphone;
	private String teachcardid;
	private String teachemail;
	private Set<ExStudent> exStuTeas = new HashSet<ExStudent>(0);
	private Set<ExScore> exScores = new HashSet<ExScore>(0);
	private Set<ExSyllabus> exSyllTeas = new HashSet<ExSyllabus>(0);

	// Constructors
	/** default constructor */
	public ExTeacher() {
	}

	/** minimal constructor */
	public ExTeacher(ExDepartment exDepartment) {
		this.exDepartment = exDepartment;
	}

	/** full constructor */
	public ExTeacher(ExDepartment exDepartment, String teachnum, String teachname, String teachpass, String teachphone, String teachcardid, String teachemail, Set<ExStudent> exStuTeas, Set<ExScore> exScores, Set<ExSyllabus> exSyllTeas) {
		this.exDepartment = exDepartment;
		this.teachnum = teachnum;
		this.teachname = teachname;
		this.teachpass = teachpass;
		this.teachphone = teachphone;
		this.teachcardid = teachcardid;
		this.teachemail = teachemail;
		this.exStuTeas = exStuTeas;
		this.exScores = exScores;
		this.exSyllTeas = exSyllTeas;
	}

	// Property accessors
	@Id
	@GeneratedValue(generator = "SEQ_ExTeacher", strategy = GenerationType.SEQUENCE)
	@Column(name = "TEACHID", unique = true, nullable = false, precision = 38, scale = 0)
	public Integer getTeachid() {
		return this.teachid;
	}

	public void setTeachid(Integer teachid) {
		this.teachid = teachid;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "DEPARTID", nullable = false)
	public ExDepartment getExDepartment() {
		return this.exDepartment;
	}

	public void setExDepartment(ExDepartment exDepartment) {
		this.exDepartment = exDepartment;
	}

	@Column(name = "TEACHNUM", length = 50)
	public String getTeachnum() {
		return this.teachnum;
	}

	public void setTeachnum(String teachnum) {
		this.teachnum = teachnum;
	}

	@Column(name = "TEACHNAME", length = 50)
	public String getTeachname() {
		return this.teachname;
	}

	public void setTeachname(String teachname) {
		this.teachname = teachname;
	}

	@Column(name = "TEACHPASS", length = 50)
	public String getTeachpass() {
		return this.teachpass;
	}

	public void setTeachpass(String teachpass) {
		this.teachpass = teachpass;
	}

	@Column(name = "TEACHPHONE", length = 50)
	public String getTeachphone() {
		return this.teachphone;
	}

	public void setTeachphone(String teachphone) {
		this.teachphone = teachphone;
	}

	@Column(name = "TEACHCARDID", length = 50)
	public String getTeachcardid() {
		return this.teachcardid;
	}

	public void setTeachcardid(String teachcardid) {
		this.teachcardid = teachcardid;
	}

	@Column(name = "TEACHEMAIL", length = 50)
	public String getTeachemail() {
		return this.teachemail;
	}

	public void setTeachemail(String teachemail) {
		this.teachemail = teachemail;
	}

	@ManyToMany(targetEntity = com.exam.entity.ExStudent.class, cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "exStuSylls")
	// @JoinTable(
	// name="ex_stu_tea",
	// joinColumns=@JoinColumn(name="teachid"),
	// inverseJoinColumns=@JoinColumn(name="stuid")
	// )
	public Set<ExStudent> getExStuTeas() {
		return this.exStuTeas;
	}

	public void setExStuTeas(Set<ExStudent> exStuTeas) {
		this.exStuTeas = exStuTeas;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "exTeacher")
	public Set<ExScore> getExScores() {
		return this.exScores;
	}

	public void setExScores(Set<ExScore> exScores) {
		this.exScores = exScores;
	}

	@ManyToMany(targetEntity = com.exam.entity.ExSyllabus.class, cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "exSyllTeas")
	// @JoinTable(
	// name="ex_syll_tea",
	// joinColumns=@JoinColumn(name="teachid"),
	// inverseJoinColumns=@JoinColumn(name="syllid")
	// )
	public Set<ExSyllabus> getExSyllTeas() {
		return this.exSyllTeas;
	}

	public void setExSyllTeas(Set<ExSyllabus> exSyllTeas) {
		this.exSyllTeas = exSyllTeas;
	}
}