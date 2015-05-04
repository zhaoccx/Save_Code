package com.exam.biz;

import java.util.List;
import java.util.Set;

import com.exam.entity.ExCompletion;
import com.exam.entity.ExSyllabus;

/**
 * ����� ��ҵ�����
 * 
 * @author Administrator
 * 
 */
public interface CompletionBiz {

	/**
	 * ������֤������û��Ƿ�Ϸ�
	 * 
	 * @param Completion
	 *            ��������
	 * @return ���ݿ��д����������
	 */
	public ExCompletion getCompletionbiz(ExCompletion Completion);

	/**
	 * ���ڻ�������ļ���
	 * 
	 * @param Completion
	 *            ��������
	 * @return ���ݿ��д�������������ļ��ϡ�
	 */
	public Set<ExCompletion> getCompletionsbiz(ExCompletion Completion);

	/**
	 * �����ݿ���ȡ10�����ݡ���������������������������
	 * 
	 * @param Completion
	 *            ��γ���
	 * @return 10������⡣
	 */
	public List<ExCompletion> getCompletionsbizLists(ExSyllabus exSyllabus);

	/**
	 * ���ڲ�������⵽���ݿ�
	 * 
	 * @param Completion
	 *            ��������
	 * @return �Ƿ����ɹ�
	 */
	public boolean insertCompletionbiz(ExCompletion Completion);

	/**
	 * ����ɾ�����ݿ�����ص���������
	 * 
	 * @param Completion
	 *            ��������
	 * @return �Ƿ�ɾ���ɹ�
	 */
	public boolean deleteCompletionbiz(ExCompletion Completion);

	/**
	 * ���ڸ�������⵽���ݿ�
	 * 
	 * @param Completion
	 *            ��������
	 * @return �Ƿ���³ɹ�
	 */
	public boolean updateCompletionbiz(ExCompletion Completion);
}
