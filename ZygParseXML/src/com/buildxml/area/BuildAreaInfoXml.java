package com.buildxml.area;

import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;

@SuppressWarnings({ "rawtypes" })
public class BuildAreaInfoXml {

	private static AreaInterface areaManager = new AreaManager();
	private static final String filePath = "D:/areainfo.xml";
	private static final String xmlDeclaration = "<?xml version=\"1.0\" encoding=\"GBK\" ?>";
	private static final String tab = "\t";
	private static final String enter = "\n";
	private static FileWriter fw = null;

	public static void main(String[] args) {
		buildAreaInfoXmlFile();
	}

	public static void buildAreaInfoXmlFile() {
		try {
			fw = new FileWriter(filePath);
			// д��xml����
			fw.write(xmlDeclaration);
			fw.write(enter);
			fw.write("<!--���ļ�����ZygParseXML��com.buildxml.area.BuildAreaInfoXml���ɵ�-->");
			fw.write(enter);
			// д��ʡ�ݽڵ�
			writeProvinceNodes();
			fw.close();
			System.out.println("����xml�ļ���ϣ�");
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static void writeProvinceNodes() {
		List provinceList = areaManager.getProvinces();
		try {
			fw.write("<provinces version=\"1.0\">");
			fw.write(enter);
			String provinceNo = null;
			String provinceName = null;
			AreaInfo areaInfo = null;
			int length = provinceList.size();
			for (int i = 0; i < length; i++) {
				areaInfo = (AreaInfo) provinceList.get(i);
				provinceNo = areaInfo.getAreaNo();
				provinceName = areaInfo.getAreaName();
				StringBuffer provinceNode = new StringBuffer();
				provinceNode.append(tab);
				provinceNode.append("<province code=\"");
				provinceNode.append(provinceNo);
				provinceNode.append("\" name=\"");
				provinceNode.append(provinceName.trim());
				provinceNode.append("\">");
				provinceNode.append(enter);
				fw.write(provinceNode.toString());
				// д��ؼ��нڵ�
				writeCityNodes(provinceNo);
				fw.write(tab);
				fw.write("</province>");
				fw.write(enter);
			}
			fw.write("</provinces>");
			fw.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private static void writeCityNodes(String provinceNo) {
		List cityList = areaManager.getCitiesByProvinceNo(provinceNo);
		try {
			String cityNo = null;
			String cityName = null;
			AreaInfo areaInfo = null;
			int length = cityList.size();
			for (int i = 0; i < length; i++) {
				areaInfo = (AreaInfo) cityList.get(i);
				cityNo = areaInfo.getAreaNo();
				cityName = areaInfo.getAreaName();
				StringBuffer cityNode = new StringBuffer();
				cityNode.append(tab).append(tab);
				cityNode.append("<city code=\"");
				cityNode.append(cityNo);
				cityNode.append("\" name=\"");
				cityNode.append(cityName.trim());
				cityNode.append("\">");
				cityNode.append(enter);
				fw.write(cityNode.toString());
				// д���ؼ��ڵ�
				writeCountryNodes(cityNo);
				fw.write(tab);
				fw.write(tab);
				fw.write("</city>");
				fw.write(enter);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private static void writeCountryNodes(String cityNo) {
		List countryList = areaManager.getCountriesByCityNo(cityNo);
		try {
			String countryNo = null;
			String countryName = null;
			AreaInfo areaInfo = null;
			int length = countryList.size();
			for (int i = 0; i < length; i++) {
				areaInfo = (AreaInfo) countryList.get(i);
				countryNo = areaInfo.getAreaNo();
				countryName = areaInfo.getAreaName();
				StringBuffer countryNode = new StringBuffer();
				countryNode.append(tab).append(tab).append(tab);
				countryNode.append("<country code=\"");
				countryNode.append(countryNo);
				countryNode.append("\" name=\"");
				countryNode.append(countryName.trim());
				countryNode.append("\"/>").append(enter);
				fw.write(countryNode.toString());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
