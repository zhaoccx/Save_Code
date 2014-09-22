package com.num.prime;

import java.util.Arrays;

public class TextPrimeNumber {
	private static boolean[] FilterNumber(int num) {// 筛选法求质数
		if (num <= 0) {// 判断指定的范围
			System.out.println("范围必须大于0");
			return null;
		}
		boolean[] isPrime = new boolean[num + 1]; // 声明布尔类型数组，长度为范围+1.
													// 数组标注是否为质数，下标值为质数，那么对应数组元素值为true.
													// 例如2是质数,isPrime[2]=true
		isPrime[1] = false;// 1不是质数
		Arrays.fill(isPrime, 2, num + 1, true);// 将布尔数组元素的值都赋为true
		int n = (int) Math.sqrt(num);// Math.sqrt方法用于求开方
		for (int i = 1; i < n; i++) {
			if (isPrime[i]) {// 如果是质数，那么i的倍数不是质数
				for (int j = 2 * i; j <= num; j += i) {
					isPrime[j] = false;
				}
			}
		}
		return isPrime;
	}

	public static void showAppointArea(int number) {// 显示指定范围内的质数
		boolean[] primes = FilterNumber(number);// 调用方法赋值给布尔类型的数组
		int num = 0;
		if (primes != null) {
			for (int i = 1; i < primes.length; i++) {// 循环数组操作数组的元素
				if (primes[i]) {// 如果数组元素值为true，则下标值为质数
					System.out.print(i + " ");// 输出质数
					if (++num % 10 == 0)// 每输出10个质数换行
						System.out.println();
				}
			}
			System.out.println();
		}
		System.out.println("一共有" + num + "个");
	}

	public static void main(String[] args) {// java程序的主入口处
		int number = 200;// 声明范围
		System.out.println("范围在" + number + "内的质数有：");
		showAppointArea(number);// 调用方法显示质数
	}
}
