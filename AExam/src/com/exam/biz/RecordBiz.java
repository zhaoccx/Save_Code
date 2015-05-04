package com.exam.biz;

import java.util.Set;

import com.exam.entity.ExRecord;

/**
 * ѡ���¼ ��ҵ�����
 * 
 * @author Administrator
 * 
 */
public interface RecordBiz {

	/**
	 * ������֤ѡ���¼�û��Ƿ�Ϸ�
	 * 
	 * @param Record
	 *            ѡ���¼����
	 * @return ���ݿ��д��ѡ���¼����
	 */
	public ExRecord getRecordbiz(ExRecord Record);

	/**
	 * ���ڻ��ѡ���¼�ļ���
	 * 
	 * @param Record
	 *            ѡ���¼����
	 * @return ���ݿ��д�����ѡ���¼����ļ��ϡ�
	 */
	public Set<ExRecord> getRecordsbiz(ExRecord Record);

	/**
	 * ���ڲ���ѡ���¼�����ݿ�
	 * 
	 * @param Record
	 *            ѡ���¼����
	 * @return �Ƿ����ɹ�
	 */
	public boolean insertRecordbiz(ExRecord Record);

	/**
	 * ����ɾ�����ݿ�����ص�ѡ���¼����
	 * 
	 * @param Record
	 *            ѡ���¼����
	 * @return �Ƿ�ɾ���ɹ�
	 */
	public boolean deleteRecordbiz(ExRecord Record);

	/**
	 * ���ڸ���ѡ���¼�����ݿ�
	 * 
	 * @param Record
	 *            ѡ���¼����
	 * @return �Ƿ���³ɹ�
	 */
	public boolean updateRecordbiz(ExRecord Record);
}
