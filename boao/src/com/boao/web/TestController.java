package com.boao.web;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.boao.util.AppConfig;
import com.boao.util.FileUtil;
import com.oreilly.servlet.MultipartRequest;

@Controller
public class TestController {

	private final Logger log = Logger.getLogger(TestController.class);

	@RequestMapping("/test")
	public String test(Model model) {
		String MSG = "这个是测试数据";
		model.addAttribute(MSG);
		return "test";
	}

	@RequestMapping("/testUpload")
	public String testUpload(HttpServletRequest request, Model model) throws Exception {
		String path = AppConfig.readValue("dir.user");
		MultipartRequest mr = FileUtil.uploadFile(request, path);
		if (mr != null)
			log.info("上传后的文件路径为：" + mr.getFilesystemName("file"));
		model.addAttribute("PATH", path + mr.getFilesystemName("file"));
		return "test";
	}

	@RequestMapping("/testDate")
	public String testDate(Model model, Date date) {
		System.out.println(date);
		model.addAttribute("DATE", date);
		return "test_date";
	}

	@RequestMapping("test1")
	public String test1(Model model) {
		model.addAttribute("MSG", "还是测试消息");
		return "NewFile";
	}

	@RequestMapping("toAddUser")
	public String toAddUser() {
		return "user_add";
	}

	@RequestMapping("toMap")
	public String getMap() {
		return "to_map";
	}

	@RequestMapping("map")
	public String getMap(Model model, String addr) {
		model.addAttribute("ADDR", addr);
		return "baidumap";
	}

	@RequestMapping("auto")
	public String auto() {
		return "auto";
	}

	String[] addrs = new String[] { "Aberdeen", "Ada", "Adamsville", "Addyston", "Adelphi", "Adena", "Adrian", "Akron", "Clarksville", "Clay Center", "Clayton", "Cleveland", "Cleves", "Clifton", "Mc Donald", "Mc Guffey", "Mechanicsburg", "Mechanicstown", "Medina", "Medway", "Melmore", "Melrose", "Mendon", "Mentor", "Mesopotamia", "Metamora", "Miamisburg", "Miamitown", "Miamiville", "Middle Bass", "Middle Point", "Middlebranch", "Middleburg", "Middlefield", "Middleport", "Middletown", "Midland", "Midvale", "Milan", "Milford", "Milford Center", "Millbury", "Milledgeville", "Miller City", "Millersburg", "Millersport", "Millfield", "Wheelersburg", "Whipple", "White Cottage", "Whitehouse", "Wickliffe", "Wilberforce", "Wilkesville", "Willard", "Williamsburg", "Williamsfield", "Williamsport",
			"Williamstown", "Williston", "Willoughby", "Willow Wood", "Willshire", "Wilmington", "Wilmot", "Winchester", "Windham", "Windsor", "Winesburg", "Wingett Run", "Winona", "Wolf Run", "Woodsfield", "Woodstock", "Woodville", "Wooster", "Wren", "Xenia", "Yellow Springs", "Yorkshire", "Yorkville", "Youngstown", "Zaleski", "Zanesfield", "Zanesville", "Zoar" };
}
