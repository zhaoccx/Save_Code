package com.exam.biz;

import java.util.Set;

import com.exam.entity.ExTeacher;

/**
 * ��ʦ ��ҵ�����
 * 
 * @author Administrator
 * 
 */
public interface TeacherBiz {

	/**
	 * ������֤��ʦ�û��Ƿ�Ϸ�
	 * 
	 * @param Teacher
	 *            ��ʦ����
	 * @return ���ݿ��д�Ľ�ʦ����
	 */
	public ExTeacher getTeacherbiz(ExTeacher Teacher);

	/**
	 * ���ڻ�ý�ʦ�ļ���
	 * 
	 * @param Teacher
	 *            ��ʦ����
	 * @return ���ݿ��д����ؽ�ʦ����ļ��ϡ�
	 */
	public Set<ExTeacher> getTeachersbiz(ExTeacher Teacher);

	/**
	 * ���ڲ����ʦ�����ݿ�
	 * 
	 * @param Teacher
	 *            ��ʦ����
	 * @return �Ƿ����ɹ�
	 */
	public boolean insertTeacherbiz(ExTeacher Teacher);

	/**
	 * ����ɾ�����ݿ�����صĽ�ʦ����
	 * 
	 * @param Teacher
	 *            ��ʦ����
	 * @return �Ƿ�ɾ���ɹ�
	 */
	public boolean deleteTeacherbiz(ExTeacher Teacher);

	/**
	 * ���ڸ��½�ʦ�����ݿ�
	 * 
	 * @param Teacher
	 *            ��ʦ����
	 * @return �Ƿ���³ɹ�
	 */
	public boolean updateTeacherbiz(ExTeacher Teacher);
}