package com.zhao.javascript;

import java.util.ArrayList;
import java.util.List;

import com.zhao.javascript.impl.ManImpl;

public class ManTest {

	public static void main(String[] args) {
		Man man = new ManImpl();
		List<String> list = new ArrayList<String>();
		list.add("1");
		list.add("2");
		list.add("33");
		System.out.println(man.getAllList(list));
	}
}
