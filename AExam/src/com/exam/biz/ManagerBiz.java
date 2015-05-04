package com.exam.biz;

import java.util.Set;

import com.exam.entity.ExManager;

/**
 * ����Ա ��ҵ�����
 * 
 * @author Administrator
 * 
 */
public interface ManagerBiz {

	/**
	 * ������֤����Ա�û��Ƿ�Ϸ�
	 * 
	 * @param Manager
	 *            ����Ա����
	 * @return ���ݿ��д�Ĺ���Ա����
	 */
	public ExManager getManagerbiz(ExManager Manager);

	/**
	 * ���ڻ�ù���Ա�ļ���
	 * 
	 * @param Manager
	 *            ����Ա����
	 * @return ���ݿ��д����ع���Ա����ļ��ϡ�
	 */
	public Set<ExManager> getManagersbiz(ExManager Manager);

	/**
	 * ���ڲ������Ա�����ݿ�
	 * 
	 * @param Manager
	 *            ����Ա����
	 * @return �Ƿ����ɹ�
	 */
	public boolean insertManagerbiz(ExManager Manager);

	/**
	 * ����ɾ�����ݿ�����صĹ���Ա����
	 * 
	 * @param Manager
	 *            ����Ա����
	 * @return �Ƿ�ɾ���ɹ�
	 */
	public boolean deleteManagerbiz(ExManager Manager);

	/**
	 * ���ڸ��¹���Ա�����ݿ�
	 * 
	 * @param Manager
	 *            ����Ա����
	 * @return �Ƿ���³ɹ�
	 */
	public boolean updateManagerbiz(ExManager Manager);
}
