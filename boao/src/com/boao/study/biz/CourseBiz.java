package com.boao.study.biz;

import java.util.List;

import com.boao.study.model.TblCourse;
import com.boao.util.Page;

public interface CourseBiz {

	public List<TblCourse> getGradeList(Page page, String category);

	public TblCourse getById(int id);

	public boolean add(TblCourse course);

	public boolean deleteById(int id);

	public boolean update(TblCourse course);
}
