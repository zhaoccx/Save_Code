package com.exam.dao;

import java.util.Set;

import com.exam.entity.ExDepartment;

/**
 * ��ʦ���� �����ݲ���
 * 
 * @author Administrator
 * 
 */
public interface DepartmentDao {

	/**
	 * ������֤��ʦ�����û��Ƿ�Ϸ�
	 * 
	 * @param Department
	 *            ��ʦ���Ŷ���
	 * @return ���ݿ��д�Ľ�ʦ���Ŷ���
	 */
	public ExDepartment getDepartmentdao(ExDepartment Department);

	/**
	 * ���ڻ�ý�ʦ���ŵļ���
	 * 
	 * @param Department
	 *            ��ʦ���Ŷ���
	 * @return ���ݿ��д����ؽ�ʦ���Ŷ���ļ��ϡ�
	 */
	public Set<ExDepartment> getDepartmentsdao(ExDepartment Department);

	/**
	 * ���ڲ����ʦ���ŵ����ݿ�
	 * 
	 * @param Department
	 *            ��ʦ���Ŷ���
	 * @return �Ƿ����ɹ�
	 */
	public boolean insertDepartmentdao(ExDepartment Department);

	/**
	 * ����ɾ�����ݿ�����صĽ�ʦ���Ŷ���
	 * 
	 * @param Department
	 *            ��ʦ���Ŷ���
	 * @return �Ƿ�ɾ���ɹ�
	 */
	public boolean deleteDepartmentdao(ExDepartment Department);

	/**
	 * ���ڸ��½�ʦ���ŵ����ݿ�
	 * 
	 * @param Department
	 *            ��ʦ���Ŷ���
	 * @return �Ƿ���³ɹ�
	 */
	public boolean updateDepartmentdao(ExDepartment Department);
}
