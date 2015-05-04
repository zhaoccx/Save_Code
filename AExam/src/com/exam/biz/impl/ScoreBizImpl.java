package com.exam.biz.impl;

import java.util.List;
import java.util.Set;

import com.exam.biz.ScoreBiz;
import com.exam.dao.ScoreDao;
import com.exam.entity.ExScore;

public class ScoreBizImpl implements ScoreBiz {

	/**
	 * 成绩表数据访问层接口
	 */
	private ScoreDao scoreDao;

	/**
	 * @return the scoreDao
	 */
	public ScoreDao getScoreDao() {
		return scoreDao;
	}

	/**
	 * @param scoreDao
	 *            the scoreDao to set
	 */
	public void setScoreDao(ScoreDao scoreDao) {
		this.scoreDao = scoreDao;
	}

	public ExScore getScorebiz(ExScore Score) {
		if (null == Score) {
			return null;
		}
		List<ExScore> list = this.scoreDao.getScoredao(Score);
		for (ExScore score2 : list) {
			if (Score.getExSyllabus().getSyllid().equals(score2.getExSyllabus().getSyllid())) {
				return score2;
			}
		}
		return null;
	}

	public List<ExScore> getScoresbizList(ExScore score) {
		if (null == score) {
			return null;
		}
		List<ExScore> list = this.scoreDao.getScoredao(score);
		return list;
	}

	public Set<ExScore> getScoresbiz(ExScore Score) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean insertScorebiz(ExScore Score) {
		if (null == Score.getExStudent() || null == Score.getExSyllabus()) {
			return false;
		}
		else {
			return this.scoreDao.insertScoredao(Score);
		}
	}

	public boolean deleteScorebiz(ExScore Score) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean updateScorebiz(ExScore Score) {
		// TODO Auto-generated method stub
		return false;
	}
}
