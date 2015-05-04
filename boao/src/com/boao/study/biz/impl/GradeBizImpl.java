package com.boao.study.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.boao.study.biz.GradeBiz;
import com.boao.study.mapper.TblGradeMapper;
import com.boao.study.model.TblGrade;
import com.boao.util.Page;

@Service
public class GradeBizImpl implements GradeBiz {

	@Resource
	private TblGradeMapper gradeMapper;

	public List<TblGrade> getGradeList(Page page, String category) {
		page.initCountAndSum(gradeMapper.countByCategory(category));
		return gradeMapper.selectByCategory(page.createRowBounds(), category);
	}

	public boolean add(TblGrade grade) {
		return gradeMapper.insert(grade) > 0;
	}

	public boolean deleteById(int id) {
		return gradeMapper.deleteByPrimaryKey(id) > 0;
	}

	public boolean update(TblGrade grade) {
		return gradeMapper.updateByPrimaryKeySelective(grade) > 0;
	}

	public TblGrade getById(int id) {
		return gradeMapper.selectByPrimaryKey(id);
	}
}
