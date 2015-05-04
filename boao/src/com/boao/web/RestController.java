package com.boao.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/rest")
public class RestController {

	@RequestMapping(value = "/{id}/{username}/{password}/", method = RequestMethod.GET)
	public String testRest(Model model, @PathVariable("id") Integer id, @PathVariable("username") String username, @PathVariable("password") String password) {
		System.out.println("id:" + id);
		System.out.println("username:" + username);
		System.out.println("password:" + password);
		return "restResult";
	}

	@RequestMapping(value = "/{id}/{username}/{password}/", method = RequestMethod.PUT)
	public String testDelete(@PathVariable("id") Integer id, @PathVariable("username") String username, @PathVariable("password") String password) {
		System.out.println("进入到删除方法当中:");
		System.out.println("id:" + id);
		System.out.println("username:" + username);
		System.out.println("password:" + password);
		return "restResult";
	}

	@RequestMapping("/")
	public String toDelele() {
		return "restDelete";
	}
}
