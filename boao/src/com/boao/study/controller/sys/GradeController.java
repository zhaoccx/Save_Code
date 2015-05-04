package com.boao.study.controller.sys;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.boao.study.biz.GradeBiz;
import com.boao.study.model.TblGrade;
import com.boao.util.Page;
import com.boao.util.StringUtils;

@Controller
@RequestMapping("/admin")
public class GradeController {

	@Resource
	private GradeBiz gradeBiz;

	@RequestMapping("/gradeList")
	public String gradeList(Model model, String category, Page page) {
		model.addAttribute("objs", gradeBiz.getGradeList(page, category));
		model.addAttribute("category", category);
		return "control/grade_list";
	}

	@RequestMapping("/deleteGrade-{id}")
	@ResponseBody
	public boolean deleteGrade(@PathVariable("id") Integer id) {
		return gradeBiz.deleteById(id);
	}

	@RequestMapping("toAddGrade")
	public String toAddGrade() {
		return "control/grade_add";
	}

	@RequestMapping("addGrade")
	public String addGrade(Model model, TblGrade grade) {
		this.gradeBiz.add(grade);
		Page page = new Page();
		model.addAttribute("page", page);
		return this.gradeList(model, grade.getCategory(), page);
	}

	@RequestMapping("toEditGrade-{id}")
	public String toEditGrade(Model model, @PathVariable("id") int id) {
		model.addAttribute("obj", gradeBiz.getById(id));
		return "control/grade_edit";
	}

	@RequestMapping("editGrade")
	public String editGrade(Model model, TblGrade grade) {
		this.gradeBiz.update(grade);
		Page page = new Page();
		model.addAttribute("page", page);
		return this.gradeList(model, grade.getCategory(), page);
	}

	@SuppressWarnings("unchecked")
	@RequestMapping("gradeCategoryList")
	public String gradeCategoryList(Page page, HttpSession session) {
		List<String> list = (List<String>) session.getServletContext().getAttribute("GRADE_CATEGORIES");
		page.initCountAndSum(list.size());
		;
		return "control/grade_category_list";
	}

	@RequestMapping("addGradeCategory")
	public String addGradeCategory(String category, HttpSession session) {
		StringUtils.addValue("grade.categories", "GRADE_CATEGORIES", category, session.getServletContext());
		return "redirect:/admin/gradeCategoryList";
	}

	@RequestMapping("deleteGradeCategory")
	@ResponseBody
	public boolean deleteGradeCategory(String category, HttpSession session) {
		StringUtils.deleteValue("grade.categories", "GRADE_CATEGORIES", category, session.getServletContext());
		return true;
	}
}
