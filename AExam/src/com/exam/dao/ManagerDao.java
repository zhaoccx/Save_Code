package com.exam.dao;

import java.util.Set;

import com.exam.entity.ExManager;

/**
 * ����Ա �����ݲ���
 * 
 * @author Administrator
 * 
 */
public interface ManagerDao {

	/**
	 * ������֤����Ա�û��Ƿ�Ϸ�
	 * 
	 * @param Manager
	 *            ����Ա����
	 * @return ���ݿ��д�Ĺ���Ա����
	 */
	public ExManager getManagerdao(ExManager Manager);

	/**
	 * ���ڻ�ù���Ա�ļ���
	 * 
	 * @param Manager
	 *            ����Ա����
	 * @return ���ݿ��д����ع���Ա����ļ��ϡ�
	 */
	public Set<ExManager> getManagersdao(ExManager Manager);

	/**
	 * ���ڲ������Ա�����ݿ�
	 * 
	 * @param Manager
	 *            ����Ա����
	 * @return �Ƿ����ɹ�
	 */
	public boolean insertManagerdao(ExManager Manager);

	/**
	 * ����ɾ�����ݿ�����صĹ���Ա����
	 * 
	 * @param Manager
	 *            ����Ա����
	 * @return �Ƿ�ɾ���ɹ�
	 */
	public boolean deleteManagerdao(ExManager Manager);

	/**
	 * ���ڸ��¹���Ա�����ݿ�
	 * 
	 * @param Manager
	 *            ����Ա����
	 * @return �Ƿ���³ɹ�
	 */
	public boolean updateManagerdao(ExManager Manager);
}
