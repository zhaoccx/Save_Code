package com.exam.entity;

import java.util.Iterator;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.exam.dao.StudentDao;

public class TestStudent extends HibernateDaoSupport {

	private StudentDao studentdaoimpl;

	@Test
	public void stes() {
		ApplicationContext context = new ClassPathXmlApplicationContext(new String[] { "applicationContext.xml" });
		studentdaoimpl = (StudentDao) context.getBean("studentdaoimpl");
		Iterator<ExStudent> set = this.studentdaoimpl.getStudentsdao(null).iterator();
		while (set.hasNext()) {
			System.out.println(set.next().getExStuSylls().toArray().toString() + "   " + "abcdfeifdkkasdk");
		}
	}

	/**
	 * @return the studentdaoimpl
	 */
	public StudentDao getStudentdaoimpl() {
		return studentdaoimpl;
	}

	/**
	 * @param studentdaoimpl
	 *            the studentdaoimpl to set
	 */
	public void setStudentdaoimpl(StudentDao studentdaoimpl) {
		this.studentdaoimpl = studentdaoimpl;
	}
}
