package com.exam.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.exam.biz.DepartmentBiz;
import com.exam.biz.ManagerBiz;
import com.exam.biz.StudentBiz;
import com.exam.biz.TeacherBiz;
import com.exam.entity.ExDepartment;
import com.exam.entity.ExManager;
import com.exam.entity.ExStudent;
import com.exam.entity.ExTeacher;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
/**
 * 这个Action主要用于处理管理员相关的请求
 * @author zhaocc
 */
public class ManagerAction extends ActionSupport {

	private ExManager exManager;
	private ExStudent exStudent;
	private ExTeacher exTeacher;
	private ExDepartment exDepartment;
	private DepartmentBiz departmentBiz;
	private ManagerBiz managerBiz;
	private StudentBiz studentBiz;
	private TeacherBiz teacherBiz;

	/**
	 * 管理员身份验证
	 * 
	 * @return Success or fail;
	 * @throws Exception
	 */
	public String login() throws Exception {
		ExManager aExManager = this.managerBiz.getManagerbiz(exManager);
		if (null != aExManager) {
			return "success";
		}
		else {
			return "fail";
		}
	}

	/**
	 * 退出系统
	 * 
	 * @return Fial
	 */
	public String ExitWork() {
		return "fail";
	}

	/**
	 * 进入manager首页
	 * 
	 * @return
	 */
	@SuppressWarnings("static-access")
	public String managerIndex() {
		return this.SUCCESS;
	}

	/**
	 * 添加学生
	 * 
	 * @return
	 */
	@SuppressWarnings("static-access")
	public String insertStudent() {
		if (null != exStudent) {
			System.out.println(exStudent.getStunum());
			this.studentBiz.insertStudentbiz(exStudent);
			return this.SUCCESS;
		}
		return "fail";
	}

	/**
	 * 删除学生
	 * 
	 * @return
	 */
	public String deleteStudent() {
		if (null != exStudent) {
			studentBiz.deleteStudentbiz(exStudent);
			return "success";
		}
		return "fail";
	}

	public String deleteStudent2() {
		System.out.println(exStudent.getStunum());
		if (null != exStudent) {
			studentBiz.deleteStudentbiz(exStudent);
			return showStudent();
		}
		return "fail";
	}

	/**
	 * 显示所有学生信息
	 * 
	 * @return
	 */
	public String showStudent() {
		Set<ExStudent> studentList = this.studentBiz.getStudentsbiz(null);
		if (studentList.size() >= 0) {
			ActionContext.getContext().put("studentListInfo", studentList);
			System.out.println(studentList.size());
			return "student";
		}
		return "fail";
	}

	/**
	 * 通过id查询学生信息
	 * 
	 * @return
	 */
	public String showStudentById() {
		HttpServletRequest sev = ServletActionContext.getRequest();
		String string = sev.getParameter("abc");
		System.out.println(string);
		exStudent.setStunum(string);
		Set<ExStudent> studentList = this.studentBiz.getStudentsbiz(exStudent);
		if (studentList.size() >= 0) {
			ActionContext.getContext().put("studentListInfo", studentList);
			return "student";
		}
		return "fail";
	}

	/**
	 * 添加教师
	 * 
	 * @return
	 */
	@SuppressWarnings("static-access")
	public String insertTeacher() {
		if (null != exTeacher) {
			exTeacher.setExDepartment(exDepartment);
			this.teacherBiz.insertTeacherbiz(exTeacher);
			return this.SUCCESS;
		}
		return "fail";
	}

	/**
	 * 删除教师
	 * 
	 * @return
	 */
	@SuppressWarnings("static-access")
	public String deleteTeacher() {
		if (null != exTeacher) {
			teacherBiz.deleteTeacherbiz(exTeacher);
			return this.SUCCESS;
		}
		return "fail";
	}

	public String deleteTeacher2() {
		if (null != exTeacher) {
			teacherBiz.deleteTeacherbiz(exTeacher);
			return showTeacher();
		}
		return "fail";
	}

	/**
	 * 显示所有教师信息
	 * 
	 * @return
	 */
	public String showTeacher() {
		Set<ExTeacher> teacherList = this.teacherBiz.getTeachersbiz(null);
		if (teacherList.size() >= 0) {
			ActionContext.getContext().put("teacherListInfo", teacherList);
			return "teacher";
		}
		return "fail";
	}

	/**
	 * 通过id查询教师信息
	 * 
	 * @return
	 */
	public String showTeacherById() {
		Set<ExTeacher> teacherList = this.teacherBiz.getTeachersbiz(null);
		if (teacherList.size() >= 0) {
			ActionContext.getContext().put("teacherListInfo", teacherList);
			return "teacher";
		}
		return "fail";
	}

	public String updateTeacher() {
		return "fial";
	}

	/**
	 * ajax
	 */
	public void showTeacherByAjax() {
		// Set<ExTeacher> teacherList=this.teacherBiz.getTeachersbiz(null);
		HttpServletResponse response = ServletActionContext.getResponse();
		System.out.println("HttpServletResponse response= ServletActionContext.getResponse();");
		PrintWriter outPrintWriter = null;
		try {
			outPrintWriter = response.getWriter();
			outPrintWriter.write("1");
			outPrintWriter.flush();
		}
		catch (IOException e) {
			e.printStackTrace();
		}
		finally {
			outPrintWriter.close();
		}
	}

	/**
	 * @return the exManager
	 */
	public ExManager getExManager() {
		return exManager;
	}

	/**
	 * @param exManager
	 *            the exManager to set
	 */
	public void setExManager(ExManager exManager) {
		this.exManager = exManager;
	}

	/**
	 * @return the managerBiz
	 */
	public ManagerBiz getManagerBiz() {
		return managerBiz;
	}

	/**
	 * @param managerBiz
	 *            the managerBiz to set
	 */
	public void setManagerBiz(ManagerBiz managerBiz) {
		this.managerBiz = managerBiz;
	}

	public ExStudent getExStudent() {
		return exStudent;
	}

	public void setExStudent(ExStudent exStudent) {
		this.exStudent = exStudent;
	}

	public ExTeacher getExTeacher() {
		return exTeacher;
	}

	public void setExTeacher(ExTeacher exTeacher) {
		this.exTeacher = exTeacher;
	}

	public StudentBiz getStudentBiz() {
		return studentBiz;
	}

	public void setStudentBiz(StudentBiz studentBiz) {
		this.studentBiz = studentBiz;
	}

	public TeacherBiz getTeacherBiz() {
		return teacherBiz;
	}

	public void setTeacherBiz(TeacherBiz teacherBiz) {
		this.teacherBiz = teacherBiz;
	}

	public ExDepartment getExDepartment() {
		return exDepartment;
	}

	public void setExDepartment(ExDepartment exDepartment) {
		this.exDepartment = exDepartment;
	}

	public DepartmentBiz getDepartmentBiz() {
		return departmentBiz;
	}

	public void setDepartmentBiz(DepartmentBiz departmentBiz) {
		this.departmentBiz = departmentBiz;
	}
}
