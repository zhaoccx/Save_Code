package com.reflect.cc;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public class MyInvocationHandler implements InvocationHandler {

	@Override
	public Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject) throws Throwable {
		Object temp = paramMethod.invoke(this.obj, paramArrayOfObject);
		return temp;
	}

	private Object obj = null;

	public Object bind(Object obj) {
		this.obj = obj;
		return Proxy.newProxyInstance(obj.getClass().getClassLoader(), obj.getClass().getInterfaces(), this);
	}

}
