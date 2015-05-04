package com.exam.biz;

import java.util.List;
import java.util.Set;

import com.exam.entity.ExScore;

/**
 * �ɼ� ��ҵ�����
 * 
 * @author Administrator
 * 
 */
public interface ScoreBiz {

	/**
	 * ������֤�ɼ��û��Ƿ�Ϸ�
	 * 
	 * @param Score
	 *            �ɼ�����
	 * @return ���ݿ��д�ĳɼ�����
	 */
	public ExScore getScorebiz(ExScore Score);

	/**
	 * ���ڻ�óɼ��ļ���
	 * 
	 * @param Score
	 *            �ɼ�����
	 * @return ���ݿ��д����سɼ�����ļ��ϡ�
	 */
	public Set<ExScore> getScoresbiz(ExScore Score);

	/**
	 * ���ڻ��һ��ѧ�������гɼ��ļ���
	 * 
	 * @param score
	 *            �ɼ�����
	 * @return ���ݿ��д����سɼ�����ļ��ϡ�
	 */
	public List<ExScore> getScoresbizList(ExScore score);

	/**
	 * ���ڲ���ɼ������ݿ�
	 * 
	 * @param Score
	 *            �ɼ�����
	 * @return �Ƿ����ɹ�
	 */
	public boolean insertScorebiz(ExScore Score);

	/**
	 * ����ɾ�����ݿ�����صĳɼ�����
	 * 
	 * @param Score
	 *            �ɼ�����
	 * @return �Ƿ�ɾ���ɹ�
	 */
	public boolean deleteScorebiz(ExScore Score);

	/**
	 * ���ڸ��³ɼ������ݿ�
	 * 
	 * @param Score
	 *            �ɼ�����
	 * @return �Ƿ���³ɹ�
	 */
	public boolean updateScorebiz(ExScore Score);
}
