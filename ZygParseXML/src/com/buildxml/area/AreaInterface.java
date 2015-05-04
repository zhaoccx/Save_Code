package com.buildxml.area;

import java.util.List;

@SuppressWarnings("rawtypes")
public interface AreaInterface {

	/**
	 * 查询所有省级地区
	 * 
	 * @return
	 */
	public abstract List getProvinces();

	/**
	 * 根据省份编号查询所有地级市
	 * 
	 * @param provinceNo
	 * @return
	 */
	public abstract List getCitiesByProvinceNo(String provinceNo);

	/**
	 * 根据地级市编号查询所有县
	 * 
	 * @param provinceNo
	 * @return
	 */
	public abstract List getCountriesByCityNo(String cityNo);
}