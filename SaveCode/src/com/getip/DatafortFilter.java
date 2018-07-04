package com.getip;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

/**
 * @author zhaocc
 * @time Jun 29, 2018 5:35:06 PM
 * @parent
 */
public class DatafortFilter implements Filter {
	private String username;
	private String dbType;

	private static final String PARAM_NAME_PRINCIPAL_SESSION_NAME = "principalSessionName";
	private static final String PARAM_NAME_PRINCIPAL_SESSION_CLASS = "principalSessionClass";
	private static final String PARAM_NAME_PRINCIPAL_SESSION_METHOD = "principalSessionMethod";

	private static final String SPLIT = "$datafort$";

	@Override
	public void init(FilterConfig config) throws ServletException {

		String param = config.getInitParameter(PARAM_NAME_PRINCIPAL_SESSION_NAME);

	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		System.out.println("=============进入doFilter");

		try {
			chain.doFilter(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			System.out.println("======111======");
			String remoteUser = httpRequest.getRemoteUser() != "" ? httpRequest.getRemoteUser() : null;
			System.out.println(httpRequest.getRemoteUser() + "-------remoteUser---------" + remoteUser);
			if (remoteUser != null) {
				username = remoteUser;
			} else {

				// 获取用户姓名
				if (httpRequest.getSession(false) == null) {
					System.out.println("======222======");
					return;
				}
				System.out.println("======333======");
				// 当前请求的ip.需要获取当前登录的用户名
				String clientIp = getIpAddr(httpRequest);

			}

		}

	}

	@Override
	public void destroy() {

	}

	/**
	 * 获取来访者的浏览器版本
	 * 
	 * @param request
	 * @return
	 */
	public String getRequestBrowserInfo(HttpServletRequest request) {
		String browserVersion = null;
		String header = request.getHeader("user-agent");
		if (header == null || header.equals("")) {
			return "";
		}
		if (header.indexOf("MSIE") > 0) {
			browserVersion = "IE";
		} else if (header.indexOf("Firefox") > 0) {
			browserVersion = "Firefox";
		} else if (header.indexOf("Chrome") > 0) {
			browserVersion = "Chrome";
		} else if (header.indexOf("Safari") > 0) {
			browserVersion = "Safari";
		} else if (header.indexOf("Camino") > 0) {
			browserVersion = "Camino";
		} else if (header.indexOf("Konqueror") > 0) {
			browserVersion = "Konqueror";
		}
		return browserVersion;
	}

	/**
	 * 获取访问者IP 在一般情况下使用Request.getRemoteAddr()即可，但是经过nginx等反向代理软件后，这个方法会失效。
	 *
	 * 本方法先从Header中获取X-Real-IP，如果不存在再从X-Forwarded-For获得第一个IP(用,分割)， 如果还不存在则调用Request .getRemoteAddr()。
	 * 
	 * @param request
	 * @return
	 */
	public String getIpAddr(HttpServletRequest request) {
		String ip = request.getHeader("X-Real-IP");
		if (ip != null && !"".equals(ip) && !"unknown".equalsIgnoreCase(ip)) {
			return ip;
		}
		ip = request.getHeader("X-Forwarded-For");
		if (ip != null && !"".equals(ip) && !"unknown".equalsIgnoreCase(ip)) {
			// 多次反向代理后会有多个IP值，第一个为真实IP。
			int index = ip.indexOf(',');
			if (index != -1) {
				return ip.substring(0, index);
			} else {
				return ip;
			}
		} else {
			return request.getRemoteAddr();
		}
	}
	/**
	 * 执行查询的相关操作
	 */

}
