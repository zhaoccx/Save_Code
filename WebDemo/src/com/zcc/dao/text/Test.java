package com.zcc.dao.text;

import java.util.List;

import com.zcc.dao.ICarDao;
import com.zhao.utils.ClassUtils;

public class Test {

	@SuppressWarnings("rawtypes")
	public static void main(String[] args) {
		List<Class> list = ClassUtils.getAllClassByInterface(ICarDao.class);
		System.out.println(list.size());
	}
}
