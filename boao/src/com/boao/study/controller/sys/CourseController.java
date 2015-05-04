package com.boao.study.controller.sys;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.boao.study.biz.CourseBiz;
import com.boao.study.model.TblCourse;
import com.boao.util.Page;
import com.boao.util.StringUtils;

@Controller
@RequestMapping("/admin")
public class CourseController {

	@Resource
	private CourseBiz courseBiz;

	@RequestMapping("courseList")
	public String courseList(Model model, Page page, String category) {
		model.addAttribute("objs", courseBiz.getGradeList(page, category));
		model.addAttribute("category", category);
		return "control/course_list";
	}

	@RequestMapping("toAddCourse")
	public String toAddCourse() {
		return "control/course_add";
	}

	@RequestMapping("addCourse")
	public String addCourse(Model model, TblCourse course) {
		this.courseBiz.add(course);
		return "redirect:/admin/courseList";
	}

	@RequestMapping("toEditCourse-{id}")
	public String toEditCourse(Model model, @PathVariable("id") Integer id) {
		model.addAttribute("obj", courseBiz.getById(id));
		return "control/course_edit";
	}

	@RequestMapping("editCourse")
	public String editCourse(Model model, TblCourse course) {
		this.courseBiz.update(course);
		return "redirect:/admin/courseList";
	}

	@RequestMapping("deleteCourse-{id}")
	@ResponseBody
	public boolean deleteCourse(@PathVariable("id") Integer id) {
		return this.courseBiz.deleteById(id);
	}

	@SuppressWarnings("unchecked")
	@RequestMapping("courseCategoryList")
	public String courseCategoryList(Page page, HttpSession session) {
		List<String> list = (List<String>) session.getServletContext().getAttribute("COURSE_CATEGORIES");
		page.initCountAndSum(list.size());
		;
		return "control/course_category_list";
	}

	@RequestMapping("addCourseCategory")
	public String addCourseCategory(String category, HttpSession session) {
		StringUtils.addValue("course.categories", "COURSE_CATEGORIES", category, session.getServletContext());
		return "redirect:/admin/courseCategoryList";
	}

	@RequestMapping("deleteCourseCategory")
	@ResponseBody
	public boolean deleteCourseCategory(String category, HttpSession session) {
		StringUtils.deleteValue("course.categories", "COURSE_CATEGORIES", category, session.getServletContext());
		return true;
	}
}
