package com;

public class Sd {
	public static void main(String[] args) {
		String se = "15*94573e1938#61";
		for (int i = 0; i <= 9; i++) {
			for (int j = 0; j <= 9; j++) {
				System.out.println(se.replace("*", i + "").replace("#", j + ""));
				System.out.println();
			}
		}
	}
}
