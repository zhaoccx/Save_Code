package com.longrise.atest;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class InsertDate {
	@SuppressWarnings({ "static-access", "resource" })
	public static void main(String[] args) {
		DBUtils dbUtils = new DBUtils();
		try {
			Connection con = dbUtils.getConnection();
			FileReader fileReader = new FileReader("abc.txt");
			BufferedReader bufferedReader = new BufferedReader(fileReader);
			String string = null;
			String string2=null;
			Statement stat=con.createStatement();
			while ((string = bufferedReader.readLine()) != null) {
				string2=string.trim();
				if(!"".equals(string2)){
					stat.execute(string2.substring(0, string2.length()-1));
				}
			}
			stat.close();
			con.close();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
