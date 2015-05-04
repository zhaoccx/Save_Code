package com.zhao.javascript.impl;

import java.util.List;

import com.zhao.javascript.Man;

public class ManImpl implements Man {

	@Override
	public String getAllList(List<String> list) {
		StringBuffer buffer = new StringBuffer();
		for (String string : list) {
			buffer.append(string);
			buffer.append("+");
		}
		buffer.deleteCharAt(buffer.length() - 1);
		return buffer.toString();
	}

	@Override
	public String getList() {
		// TODO Auto-generated method stub
		return null;
	}
}
