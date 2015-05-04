package com.boao.user.controller.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {

	/**
	 * 顶部的显示登陆信息
	 * 
	 * @param session
	 * @return
	 */
	@RequestMapping("top")
	public String top(HttpSession session) {
		return "user/top";
	}

	/**
	 * 左边菜单栏
	 * 
	 * @param model
	 * @param current
	 * @return
	 */
	@RequestMapping("/left")
	public String left(Model model, String current) {
		model.addAttribute("current", current);
		return "user/left";
	}

	/**
	 * 头部广告栏
	 * 
	 * @return
	 */
	@RequestMapping("/header")
	public String header() {
		return "user/header";
	}

	/**
	 * 用户中心主页
	 * 
	 * @return
	 */
	@RequestMapping("/home")
	public String home() {
		return "user/home";
	}

	/**
	 * 我发布的信息
	 * 
	 * @return
	 */
	@RequestMapping("/info")
	public String info() {
		return "user/info";
	}

	/**
	 * 信息列表
	 * 
	 * @param model
	 * @param current
	 * @return
	 */
	@RequestMapping("/infoList")
	public String infoList(Model model, String current) {
		model.addAttribute("current", current);
		return "user/info_list";
	}

	/**
	 * 我的消息
	 * 
	 * @return
	 */
	@RequestMapping("/msg")
	public String msg() {
		return "user/msg";
	}

	@RequestMapping("/msgList")
	public String msgList(Model model, String current) {
		model.addAttribute("current", current);
		return "user/msg_list";
	}

	/**
	 * 我的账户
	 * 
	 * @return
	 */
	@RequestMapping("/account")
	public String account() {
		return "user/account";
	}

	/**
	 * 帐号安全
	 * 
	 * @return
	 */
	@RequestMapping("/safe")
	public String safe() {
		return "user/safe";
	}

	/**
	 * 我的积分
	 * 
	 * @return
	 */
	@RequestMapping("/bonus")
	public String bonus() {
		return "user/bonus";
	}

	/**
	 * 积分明细
	 * 
	 * @return
	 */
	@RequestMapping("/bonusList")
	public String bonusList(Model model, String current) {
		model.addAttribute("current", current);
		return "user/bonus_list";
	}

	/**
	 * 我的余额
	 * 
	 * @return
	 */
	@RequestMapping("/balance")
	public String balance() {
		return "user/balance";
	}

	@RequestMapping("/balanceList")
	public String balanceList(Model model, String current) {
		model.addAttribute("current", current);
		return "user/balance_list";
	}

	/**
	 * 信用记录
	 * 
	 * @return
	 */
	@RequestMapping("/credit")
	public String credit() {
		return "user/credit";
	}

	/**
	 * 我要充值
	 * 
	 * @return
	 */
	@RequestMapping("/charge")
	public String charge() {
		return "user/charge";
	}

	@RequestMapping("/test")
	public void test(@RequestBody String body) {
		System.out.println("body是:" + body);
	}
}
