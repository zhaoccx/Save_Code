package com.reflect.cc;

import java.lang.reflect.Method;

/**
 * 通过Java反射机制调用某个类的方法
 * 
 * @author zhaocc
 *
 */
public class ReflectgetSomeMethed {
	public static void main(String[] args) throws Exception {

		Class<?> clazz = Class.forName("com.reflect.cc.ReflectgetSomeMethed");

		// 调用TestReflect类中的reflect1方法
		Method method = clazz.getMethod("reflect1");
		method.invoke(clazz.newInstance());
		// Java 反射机制 - 调用某个类的方法1.

		// 调用TestReflect的reflect2方法
		method = clazz.getMethod("reflect2", int.class, String.class);
		method.invoke(clazz.newInstance(), 20, "张三");
		// Java 反射机制 - 调用某个类的方法2.
		// age -> 20. name -> 张三

	}

	public void reflect1() {
		System.out.println("Java 反射机制 - 调用某个类的方法1.");
	}

	public void reflect2(int age, String name) {
		System.out.println("Java 反射机制 - 调用某个类的方法2.");
		System.out.println("age -> " + age + ". name -> " + name);
	}
}
