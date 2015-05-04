package com.exam.biz;

import java.util.Set;

import com.exam.entity.ExStudent;

/**
 * ѧ�� ��ҵ�����
 * 
 * @author Administrator
 * 
 */
public interface StudentBiz {

	/**
	 * ������֤ѧ���û��Ƿ�Ϸ�
	 * 
	 * @param student
	 *            ѧ������
	 * @return ���ݿ��д��ѧ������
	 */
	public ExStudent getStudentbiz(ExStudent student);

	/**
	 * ���ڻ��ѧ���ļ���
	 * 
	 * @param student
	 *            ѧ������
	 * @return ���ݿ��д�����ѧ������ļ��ϡ�
	 */
	public Set<ExStudent> getStudentsbiz(ExStudent student);

	/**
	 * ���ڲ���ѧ�������ݿ�
	 * 
	 * @param student
	 *            ѧ������
	 * @return �Ƿ����ɹ�
	 */
	public boolean insertStudentbiz(ExStudent student);

	/**
	 * ����ɾ�����ݿ�����ص�ѧ������
	 * 
	 * @param student
	 *            ѧ������
	 * @return �Ƿ�ɾ���ɹ�
	 */
	public boolean deleteStudentbiz(ExStudent student);

	/**
	 * ���ڸ���ѧ�������ݿ�
	 * 
	 * @param student
	 *            ѧ������
	 * @return �Ƿ���³ɹ�
	 */
	public boolean updateStudentbiz(ExStudent student);
}
