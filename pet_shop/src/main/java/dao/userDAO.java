package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import dto.buyListDTO;
import dto.goodsDTO;
import dto.userDTO;

public class userDAO {
	private ArrayList<userDTO> user_dtos;
	private userDTO user_dto;
	private ArrayList<buyListDTO> buyList_dtos;
	private Connection con=null;
	private Statement st;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private String url="jdbc:mysql://127.0.0.1:3306/pet?serverTimezone=UTC&useSSL=false";
	private String dbID="root";
	private String dbPW="1234";
	
	public userDAO() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection(url,dbID,dbPW);
		} catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public void goodInsert(String ID, String name,int price) 
	{
		String SQL="insert into buy values (?,?,?,?)";
			try {
				pstmt=con.prepareStatement(SQL);
				pstmt.setInt(1,0); 
				pstmt.setString(2, ID); 
				pstmt.setString(3, name);
				pstmt.setInt(4, price);
				pstmt.executeUpdate();
			}catch(SQLException e) {
				e.printStackTrace();
			}
	}
	
	public ArrayList<userDTO> getUserBuy(int page,String ID_) {
		user_dtos = new ArrayList<userDTO>();
		String SQL="SELECT * FROM buy where ID=? limit ?, 5";
		try {
			pstmt=con.prepareStatement(SQL);
			pstmt.setString(1,ID_);
			pstmt.setInt(2,(page-1)*5);
			rs = pstmt.executeQuery();
			while(rs.next()) {	
				int num = rs.getInt("num");
				String ID = rs.getString("ID");
				String name = rs.getString("name");
				int price = rs.getInt("price");
				userDTO VO=new userDTO(num,ID,name,price);
				user_dtos.add(VO);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return user_dtos;
	}
	
	public int getBuyCount(String ID) {
		String SQL="select count(*) from buy where ID like ?";
		int count=0;
		
		try {
			pstmt=con.prepareStatement(SQL);
			pstmt.setString(1,"%"+ID+"%");
			rs = pstmt.executeQuery();
			while(rs.next()) {	
				count=rs.getInt(1);	
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return count;
	}
	
	public void Buy(int num,String ID) {
		String SQL="delete from buy where num=? and ID=?";
		
		try {
			pstmt=con.prepareStatement(SQL);
			pstmt.setInt(1,num);
			pstmt.setString(2,ID);
			pstmt.executeUpdate();
			System.out.println("buy db에서 삭제완료");
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	public void BuyDelete(int num,String ID) {
		String SQL="delete from buy where num=? and ID=?";
		
		try {
			pstmt=con.prepareStatement(SQL);
			pstmt.setInt(1,num);
			pstmt.setString(2,ID);
			pstmt.executeUpdate();
			System.out.println("buy db에서 삭제완료");
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	public userDTO getBuy(int num,String ID) {
		user_dto = new userDTO();
		String SQL="SELECT * FROM buy where num=? and ID=?";
		try {
			pstmt=con.prepareStatement(SQL);
			pstmt.setInt(1,num);
			pstmt.setString(2,ID);
			rs = pstmt.executeQuery();
			while(rs.next()) {	
				int num_ = rs.getInt("num");
				String ID_ = rs.getString("ID");
				String name = rs.getString("name");
				int price = rs.getInt("price");
				user_dto=new userDTO(num_,ID_,name,price);
				System.out.println("데이터 선택완료");
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return user_dto;
	}
	
	public void buyList(userDTO user_dto) {
		String SQL="insert into buyList values(?,?,?,?,now())";
		try {
			pstmt=con.prepareStatement(SQL);
			pstmt.setInt(1,0);
			pstmt.setString(2,user_dto.getID());
			pstmt.setString(3,user_dto.getName());
			pstmt.setInt(4,user_dto.getPrice());
			pstmt.executeUpdate();
			System.out.println("구매완료");
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<buyListDTO> getBuyList(int page,String ID_) {
		buyList_dtos = new ArrayList<buyListDTO>();
		String SQL="SELECT * FROM buyList where ID=? limit ?, 5";
		try {
			pstmt=con.prepareStatement(SQL);
			pstmt.setString(1,ID_);
			pstmt.setInt(2,(page-1)*5);
			rs = pstmt.executeQuery();
			while(rs.next()) {	
				int num = rs.getInt("num");
				String ID = rs.getString("ID");
				String name = rs.getString("name");
				int price = rs.getInt("price");
				String date = rs.getString("date");
				buyListDTO VO=new buyListDTO(num,ID,name,price,date);
				buyList_dtos.add(VO);
			}
			System.out.println("성공");
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return buyList_dtos;
	}
	
	public int getBuyListCount(String ID) {
		String SQL="select count(*) from buylist where ID like ?";
		int count=0;
		
		try {
			pstmt=con.prepareStatement(SQL);
			pstmt.setString(1,"%"+ID+"%");
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


