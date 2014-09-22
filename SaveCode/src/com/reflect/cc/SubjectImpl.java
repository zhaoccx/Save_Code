package com.reflect.cc;

public class SubjectImpl implements Subject {

	@Override
	public String say(String name, int age) {
		return name + "  " + age;
	}
}
