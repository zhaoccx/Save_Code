package com.reflect.cc;

/**
 * 实例化Class类对象
 * 
 * @author zhaocc
 *
 */
public class ReflectNewInstanceClass {
	public static void main(String[] args) throws Exception {

		Class<?> class1 = null;
		Class<?> class2 = null;
//		Class<?> class3 = null;

		// 一般采用这种形式
		class1 = Class.forName("com.reflect.cc.ReflectNewInstanceClass");
		class2 = new ReflectNewInstanceClass().getClass();
//		class3 = ReflectNewInstanceClass.class;

		System.out.println("类名称   " + class1.getName());
		System.out.println("类名称   " + class2.getName());
//		System.out.println("类名称   " + class3.getName());
		
		ReflectNewInstanceClass class3 = (ReflectNewInstanceClass) class1.newInstance();
		System.out.println(class3.toString());
	}
	
	public ReflectNewInstanceClass(){
		System.out.println("ok");
	}
}
