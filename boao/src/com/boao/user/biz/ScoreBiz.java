package com.boao.user.biz;

import java.util.List;

import com.boao.user.model.TblScoreRecord;

public interface ScoreBiz {

	public boolean add(TblScoreRecord scordRecord);

	public List<ScoreBiz> getListByUserId(int id);
}
