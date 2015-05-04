package com.zcc.test;

public class TestJDKClassLoader {

	public static void main(String[] args) {
		System.out.println(String.class.getClassLoader());
		ClassLoader c = TestJDKClassLoader.class.getClassLoader();
		while (null != c) {
			System.out.println(c.getClass().getName());
			c = c.getParent();
		}
		// System.out.println(com.sun.crypto.provider.AESCrypt.class.getClassLoader().getClass().getName());
	}

}
