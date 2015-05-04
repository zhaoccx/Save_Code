package com.exam.dao;

import java.util.Set;

import com.exam.entity.ExStudent;

/**
 * ѧ�� �����ݲ���
 * 
 * @author Administrator
 * 
 */
public interface StudentDao {

	/**
	 * ������֤ѧ���û��Ƿ�Ϸ�
	 * 
	 * @param student
	 *            ѧ������
	 * @return ���ݿ��д��ѧ������
	 */
	public ExStudent getStudentdao(ExStudent student);

	/**
	 * ���ڻ��ѧ���ļ���
	 * 
	 * @param student
	 *            ѧ������
	 * @return ���ݿ��д�����ѧ������ļ��ϡ�
	 */
	public Set<ExStudent> getStudentsdao(ExStudent student);

	/**
	 * ���ڲ���ѧ�������ݿ�
	 * 
	 * @param student
	 *            ѧ������
	 * @return �Ƿ����ɹ�
	 */
	public boolean insertStudentdao(ExStudent student);

	/**
	 * ����ɾ�����ݿ�����ص�ѧ������
	 * 
	 * @param student
	 *            ѧ������
	 * @return �Ƿ�ɾ���ɹ�
	 */
	public boolean deleteStudentdao(ExStudent student);

	/**
	 * ���ڸ���ѧ�������ݿ�
	 * 
	 * @param student
	 *            ѧ������
	 * @return �Ƿ���³ɹ�
	 */
	public boolean updateStudentdao(ExStudent student);
}
