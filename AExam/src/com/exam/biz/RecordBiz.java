package com.exam.biz;

import java.util.Set;

import com.exam.entity.ExRecord;

/**
 * 选题记录 ，业务层类
 * 
 * @author Administrator
 * 
 */
public interface RecordBiz {

	/**
	 * 用于验证选题记录用户是否合法
	 * 
	 * @param Record
	 *            选题记录对象
	 * @return 数据库中存的选题记录对象
	 */
	public ExRecord getRecordbiz(ExRecord Record);

	/**
	 * 用于获得选题记录的集合
	 * 
	 * @param Record
	 *            选题记录对象
	 * @return 数据库中存的相关选题记录对象的集合。
	 */
	public Set<ExRecord> getRecordsbiz(ExRecord Record);

	/**
	 * 用于插入选题记录到数据库
	 * 
	 * @param Record
	 *            选题记录对象
	 * @return 是否插入成功
	 */
	public boolean insertRecordbiz(ExRecord Record);

	/**
	 * 用于删除数据库中相关的选题记录对象
	 * 
	 * @param Record
	 *            选题记录对象
	 * @return 是否删除成功
	 */
	public boolean deleteRecordbiz(ExRecord Record);

	/**
	 * 用于更新选题记录到数据库
	 * 
	 * @param Record
	 *            选题记录对象
	 * @return 是否更新成功
	 */
	public boolean updateRecordbiz(ExRecord Record);
}
