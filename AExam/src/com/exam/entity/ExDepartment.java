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
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/**
 * ExDepartment entity. @author MyEclipse Persistence Tools
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "EX_DEPARTMENT", schema = "SCOTT")
@SequenceGenerator(name = "SEQ_ExDepartment", sequenceName = "seq_ex_department")
public class ExDepartment implements java.io.Serializable {

	// Fields
	private Integer departid;
	private String departname;
	private Set<ExTeacher> exTeachers = new HashSet<ExTeacher>(0);

	// Constructors
	/** default constructor */
	public ExDepartment() {
	}

	/** minimal constructor */
	public ExDepartment(String departname) {
		this.departname = departname;
	}

	/** full constructor */
	public ExDepartment(String departname, Set<ExTeacher> exTeachers) {
		this.departname = departname;
		this.exTeachers = exTeachers;
	}

	// Property accessors
	@Id
	@GeneratedValue(generator = "SEQ_ExDepartment", strategy = GenerationType.SEQUENCE)
	@Column(name = "DEPARTID", unique = true, nullable = false, precision = 38, scale = 0)
	public Integer getDepartid() {
		return this.departid;
	}

	public void setDepartid(Integer departid) {
		this.departid = departid;
	}

	@Column(name = "DEPARTNAME", nullable = false, length = 50)
	public String getDepartname() {
		return this.departname;
	}

	public void setDepartname(String departname) {
		this.departname = departname;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "exDepartment")
	public Set<ExTeacher> getExTeachers() {
		return this.exTeachers;
	}

	public void setExTeachers(Set<ExTeacher> exTeachers) {
		this.exTeachers = exTeachers;
	}
}