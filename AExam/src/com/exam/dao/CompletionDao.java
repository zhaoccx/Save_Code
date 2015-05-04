package com.exam.dao;

import java.util.Set;

import com.exam.entity.ExCompletion;

/**
 * ����� �����ݲ���
 * 
 * @author Administrator
 * 
 */
public interface CompletionDao {

	/**
	 * ������֤������û��Ƿ�Ϸ�
	 * 
	 * @param Completion
	 *            ��������
	 * @return ���ݿ��д����������
	 */
	public ExCompletion getCompletiondao(ExCompletion Completion);

	/**
	 * ���ڻ�������ļ���
	 * 
	 * @param Completion
	 *            ��������
	 * @return ���ݿ��д�������������ļ��ϡ�
	 */
	public Set<ExCompletion> getCompletionsdao(ExCompletion Completion);

	/**
	 * ���ڲ�������⵽���ݿ�
	 * 
	 * @param Completion
	 *            ��������
	 * @return �Ƿ����ɹ�
	 */
	public boolean insertCompletiondao(ExCompletion Completion);

	/**
	 * ����ɾ�����ݿ�����ص���������
	 * 
	 * @param Completion
	 *            ��������
	 * @return �Ƿ�ɾ���ɹ�
	 */
	public boolean deleteCompletiondao(ExCompletion Completion);

	/**
	 * ���ڸ�������⵽���ݿ�
	 * 
	 * @param Completion
	 *            ��������
	 * @return �Ƿ���³ɹ�
	 */
	public boolean updateCompletiondao(ExCompletion Completion);
}