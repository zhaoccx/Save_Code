package com.exam.biz.impl;

import java.util.Set;

import com.exam.biz.SyllabusBiz;
import com.exam.dao.SyllabusDao;
import com.exam.entity.ExSyllabus;

public class SyllabusBizImpl implements SyllabusBiz {

	/**
	 * 课程表数据访问层接口
	 */
	private SyllabusDao syllabusDao;

	/**
	 * @return the syllabusDao
	 */
	public SyllabusDao getSyllabusDao() {
		return syllabusDao;
	}

	/**
	 * @param syllabusDao
	 *            the syllabusDao to set
	 */
	public void setSyllabusDao(SyllabusDao syllabusDao) {
		this.syllabusDao = syllabusDao;
	}

	public ExSyllabus getSyllabusbiz(ExSyllabus Syllabus) {
		// TODO Auto-generated method stub
		return null;
	}

	public Set<ExSyllabus> getSyllabussbiz(ExSyllabus Syllabus) {
		if (null == Syllabus) {
			return null;
		}
		Set<ExSyllabus> set = this.syllabusDao.getSyllabussdao(Syllabus);
		return set;
	}

	public boolean insertSyllabusbiz(ExSyllabus Syllabus) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean deleteSyllabusbiz(ExSyllabus Syllabus) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean updateSyllabusbiz(ExSyllabus Syllabus) {
		// TODO Auto-generated method stub
		return false;
	}
}
