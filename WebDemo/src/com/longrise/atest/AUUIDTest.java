package com.longrise.atest;

import java.util.UUID;

public class AUUIDTest {

	public static void main(String[] args) {

		UUID uuid = UUID.randomUUID();
		String strteStringing = uuid.toString().replace('-', '9');
		System.out.println(strteStringing);

		System.out.println(System.currentTimeMillis());
	}

}
