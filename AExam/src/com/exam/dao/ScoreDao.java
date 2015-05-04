package com.exam.dao;

import java.util.List;
import java.util.Set;

import com.exam.entity.ExScore;

/**
 * 成绩 ，数据层类
 * 
 * @author Administrator
 * 
 */
public interface ScoreDao {

	/**
	 * 用于验证成绩用户是否合法
	 * 
	 * @param Score
	 *            成绩对象
	 * @return 数据库中存的成绩对象
	 */
	public List<ExScore> getScoredao(ExScore Score);

	/**
	 * 用于获得成绩的集合
	 * 
	 * @param Score
	 *            成绩对象
	 * @return 数据库中存的相关成绩对象的集合。
	 */
	public Set<ExScore> getScoresdao(ExScore Score);

	/**
	 * 用于插入成绩到数据库
	 * 
	 * @param Score
	 *            成绩对象
	 * @return 是否插入成功
	 */
	public boolean insertScoredao(ExScore Score);

	/**
	 * 用于删除数据库中相关的成绩对象
	 * 
	 * @param Score
	 *            成绩对象
	 * @return 是否删除成功
	 */
	public boolean deleteScoredao(ExScore Score);

	/**
	 * 用于更新成绩到数据库
	 * 
	 * @param Score
	 *            成绩对象
	 * @return 是否更新成功
	 */
	public boolean updateScoredao(ExScore Score);
}
