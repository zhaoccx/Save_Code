package com.reflect.cc;

/**
 * 通过一个对象获得完整的包名和类名
 * 
 * @author zhaocc
 *
 */
public class TestReflectgetNameAndPackage {
	public static void main(String[] args) {
		TestReflectgetNameAndPackage testReflect = new TestReflectgetNameAndPackage();
		System.out.println(testReflect.getClass());
		System.out.println(testReflect.getClass().getName());
		// 结果com.reflect.cc.TestReflect
	}
}
