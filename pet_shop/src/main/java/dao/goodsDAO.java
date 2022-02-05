package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import dto.goodsDTO;

public class goodsDAO {
	private ArrayList<goodsDTO> goods_dtos;
	private Connection con=null;
	private Statement st;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private String url="jdbc:mysql://127.0.0.1:3306/pet?serverTimezone=UTC&useSSL=false";
	private String dbID="root";
	private String dbPW="1234";
	
	public goodsDAO() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection(url,dbID,dbPW);
		} catch(Exception e){
			e.printStackTrace();
		}
	}

	public ArrayList<goodsDTO> getAllGoods(int page) {
		goods_dtos = new ArrayList<goodsDTO>();
		String SQL="SELECT * FROM petGoods limit ?, 4";
		try {
			pstmt=con.prepareStatement(SQL);
			pstmt.setInt(1,(page-1)*4);
			rs = pstmt.executeQuery();
			while(rs.next()) {	
				int num = rs.getInt("num");
				String name = rs.getString("name");
				int price = rs.getInt("price");
				goodsDTO VO=new goodsDTO(num,name,price);
				goods_dtos.add(VO);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return goods_dtos;
	}
	
	public ArrayList<goodsDTO> getSearch(int page,String search) {
		goods_dtos = new ArrayList<goodsDTO>();
		String SQL="SELECT * FROM petGoods where name like ? limit ?, 4";
		try {
			pstmt=con.prepareStatement(SQL);
			pstmt.setString(1,"%"+search+"%");
			pstmt.setInt(2,(page-1)*4);
			rs = pstmt.executeQuery();
			while(rs.next()) {	
				int num = rs.getInt("num");
				String name = rs.getString("name");
				int price = rs.getInt("price");
				goodsDTO VO=new goodsDTO(num,name,price);
				goods_dtos.add(VO);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return goods_dtos;
	}
	
	public int getCount() {
			String SQL="select count(*) from petGoods";
			int count=0;
			
			try {
				st=con.createStatement();
				rs=st.executeQuery(SQL);
				while(rs.next()) {	
					count=rs.getInt(1);	
				}
			}catch(SQLException e) {
				e.printStackTrace();
			}
			return count;
	}
	
	public int getSearchCount(String search) {
		String SQL="select count(*) from petGoods where name like ?";
		int count=0;
		
		try {
			pstmt=con.prepareStatement(SQL);
			pstmt.setString(1,"%"+search+"%");
			rs = pstmt.executeQuery();
			while(rs.next()) {	
				count=rs.getInt(1);	
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return count;
	}
}
