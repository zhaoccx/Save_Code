package com.sort.order;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;

/**
 * 
 * @author zhaocc
 * 
 */
public class One {

	public static void main(String[] args) {
		One one = new One();
		int a[] = { 12, 22, 3, 45, 6 };
		// one.printArray(a);
		// one.printArray(one.order(a));
		// one.printArray(one.orderdesc(a));
		one.printArray(one.immission(a));
		try {
			one.testinsert(100000);
		} catch (IOException e) {
			e.printStackTrace();
		}
		// one.printArray(one.immissiondesc(a));
	}

	/**
	 * 打印出数组。
	 * 
	 * @param a
	 *            整形数组
	 */
	public void printArray(int[] a) {
		StringBuffer stringBuffer = new StringBuffer("[");
		StringBuffer stringBuffer2 = new StringBuffer();
		for (int i : a) {
			stringBuffer.append(i).append(",");
		}
		String string = stringBuffer.substring(0, stringBuffer.length() - 1);
		string = string + "]";
		for (int i = 0; i < string.length(); i++) {
			stringBuffer2.append("*");
		}
		System.out.println(string);
		System.out.println(stringBuffer2);
	}

	/**
	 * 选择排序（升序）
	 * 
	 * @param a
	 *            整形数组
	 * @return 排序后的数组
	 */
	public int[] order(int[] a) {
		for (int i = 0; i < a.length; i++) {
			for (int j = i + 1; j < a.length; j++) {
				if (a[i] > a[j]) {
					int temp = a[j];
					a[j] = a[i];
					a[i] = temp;
				}
			}
		}
		return a;
	}

	/**
	 * 选择排序（降序）
	 * 
	 * @param a
	 *            整形数组
	 * @return 排序后的数组
	 */
	public int[] orderdesc(int[] a) {
		for (int i = 0; i < a.length; i++) {
			for (int j = i + 1; j < a.length; j++) {
				if (a[i] < a[j]) {
					int temp = a[j];
					a[j] = a[i];
					a[i] = temp;
				}
			}
		}
		return a;
	}

	/**
	 * 直接插入排序（升序）
	 * 
	 * @param a
	 *            整形数组
	 * @return 排序后的数组
	 */
	public int[] immission(int[] a) {
		if (null == a) {
			return null;
		}
		int temp = 0;
		for (int i = 0; i < a.length; i++) {
			int j = i - 1;
			temp = a[i];
			for (; j >= 0 && temp < a[j]; j--) {
				a[j + 1] = a[j];
				printArray(a);
			}
			a[j + 1] = temp;
		}
		return a;
	}

	/**
	 * 直接插入排序（降序）
	 * 
	 * @param a
	 *            整形数组
	 * @return 排序后的数组
	 */
	public int[] immissiondesc(int[] a) {
		if (null == a) {
			return null;
		}
		int temp = 0;
		for (int i = 0; i < a.length; i++) {
			int j = i - 1;
			temp = a[i];
			for (; j >= 0 && temp > a[j]; j--) {
				a[j + 1] = a[j];
			}
			a[j + 1] = temp;
		}
		return a;
	}

	public String creatfile(int i) {
		String string = "D:\\abc" + i + ".sql";
		File file = new File(string);
		if (!file.exists()) {
			try {
				file.createNewFile();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return string;
	}

	public void testinsert(int i) throws IOException {
		// FileWriter aFileWriter = new FileWriter(creatfile(0));
		long a = System.currentTimeMillis();
		System.out.println(System.currentTimeMillis());
		for (int j = 1; j <= i; j++) {
			// if (j % 10000 == 0) {
			// aFileWriter.close();
			// aFileWriter = new FileWriter(creatfile(j / 10000));
			// }
			// String str = "insert into city2 (cityid, cityname, proid) values  (" + j + ", '" + (int) ((Math.random() * 1000000)) + "', " + (j / 100 + 1) +
			// ");\n";
			// aFileWriter.write(str);
			// // if (j % 10000 == 0) {
			// // aFileWriter.close();
			// // }
			System.out.println("insert into city2 (cityid, cityname, proid) values  (" + j + ", '" + (int) ((Math.random() * 1000000)) + "', " + (j / 100 + 1) + ");\n");
		}
		// aFileWriter.close();
		System.out.println(new Timestamp(a));
		long b = System.currentTimeMillis();
		System.out.println(new Timestamp(b));
	}

	public Object sysyObject() {
		return null;
	}

	public int getInt() {
		return 0;
	}
}
