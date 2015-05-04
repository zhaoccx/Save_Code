package com.exam.dao;

import java.util.Set;

import com.exam.entity.ExChoice;

/**
 * ѡ���� �����ݲ���
 * 
 * @author Administrator
 * 
 */
public interface ChoiceDao {

	/**
	 * ������֤ѡ�����û��Ƿ�Ϸ�
	 * 
	 * @param Choice
	 *            ѡ�������
	 * @return ���ݿ��д��ѡ�������
	 */
	public ExChoice getChoicedao(ExChoice Choice);

	/**
	 * ���ڻ��ѡ����ļ���
	 * 
	 * @param Choice
	 *            ѡ�������
	 * @return ���ݿ��д�����ѡ�������ļ��ϡ�
	 */
	public Set<ExChoice> getChoicesdao(ExChoice Choice);

	/**
	 * ���ڲ���ѡ���⵽���ݿ�
	 * 
	 * @param Choice
	 *            ѡ�������
	 * @return �Ƿ����ɹ�
	 */
	public boolean insertChoicedao(ExChoice Choice);

	/**
	 * ����ɾ�����ݿ�����ص�ѡ�������
	 * 
	 * @param Choice
	 *            ѡ�������
	 * @return �Ƿ�ɾ���ɹ�
	 */
	public boolean deleteChoicedao(ExChoice Choice);

	/**
	 * ���ڸ���ѡ���⵽���ݿ�
	 * 
	 * @param Choice
	 *            ѡ�������
	 * @return �Ƿ���³ɹ�
	 */
	public boolean updateChoicedao(ExChoice Choice);
}
