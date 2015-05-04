package com.boao.user.model;

public class TblUserTechWithBLOBs extends TblUserTech {

	private String subjects;
	private String evaluation;

	public String getSubjects() {
		return subjects;
	}

	public void setSubjects(String subjects) {
		this.subjects = subjects;
	}

	public String getEvaluation() {
		return evaluation;
	}

	public void setEvaluation(String evaluation) {
		this.evaluation = evaluation;
	}
}