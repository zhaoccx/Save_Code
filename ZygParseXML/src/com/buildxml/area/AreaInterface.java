package com.buildxml.area;

import java.util.List;

@SuppressWarnings("rawtypes")
public interface AreaInterface {

	/**
	 * ��ѯ����ʡ������
	 * 
	 * @return
	 */
	public abstract List getProvinces();

	/**
	 * ����ʡ�ݱ�Ų�ѯ���еؼ���
	 * 
	 * @param provinceNo
	 * @return
	 */
	public abstract List getCitiesByProvinceNo(String provinceNo);

	/**
	 * ���ݵؼ��б�Ų�ѯ������
	 * 
	 * @param provinceNo
	 * @return
	 */
	public abstract List getCountriesByCityNo(String cityNo);
}