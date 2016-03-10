package com.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class SimpleJDBCUtil {
	static{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	public static ResultSet executQuery(String sql,Object[] objects) throws Exception{

		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsmanage", "root", "root");
		PreparedStatement pstmt = conn.prepareStatement(sql);
		for(int i=0;i<objects.length;i++) {
			pstmt.setObject(i + 1, objects[i]);
		}
		ResultSet resultSet = pstmt.executeQuery();
		return resultSet;
	}
	public static int executUpdate(String sql,Object[] objects) throws Exception{
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsmanage", "root", "root");
		PreparedStatement pstmt = conn.prepareStatement(sql);
		for(int i=0;i<objects.length;i++)
			pstmt.setObject(i+1, objects[i]);
		int n = pstmt.executeUpdate();
		return n;
	}
}
