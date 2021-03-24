package com.test.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class TestDAO {
	
	/* DB ���̺��� ��� ó�� 
	 * ���� : con(DB Ŀ�ؼ�) | sql(DB sql ����)
	 * 	  | pstmt(sql���� �����ϱ� ���� ��ü) | rs(sql���� ���� ���� ��)
	 * */
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";

	// ��񿬰� - Ŀ�ؼ�Ǯ
	private Connection getCon() throws Exception {
		Context initCTX = new InitialContext();
		DataSource ds = (DataSource) initCTX.lookup("java:comp/env/jdbc/JuiceDB");
		con = ds.getConnection();

		System.out.println("DAO : DB ���� ����! -> " + con);

		return con;
	}

	// �ڿ�����
	public void closeDB() {
		try {
			if (rs != null)	rs.close();
			if (pstmt != null) pstmt.close();
			if (con != null) con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		System.out.println("DAO : DB �ڿ� ���� !");
	}
	
	/************** DB ó���� ���� Method�� **************/
	//��� ���� �׽�Ʈ�� ���� method
	public TestBean getInfo(String nick){
		System.out.println("DAO : DB info ! nick >>> "+nick);
		
		TestBean tb = null;
		
		try {
			con = getCon();
			sql = "select * from users where nick=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, nick);
			rs = pstmt.executeQuery();
			if(rs.next()){
				tb = new TestBean();
				
				tb.setNum(rs.getInt("user_num"));
				tb.setEmail(rs.getString("email"));
				tb.setNick(rs.getString("nick"));
			}
			
			System.out.println("DAO : DB info ���� �Ϸ� ! tb >>> "+tb);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		
		return tb;
	}
}
