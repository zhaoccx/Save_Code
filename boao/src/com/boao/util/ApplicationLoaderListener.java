package com.boao.util;

import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.log4j.Logger;

public class ApplicationLoaderListener implements ServletContextListener {

	Logger log = Logger.getLogger(ApplicationLoaderListener.class);

	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
	}

	public void contextInitialized(ServletContextEvent arg0) {
		ServletContext context = arg0.getServletContext();
		context.setAttribute("PICSERVER", AppConfig.readValue("pic.server"));
		context.setAttribute("ARTICLE_KINDS", new ArrayList<String>(Arrays.asList(AppConfig.readValue("article.kinds").split(","))));
		context.setAttribute("COURSE_CATEGORIES", new ArrayList<String>(Arrays.asList(AppConfig.readValue("course.categories").split(","))));
		context.setAttribute("GRADE_CATEGORIES", new ArrayList<String>(Arrays.asList(AppConfig.readValue("grade.categories").split(","))));
	}
}
