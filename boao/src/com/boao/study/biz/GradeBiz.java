package com.boao.study.biz;

import java.util.List;

import com.boao.study.model.TblGrade;
import com.boao.util.Page;

public interface GradeBiz {

	/**
	 * 根据类别获得年纪列表
	 * 
	 * @param categories
	 * @return
	 */
	public List<TblGrade> getGradeList(Page page, String category);

	public TblGrade getById(int id);

	public boolean add(TblGrade grade);

	public boolean deleteById(int id);

	public boolean update(TblGrade Grade);
}
