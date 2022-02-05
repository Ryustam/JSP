package com.jsp.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import com.jsp.dto.MemberDTO;

public class MemberDAO {
	private String url="jdbc:mysql://127.0.0.1:3306/jsp_practice?serverTimezone=UTC&useSSL=false";
	private String dbID="root";
	private String dbPW="1234";
	
	Connection con=null;
	
	public MemberDAO() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection(url,dbID,dbPW);
		} catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public ArrayList<MemberDTO> memberSelect(){
		
		ArrayList<MemberDTO> dtoList=new ArrayList<MemberDTO>(); 
		Statement stmt=null;
		ResultSet rs=null;
		String SQL="SELECT * FROM Member";
		
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(SQL);
			
			while(rs.next()){
				String ID = rs.getString("id");
				System.out.print(ID+" ");
				String PW = rs.getString("pw");
				System.out.print(PW+" ");	
			}
		} catch(Exception e){
			e.printStackTrace();
		}
		
		return dtoList;
	}
	
}
