package com.zcc.signleton;

public class Signleton {
	private static Signleton instance = null;

	public static Signleton newInstance() {
		synchronized (instance) {
			if (null == instance) {
				instance = new Signleton();
			}
		}
		return instance;
	}

	private Signleton() {

	}
}
