package com.exam.dao;

import java.util.Set;

import com.exam.entity.ExTeacher;

/**
 * ��ʦ �����ݲ���
 * 
 * @author Administrator
 * 
 */
public interface TeacherDao {

	/**
	 * ������֤��ʦ�û��Ƿ�Ϸ�
	 * 
	 * @param Teacher
	 *            ��ʦ����
	 * @return ���ݿ��д�Ľ�ʦ����
	 */
	public ExTeacher getTeacherdao(ExTeacher Teacher);

	/**
	 * ���ڻ�ý�ʦ�ļ���
	 * 
	 * @param Teacher
	 *            ��ʦ����
	 * @return ���ݿ��д����ؽ�ʦ����ļ��ϡ�
	 */
	public Set<ExTeacher> getTeachersdao(ExTeacher Teacher);

	/**
	 * ���ڲ����ʦ�����ݿ�
	 * 
	 * @param Teacher
	 *            ��ʦ����
	 * @return �Ƿ����ɹ�
	 */
	public boolean insertTeacherdao(ExTeacher Teacher);

	/**
	 * ����ɾ�����ݿ�����صĽ�ʦ����
	 * 
	 * @param Teacher
	 *            ��ʦ����
	 * @return �Ƿ�ɾ���ɹ�
	 */
	public boolean deleteTeacherdao(ExTeacher Teacher);

	/**
	 * ���ڸ��½�ʦ�����ݿ�
	 * 
	 * @param Teacher
	 *            ��ʦ����
	 * @return �Ƿ���³ɹ�
	 */
	public boolean updateTeacherdao(ExTeacher Teacher);
}
