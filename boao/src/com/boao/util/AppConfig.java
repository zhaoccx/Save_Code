package com.boao.util;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Properties;

import org.apache.log4j.Logger;

/**
 * 全局属性文件
 * 
 * @author hdr
 * 
 */
public class AppConfig {

	private static Logger log = Logger.getLogger(AppConfig.class);
	private static String filePath = "/app.properties";

	// 根据key读取value
	public static String readValue(String key) {
		Properties props = new Properties();
		try {
			InputStream in = AppConfig.class.getResourceAsStream(filePath);
			props.load(in);
			String value = props.getProperty(key);
			return value;
		}
		catch (Exception e) {
			log.error(e);
			return null;
		}
	}

	// 写入properties信息
	public static void writeProperties(String parameterName, String parameterValue) {
		Properties prop = new Properties();
		try {
			InputStream fis = AppConfig.class.getResourceAsStream(filePath);
			// 从输入流中读取属性列表（键和元素对）
			prop.load(fis);
			// 调用 Hashtable 的方法 put。使用 getProperty 方法提供并行性。
			// 强制要求为属性的键和值使用字符串。返回值是 Hashtable 调用 put 的结果。
			OutputStream fos = new FileOutputStream(AppConfig.class.getResource(filePath).getPath());
			prop.setProperty(parameterName, parameterValue);
			// prop.
			// 以适合使用 load 方法加载到 Properties 表中的格式，
			// 将此 Properties 表中的属性列表（键和元素对）写入输出流
			prop.store(fos, "Update '" + parameterName + "' value");
		}
		catch (IOException e) {
			System.err.println("Visit " + filePath + " for updating " + parameterName + " value error");
		}
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath1) {
		filePath = filePath1;
	}

	public static void main(String[] args) {
		System.out.println(readValue("course.categories"));
		// writeProperties("age", "尼玛");
	}
}