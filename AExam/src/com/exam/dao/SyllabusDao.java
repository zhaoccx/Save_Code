package com.exam.dao;

import java.util.Set;

import com.exam.entity.ExSyllabus;

/**
 * 课程 ，数据层类
 * 
 * @author Administrator
 * 
 */
public interface SyllabusDao {

	/**
	 * 用于验证课程用户是否合法
	 * 
	 * @param Syllabus
	 *            课程对象
	 * @return 数据库中存的课程对象
	 */
	public ExSyllabus getSyllabusdao(ExSyllabus Syllabus);

	/**
	 * 用于获得课程的集合
	 * 
	 * @param Syllabus
	 *            课程对象
	 * @return 数据库中存的相关课程对象的集合。
	 */
	public Set<ExSyllabus> getSyllabussdao(ExSyllabus Syllabus);

	/**
	 * 用于插入课程到数据库
	 * 
	 * @param Syllabus
	 *            课程对象
	 * @return 是否插入成功
	 */
	public boolean insertSyllabusdao(ExSyllabus Syllabus);

	/**
	 * 用于删除数据库中相关的课程对象
	 * 
	 * @param Syllabus
	 *            课程对象
	 * @return 是否删除成功
	 */
	public boolean deleteSyllabusdao(ExSyllabus Syllabus);

	/**
	 * 用于更新课程到数据库
	 * 
	 * @param Syllabus
	 *            课程对象
	 * @return 是否更新成功
	 */
	public boolean updateSyllabusdao(ExSyllabus Syllabus);
}
