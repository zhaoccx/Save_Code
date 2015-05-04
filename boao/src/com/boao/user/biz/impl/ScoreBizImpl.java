package com.boao.user.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.boao.user.biz.ScoreBiz;
import com.boao.user.mapper.TblScoreRecordMapper;
import com.boao.user.model.TblScoreRecord;

@Service
public class ScoreBizImpl implements ScoreBiz {

	@Resource
	private TblScoreRecordMapper scoreMapper;

	public boolean add(TblScoreRecord scordRecord) {
		return scoreMapper.insertSelective(scordRecord) > 0;
	}

	public List<ScoreBiz> getListByUserId(int id) {
		return null;
	}
}
