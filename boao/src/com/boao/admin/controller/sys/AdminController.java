package com.boao.admin.controller.sys;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.boao.admin.biz.AdminBiz;
import com.boao.admin.model.TblAdmin;
import com.mysql.jdbc.StringUtils;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Resource
	private AdminBiz adminBiz;

	@RequestMapping("login")
	public String login(Model model, String username, String password, HttpSession session) {
		if (StringUtils.isNullOrEmpty(username) && StringUtils.isNullOrEmpty(password)) {
			return "control/index";
		}
		TblAdmin admin = adminBiz.login(username, password);
		if (admin != null) {
			session.setAttribute("ADMIN", admin);
			return "redirect:/admin/";
		}
		else {
			model.addAttribute("LOGIN_ERROR", "帐号名或密码错误");
			return "control/index";
		}
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("ADMIN");
		session.invalidate();
		return "redirect:/admin/login";
	}

	@RequestMapping("/")
	public String index(Model model, HttpSession session) {
		if (session.getAttribute("ADMIN") == null) {
			return "redirect:/admin/login";
		}
		return "control/main";
	}
}
