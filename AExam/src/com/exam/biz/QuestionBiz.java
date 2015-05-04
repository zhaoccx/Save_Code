package com.exam.biz;

import java.util.List;
import java.util.Set;

import com.exam.entity.ExQuestion;
import com.exam.entity.ExSyllabus;

/**
 * �ʴ��� ��ҵ�����
 * 
 * @author Administrator
 * 
 */
public interface QuestionBiz {

	/**
	 * ������֤�ʴ����û��Ƿ�Ϸ�
	 * 
	 * @param Question
	 *            �ʴ������
	 * @return ���ݿ��д���ʴ������
	 */
	public ExQuestion getQuestionbiz(ExQuestion Question);

	/**
	 * ���ڻ���ʴ���ļ���
	 * 
	 * @param Question
	 *            �ʴ������
	 * @return ���ݿ��д������ʴ������ļ��ϡ�
	 */
	public Set<ExQuestion> getQuestionsbiz(ExQuestion Question);

	/**
	 * �����ݿ���ȡ4�����ݡ���������������������������
	 * 
	 * @param exSyllabus
	 *            �γ�
	 * @return 4���ʴ��⡣
	 */
	public List<ExQuestion> getQuestionsbizLists(ExSyllabus exSyllabus);

	/**
	 * ���ڲ����ʴ��⵽���ݿ�
	 * 
	 * @param Question
	 *            �ʴ������
	 * @return �Ƿ����ɹ�
	 */
	public boolean insertQuestionbiz(ExQuestion Question);

	/**
	 * ����ɾ�����ݿ�����ص��ʴ������
	 * 
	 * @param Question
	 *            �ʴ������
	 * @return �Ƿ�ɾ���ɹ�
	 */
	public boolean deleteQuestionbiz(ExQuestion Question);

	/**
	 * ���ڸ����ʴ��⵽���ݿ�
	 * 
	 * @param Question
	 *            �ʴ������
	 * @return �Ƿ���³ɹ�
	 */
	public boolean updateQuestionbiz(ExQuestion Question);
}
