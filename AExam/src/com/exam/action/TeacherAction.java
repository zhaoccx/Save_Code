package com.exam.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import com.exam.biz.SyllabusBiz;
import com.exam.biz.TeacherBiz;
import com.exam.entity.ExSyllabus;
import com.exam.entity.ExTeacher;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
/**
 * 这个Action主要用于处理老师相关的请求
 * @author Administrator
 *
 */
public class TeacherAction extends ActionSupport {

	private ExTeacher teacher;
	private TeacherBiz teacherBiz;
	private SyllabusBiz syllabusBiz;

	/**
	 * @return the teacher
	 */
	public ExTeacher getTeacher() {
		return teacher;
	}

	/**
	 * @return the syllabusBiz
	 */
	public SyllabusBiz getSyllabusBiz() {
		return syllabusBiz;
	}

	/**
	 * @param syllabusBiz
	 *            the syllabusBiz to set
	 */
	public void setSyllabusBiz(SyllabusBiz syllabusBiz) {
		this.syllabusBiz = syllabusBiz;
	}

	/**
	 * @param teacher
	 *            the teacher to set
	 */
	public void setTeacher(ExTeacher teacher) {
		this.teacher = teacher;
	}

	/**
	 * @return the teacherBiz
	 */
	public TeacherBiz getTeacherBiz() {
		return teacherBiz;
	}

	/**
	 * @param teacherBiz
	 *            the teacherBiz to set
	 */
	public void setTeacherBiz(TeacherBiz teacherBiz) {
		this.teacherBiz = teacherBiz;
	}

	@SuppressWarnings("unchecked")
	public String loginTeacher() throws Exception {
		ExTeacher tExTeacher = this.teacherBiz.getTeacherbiz(this.teacher);
		if (null == tExTeacher) {
			return "fail";
		}
		Set<ExSyllabus> set = tExTeacher.getExSyllTeas();
		List<ExSyllabus> list = new ArrayList<ExSyllabus>();
		for (ExSyllabus sy : set) {
			list.add(sy);
		}
		ActionContext.getContext().getSession().put("user", tExTeacher);
		ActionContext.getContext().getSession().put("syllabus", list);
		return "success";
	}
}
