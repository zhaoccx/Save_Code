package com.boao.util;

import java.util.List;

import javax.servlet.ServletContext;

public class StringUtils {

	@SuppressWarnings("unchecked")
	public static void addValue(String name, String name1, String value, ServletContext context) {
		List<String> cs = (List<String>) context.getAttribute(name1);
		cs.add(value);
		context.setAttribute(name1, cs);
		// AppConfig.writeProperties("COURSE_CATEGORIES",
		// StringUtils.arrayToString(cs1));
	}

	@SuppressWarnings("unchecked")
	public static void deleteValue(String name, String name1, String value, ServletContext context) {
		List<String> cs = (List<String>) context.getAttribute(name1);
		cs.remove(value);
		context.setAttribute(name1, cs);
	}

	public static String arrayToString(Object[] arr) {
		if (arr == null)
			return null;
		StringBuilder buf = new StringBuilder();
		for (int i = 0; i < arr.length; i++) {
			if (arr[i] != null) {
				buf.append(arr[i].toString());
				if (i != arr.length - 1 && arr[i + 1] != null)
					buf.append(",");
			}
		}
		return buf.toString();
	}

	public static <T> String join(@SuppressWarnings("unchecked") T... elements) {
		if (elements == null)
			return null;
		StringBuilder buf = new StringBuilder();
		for (int i = 0; i < elements.length; i++) {
			if (elements[i] != null)
				buf.append(elements[i]);
		}
		return buf.toString();
	}

	public static boolean isBlank(CharSequence cs) {
		int strLen;
		if (cs == null || (strLen = cs.length()) == 0) {
			return true;
		}
		for (int i = 0; i < strLen; i++) {
			if (Character.isWhitespace(cs.charAt(i)) == false) {
				return false;
			}
		}
		return true;
	}

	public static boolean isNotBlank(CharSequence cs) {
		return !StringUtils.isBlank(cs);
	}

	public static boolean isNumeric(CharSequence cs) {
		if (cs == null || cs.length() == 0) {
			return false;
		}
		int sz = cs.length();
		for (int i = 0; i < sz; i++) {
			if (Character.isDigit(cs.charAt(i)) == false) {
				return false;
			}
		}
		return true;
	}

	public static String trimToEmpty(String str) {
		return str == null ? "" : str.trim();
	}

	public static boolean isEmail(String email) {
		if (isBlank(email))
			return false;
		return email.matches("\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*");
	}

	public static void main(String[] args) {
		String strs[] = new String[] { "尼玛", null, "johojo" };
		System.out.println(StringUtils.arrayToString(strs));
	}
}
