package com.exam.biz.impl;

import java.util.Set;

import com.exam.biz.RecordBiz;
import com.exam.dao.RecordDao;
import com.exam.entity.ExRecord;

public class RecordBizImpl implements RecordBiz {

	/**
	 * 记录表数据访问层接口
	 */
	private RecordDao recordDao;

	/**
	 * @return the recordDao
	 */
	public RecordDao getRecordDao() {
		return recordDao;
	}

	/**
	 * @param recordDao
	 *            the recordDao to set
	 */
	public void setRecordDao(RecordDao recordDao) {
		this.recordDao = recordDao;
	}

	public ExRecord getRecordbiz(ExRecord Record) {
		if (null == Record) {
			return null;
		}
		else {
			ExRecord exRecord = this.recordDao.getRecorddao(Record);
			if (null == exRecord) {
				return null;
			}
			if (Record.getExStudent().getStuid().equals(exRecord.getExStudent().getStuid())) {
				return exRecord;
			}
			else {
				return null;
			}
		}
	}

	public Set<ExRecord> getRecordsbiz(ExRecord Record) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean insertRecordbiz(ExRecord Record) {
		if (null == Record) {
			return false;
		}
		return this.recordDao.insertRecorddao(Record);
	}

	public boolean deleteRecordbiz(ExRecord Record) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean updateRecordbiz(ExRecord Record) {
		if (null == Record) {
			return false;
		}
		else {
			return this.recordDao.updateRecorddao(Record);
		}
	}
}
