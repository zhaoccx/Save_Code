package com.zcc.test;

public class TestDynamicLoading {
	public static void main(String[] args) {
		new A();
		System.out.println("**--------------------**");
		new B();

		new C();
		new C();

		new D();
		new D();
	}
}

class A {

}

class B {

}

class C {
	static {
		System.out.println("ccccccccccccccccccc");
	}
}

class D {
	{
		System.out.println("DDDDDDDDDDDDDDDDD");
	}
}