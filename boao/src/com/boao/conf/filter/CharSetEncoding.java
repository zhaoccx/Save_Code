package com.boao.conf.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class CharSetEncoding implements Filter {

	private static String env = "UTF-8";

	public void destroy() {
	}

	public void init(FilterConfig config) throws ServletException {
		if (config.getInitParameter("encoding") != null) {
			env = config.getInitParameter("encoding");
		}
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		request.setCharacterEncoding(env);
		response.setCharacterEncoding(env);
		chain.doFilter(request, response);
		System.gc();
	}
}
