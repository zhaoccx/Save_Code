package com.boao.study.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.boao.study.biz.CourseBiz;
import com.boao.study.mapper.TblCourseMapper;
import com.boao.study.model.TblCourse;
import com.boao.util.Page;

@Service
public class CourseBizImpl implements CourseBiz {

	@Resource
	private TblCourseMapper courseMapper;

	public List<TblCourse> getGradeList(Page page, String category) {
		page.initCountAndSum(this.courseMapper.countByCategory(category));
		return this.courseMapper.selectByCategory(page.createRowBounds(), category);
	}

	public TblCourse getById(int id) {
		return this.courseMapper.selectByPrimaryKey(id);
	}

	public boolean add(TblCourse course) {
		return this.courseMapper.insertSelective(course) > 0;
	}

	public boolean deleteById(int id) {
		return this.courseMapper.deleteByPrimaryKey(id) > 0;
	}

	public boolean update(TblCourse course) {
		return this.courseMapper.updateByPrimaryKey(course) > 0;
	}
}
