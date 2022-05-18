package jdbc_p;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBCP_DAO {
	
	Connection con;
	PreparedStatement stmt;
	ResultSet rs;
	String sql;
	
	public DBCP_DAO() {
		
		try {
			Context context = new InitialContext(); 
			DataSource ds = (DataSource) context.lookup("java:comp/env/qazxsw");
			con = ds.getConnection();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<MemberDTO> list(int marriage) {
		ArrayList<MemberDTO> res = new ArrayList<MemberDTO>();
		
		sql = "SELECT * FROM member WHERE marriage = " + marriage;
		
		try {
			stmt = con.prepareStatement(sql);
			
			rs = stmt.executeQuery();
			
			while(rs.next()) {
				MemberDTO dto = new MemberDTO();
				
				dto.setPid(rs.getString("pid"));
				dto.setPname(rs.getString("pname"));
				dto.setAge(rs.getInt("age"));
				dto.setMarriage(rs.getInt("marriage"));
				dto.setReg_Date(rs.getTimestamp("reg_date"));
				
				res.add(dto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return res;
	}
	
	public int insert(MemberDTO dto) {
		int res = 0;
		sql = "INSERT INTO member "
				+ "(pid, pname, pw, age, marriage, reg_date)  VALUES " 
				+ "(?, ?, ?, ?, ?,SYSDATE())";
		
		System.out.println(sql);
		
		try {
			stmt = con.prepareStatement(sql);
			stmt.setString(1, dto.getPid());
			stmt.setString(2, dto.getPname());
			stmt.setString(3, dto.getPw());
			stmt.setInt(4, dto.getAge());
			stmt.setInt(5, dto.getMarriageInt());
			res = stmt.executeUpdate();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		
		return res;
	}
	
	public MemberDTO detail(MemberDTO dto) {
		MemberDTO res = null;
		
		//sql = "SELECT * FROM member WHERE pid = '"+dto.pid+"' and pw = '"+dto.pw+"'";
		sql = "SELECT * FROM member WHERE pid = ? and pw = ?";
		System.out.println(sql);
		
		try {
			stmt = con.prepareStatement(sql);
			stmt.setString(1, dto.pid);
			stmt.setString(2, dto.pw);
			rs = stmt.executeQuery();
			
			if(rs.next()) {
				res = new MemberDTO();
				
				res.setPid(rs.getString("pid"));
				res.setPname(rs.getString("pname"));
				res.setAge(rs.getInt("age"));
				res.setMarriage(rs.getInt("marriage"));
				res.setReg_Date(rs.getTimestamp("reg_date"));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return res;
	}
	
	public void close() {
		if (rs!=null) {try { rs.close(); } catch (SQLException e) {e.printStackTrace();}}
		if (stmt!=null) { try { stmt.close(); } catch (SQLException e) {e.printStackTrace();}}
		if (con!=null) { try { con.close(); } catch (SQLException e) {e.printStackTrace();}}
	}
	
	
}
