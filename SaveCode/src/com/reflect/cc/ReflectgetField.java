package com.reflect.cc;

import java.lang.reflect.Field;

/**
 * 通过Java反射机制操作某个类的属性
 * @author zhaocc
 *
 */
public class ReflectgetField {
	private String proprety = null;

	public static void main(String[] args) throws Exception {

		Class<?> clazz = Class.forName("com.reflect.cc.ReflectgetField");
		Object obj = clazz.newInstance();

		// 可以直接对 private 的属性赋值
		Field field = clazz.getDeclaredField("proprety");
		field.setAccessible(true);
		field.set(obj, "Java反射机制");
		System.out.println(field.get(obj));
	}

	public String getProprety() {
		return proprety;
	}

	public void setProprety(String proprety) {
		this.proprety = proprety;
	}
	
}