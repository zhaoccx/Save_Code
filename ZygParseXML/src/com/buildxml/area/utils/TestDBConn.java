package com.buildxml.area.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class TestDBConn {

	public static void main(String[] args) throws Exception {
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String username = "scott";
		String password = "tiger";
		Long startTime = System.currentTimeMillis();
		String sql = "select * from emp";
		for (int i = 0; i < 141; i++) {
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			Connection conn = DriverManager.getConnection(url, username, password);
			Statement stmt = conn.createStatement();// ������������
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				// ִ��ָ�������
				System.out.println("ename  " + rs.getString("ename") + "   job  " + rs.getString("job"));
			}
			System.out.println("********************************************************");
			rs.close();
			stmt.close();
			conn.close();
		}
		System.out.println("����100��ѭ������" + (System.currentTimeMillis() - startTime) + "ms");
	}
}
