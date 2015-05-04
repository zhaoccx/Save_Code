package com.longrise.sqer;

public class Test {

	public Test() {
	}

	public static void main(String[] args) {
		int[][] arr = new int[4][4];
		for (int i = 0; i < arr.length; i++) {
			for (int j = 0; j < arr[i].length; j++) {
				System.out.println(arr[i][j]);
				arr[i][j] = i + j + 1;
			}
		}
		System.out.println(arr[0][3]);
	}
	
	public void getInt(int a){
		System.out.println("jjj"+a);
		System.out.println("ss");
	}
}
