package com.exam.biz;

import java.util.List;
import java.util.Set;

import com.exam.entity.ExChoice;
import com.exam.entity.ExSyllabus;

/**
 * ѡ���� ��ҵ�����
 * 
 * @author Administrator
 * 
 */
public interface ChoiceBiz {

	/**
	 * ������֤ѡ�����û��Ƿ�Ϸ�
	 * 
	 * @param Choice
	 *            ѡ�������
	 * @return ���ݿ��д��ѡ�������
	 */
	public ExChoice getChoicebiz(ExChoice Choice);

	/**
	 * ���ڻ��ѡ����ļ���
	 * 
	 * @param Choice
	 *            ѡ�������
	 * @return ���ݿ��д�����ѡ�������ļ��ϡ�
	 */
	public Set<ExChoice> getChoicesbiz(ExChoice Choice);

	/**
	 * �����ݿ���ȡ10�����ݡ���������������������������
	 * 
	 * @param exSyllabus
	 *            �γ�
	 * @return 10��ѡ���⡣
	 */
	public List<ExChoice> getChoicesbizLists(ExSyllabus exSyllabus);

	/**
	 * ���ڲ���ѡ���⵽���ݿ�
	 * 
	 * @param Choice
	 *            ѡ�������
	 * @return �Ƿ����ɹ�
	 */
	public boolean insertChoicebiz(ExChoice Choice);

	/**
	 * ����ɾ�����ݿ�����ص�ѡ�������
	 * 
	 * @param Choice
	 *            ѡ�������
	 * @return �Ƿ�ɾ���ɹ�
	 */
	public boolean deleteChoicebiz(ExChoice Choice);

	/**
	 * ���ڸ���ѡ���⵽���ݿ�
	 * 
	 * @param Choice
	 *            ѡ�������
	 * @return �Ƿ���³ɹ�
	 */
	public boolean updateChoicebiz(ExChoice Choice);
}