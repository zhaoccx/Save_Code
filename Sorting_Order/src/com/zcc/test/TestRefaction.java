package com.zcc.test;

import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Properties;

public class TestRefaction {
	public static void main(String[] args) throws ClassNotFoundException, InstantiationException, IllegalAccessException, IllegalArgumentException, InvocationTargetException {
		InputStream inputStream = ClassLoader.getSystemResourceAsStream("com/zcc/test/test.properties");
		Properties properties = new Properties();
		try {
			properties.load(inputStream);
		} catch (IOException e) {
			e.printStackTrace();
		}
		Class<?> c = Class.forName(properties.getProperty("class"));
		Method[] methods = c.getMethods();
		for (Method m : methods) {
			if ("m".equals(m.getName())) {
				m.invoke(c.newInstance(),1);
			}
			if ("m1".equals(m.getName())) {
				m.invoke(c.newInstance(), 1);
				if ("getS".equals(m.getName())) {
					for (Class<?> pa : m.getParameterTypes()) {
						System.out.println(pa.getName());
					}
					System.out.println(m.getReturnType().getName());
				}
			}
		}
	}
}

class T {
	static {
		System.out.println("T loader");
	}

	public T() {
		System.out.println("T is Loader");
	}

	int i;
	String s;

	public void m1(int i) {
		this.i = i;
		System.out.println(this.i);
	}

	public void m(int a) {
		System.out.println("m invovle " + a);
	}

	public String getS(String string) {
		System.out.println(string);
		return s + string;
	}
}
