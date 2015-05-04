package com.exam.dao;

import java.util.Set;

import com.exam.entity.ExQuestion;

/**
 * �ʴ��� �����ݲ���
 * 
 * @author Administrator
 * 
 */
public interface QuestionDao {

	/**
	 * ������֤�ʴ����û��Ƿ�Ϸ�
	 * 
	 * @param Question
	 *            �ʴ������
	 * @return ���ݿ��д���ʴ������
	 */
	public ExQuestion getQuestiondao(ExQuestion Question);

	/**
	 * ���ڻ���ʴ���ļ���
	 * 
	 * @param Question
	 *            �ʴ������
	 * @return ���ݿ��д������ʴ������ļ��ϡ�
	 */
	public Set<ExQuestion> getQuestionsdao(ExQuestion Question);

	/**
	 * ���ڲ����ʴ��⵽���ݿ�
	 * 
	 * @param Question
	 *            �ʴ������
	 * @return �Ƿ����ɹ�
	 */
	public boolean insertQuestiondao(ExQuestion Question);

	/**
	 * ����ɾ�����ݿ�����ص��ʴ������
	 * 
	 * @param Question
	 *            �ʴ������
	 * @return �Ƿ�ɾ���ɹ�
	 */
	public boolean deleteQuestiondao(ExQuestion Question);

	/**
	 * ���ڸ����ʴ��⵽���ݿ�
	 * 
	 * @param Question
	 *            �ʴ������
	 * @return �Ƿ���³ɹ�
	 */
	public boolean updateQuestiondao(ExQuestion Question);
}
