package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class memberDAO {
	private Connection con=null;
	private Statement st;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private String url="jdbc:mysql://127.0.0.1:3306/pet?serverTimezone=UTC&useSSL=false";
	private String dbID="root";
	private String dbPW="1234";
	
	public memberDAO() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection(url,dbID,dbPW);
		} catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public int memberSelect(String ID, String PW) {
		String SQL="select PW from login where ID=?";
		
		try {
			pstmt = con.prepareStatement(SQL);
			pstmt.setString(1, ID);
			//stmt = con.createStatement();
			rs=pstmt.executeQuery();
			if(rs==null) {
				return 0;
			}
			while(rs.next()){
				String pw = rs.getString("PW");
				if(pw.equals(PW)==true) {
					return 1;
				}else {
					return 2;
				}
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return 0;	
	}
	
	public boolean memberInsert(String ID, String PW) 
		{
			String SQL="insert into login values (?,?)";
			if(this.check(ID)==0) {	
				try {
					pstmt=con.prepareStatement(SQL);
					pstmt.setString(1, ID); 
					pstmt.setString(2, PW);
					pstmt.executeUpdate();
				}catch(SQLException e) {
					e.printStackTrace();
				}
				return true;
			} else {
				return false;
			}
		}
	
	public int check(String ID) {
		String SQL="select count(*) from login where ID=?";
		
		int count=1;
		try {
			pstmt = con.prepareStatement(SQL);
			pstmt.setString(1, ID);
			rs=pstmt.executeQuery();
			while(rs.next()){
					count=rs.getInt(1);	
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return count;
	}
}
