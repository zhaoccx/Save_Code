package com.exam.dao;

import java.util.Set;

import com.exam.entity.ExRecord;

/**
 * ѡ���¼ �����ݲ���
 * 
 * @author Administrator
 * 
 */
public interface RecordDao {

	/**
	 * ������֤ѡ���¼�û��Ƿ�Ϸ�
	 * 
	 * @param Record
	 *            ѡ���¼����
	 * @return ���ݿ��д��ѡ���¼����
	 */
	public ExRecord getRecorddao(ExRecord Record);

	/**
	 * ���ڻ��ѡ���¼�ļ���
	 * 
	 * @param Record
	 *            ѡ���¼����
	 * @return ���ݿ��д�����ѡ���¼����ļ��ϡ�
	 */
	public Set<ExRecord> getRecordsdao(ExRecord Record);

	/**
	 * ���ڲ���ѡ���¼�����ݿ�
	 * 
	 * @param Record
	 *            ѡ���¼����
	 * @return �Ƿ����ɹ�
	 */
	public boolean insertRecorddao(ExRecord Record);

	/**
	 * ����ɾ�����ݿ�����ص�ѡ���¼����
	 * 
	 * @param Record
	 *            ѡ���¼����
	 * @return �Ƿ�ɾ���ɹ�
	 */
	public boolean deleteRecorddao(ExRecord Record);

	/**
	 * ���ڸ���ѡ���¼�����ݿ�
	 * 
	 * @param Record
	 *            ѡ���¼����
	 * @return �Ƿ���³ɹ�
	 */
	public boolean updateRecorddao(ExRecord Record);
}
