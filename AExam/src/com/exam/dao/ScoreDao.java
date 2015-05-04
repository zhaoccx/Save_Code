package com.exam.dao;

import java.util.List;
import java.util.Set;

import com.exam.entity.ExScore;

/**
 * �ɼ� �����ݲ���
 * 
 * @author Administrator
 * 
 */
public interface ScoreDao {

	/**
	 * ������֤�ɼ��û��Ƿ�Ϸ�
	 * 
	 * @param Score
	 *            �ɼ�����
	 * @return ���ݿ��д�ĳɼ�����
	 */
	public List<ExScore> getScoredao(ExScore Score);

	/**
	 * ���ڻ�óɼ��ļ���
	 * 
	 * @param Score
	 *            �ɼ�����
	 * @return ���ݿ��д����سɼ�����ļ��ϡ�
	 */
	public Set<ExScore> getScoresdao(ExScore Score);

	/**
	 * ���ڲ���ɼ������ݿ�
	 * 
	 * @param Score
	 *            �ɼ�����
	 * @return �Ƿ����ɹ�
	 */
	public boolean insertScoredao(ExScore Score);

	/**
	 * ����ɾ�����ݿ�����صĳɼ�����
	 * 
	 * @param Score
	 *            �ɼ�����
	 * @return �Ƿ�ɾ���ɹ�
	 */
	public boolean deleteScoredao(ExScore Score);

	/**
	 * ���ڸ��³ɼ������ݿ�
	 * 
	 * @param Score
	 *            �ɼ�����
	 * @return �Ƿ���³ɹ�
	 */
	public boolean updateScoredao(ExScore Score);
}
