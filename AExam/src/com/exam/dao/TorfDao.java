package com.exam.dao;

import java.util.Set;

import com.exam.entity.ExTorf;

/**
 * �ж��� �����ݲ���
 * 
 * @author Administrator
 * 
 */
public interface TorfDao {

	/**
	 * ������֤�ж����û��Ƿ�Ϸ�
	 * 
	 * @param Torf
	 *            �ж������
	 * @return ���ݿ��д���ж������
	 */
	public ExTorf getTorfdao(ExTorf Torf);

	/**
	 * ���ڻ���ж���ļ���
	 * 
	 * @param Torf
	 *            �ж������
	 * @return ���ݿ��д������ж������ļ��ϡ�
	 */
	public Set<ExTorf> getTorfsdao(ExTorf Torf);

	/**
	 * ���ڲ����ж��⵽���ݿ�
	 * 
	 * @param Torf
	 *            �ж������
	 * @return �Ƿ����ɹ�
	 */
	public boolean insertTorfdao(ExTorf Torf);

	/**
	 * ����ɾ�����ݿ�����ص��ж������
	 * 
	 * @param Torf
	 *            �ж������
	 * @return �Ƿ�ɾ���ɹ�
	 */
	public boolean deleteTorfdao(ExTorf Torf);

	/**
	 * ���ڸ����ж��⵽���ݿ�
	 * 
	 * @param Torf
	 *            �ж������
	 * @return �Ƿ���³ɹ�
	 */
	public boolean updateTorfdao(ExTorf Torf);
}
