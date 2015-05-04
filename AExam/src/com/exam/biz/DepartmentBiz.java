package com.exam.biz;

import java.util.Set;

import com.exam.entity.ExDepartment;

/**
 * ��ʦ���� ��ҵ�����
 * 
 * @author Administrator
 * 
 */
public interface DepartmentBiz {

	/**
	 * ������֤��ʦ�����û��Ƿ�Ϸ�
	 * 
	 * @param Department
	 *            ��ʦ���Ŷ���
	 * @return ���ݿ��д�Ľ�ʦ���Ŷ���
	 */
	public ExDepartment getDepartmentbiz(ExDepartment Department);

	/**
	 * ���ڻ�ý�ʦ���ŵļ���
	 * 
	 * @param Department
	 *            ��ʦ���Ŷ���
	 * @return ���ݿ��д����ؽ�ʦ���Ŷ���ļ��ϡ�
	 */
	public Set<ExDepartment> getDepartmentsbiz(ExDepartment Department);

	/**
	 * ���ڲ����ʦ���ŵ����ݿ�
	 * 
	 * @param Department
	 *            ��ʦ���Ŷ���
	 * @return �Ƿ����ɹ�
	 */
	public boolean insertDepartmentbiz(ExDepartment Department);

	/**
	 * ����ɾ�����ݿ�����صĽ�ʦ���Ŷ���
	 * 
	 * @param Department
	 *            ��ʦ���Ŷ���
	 * @return �Ƿ�ɾ���ɹ�
	 */
	public boolean deleteDepartmentbiz(ExDepartment Department);

	/**
	 * ���ڸ��½�ʦ���ŵ����ݿ�
	 * 
	 * @param Department
	 *            ��ʦ���Ŷ���
	 * @return �Ƿ���³ɹ�
	 */
	public boolean updateDepartmentbiz(ExDepartment Department);
}
