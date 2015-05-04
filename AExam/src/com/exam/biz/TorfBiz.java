package com.exam.biz;

import java.util.List;
import java.util.Set;

import com.exam.entity.ExSyllabus;
import com.exam.entity.ExTorf;

/**
 * �ж��� ��ҵ�����
 * 
 * @author Administrator
 * 
 */
public interface TorfBiz {

	/**
	 * ������֤�ж����û��Ƿ�Ϸ�
	 * 
	 * @param Torf
	 *            �ж������
	 * @return ���ݿ��д���ж������
	 */
	public ExTorf getTorfbiz(ExTorf Torf);

	/**
	 * ���ڻ���ж���ļ���
	 * 
	 * @param Torf
	 *            �ж������
	 * @return ���ݿ��д������ж������ļ��ϡ�
	 */
	public Set<ExTorf> getTorfsbiz(ExTorf Torf);

	/**
	 * �����ݿ���ȡ10�����ݡ���������������������������
	 * 
	 * @param exSyllabus
	 *            �γ�
	 * @return 10���ж��⡣
	 */
	public List<ExTorf> getExTorfsbizLists(ExSyllabus exSyllabus);

	/**
	 * ���ڲ����ж��⵽���ݿ�
	 * 
	 * @param Torf
	 *            �ж������
	 * @return �Ƿ����ɹ�
	 */
	public boolean insertTorfbiz(ExTorf Torf);

	/**
	 * ����ɾ�����ݿ�����ص��ж������
	 * 
	 * @param Torf
	 *            �ж������
	 * @return �Ƿ�ɾ���ɹ�
	 */
	public boolean deleteTorfbiz(ExTorf Torf);

	/**
	 * ���ڸ����ж��⵽���ݿ�
	 * 
	 * @param Torf
	 *            �ж������
	 * @return �Ƿ���³ɹ�
	 */
	public boolean updateTorfbiz(ExTorf Torf);
}
