package School_p.Model_p;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class SchoolDAO {
	// db 연결을 위한 connection, preparedstatement 가 필요함
	
	Connection conn;
	PreparedStatement ptmt;
	ResultSet rs;
	
	public SchoolDAO() {
		try {
			Context context = new InitialContext();
			DataSource ds = (DataSource) context.lookup("java:comp/env/school_db");
			conn = ds.getConnection();
			
		} catch(Exception e) {
			e.printStackTrace();
		}		
	}
	
	public ArrayList<SchoolDTO> list(){
		ArrayList<SchoolDTO> res = new ArrayList<SchoolDTO>();
		String sql = "select * from list";
		
		
		try {
			ptmt = conn.prepareStatement(sql);
			rs = ptmt.executeQuery();
			
			while(rs.next()) {
				SchoolDTO dto = new SchoolDTO();
				
				dto.setPname(rs.getString("pname"));
				dto.setStuid(rs.getInt("stuid"));
				dto.setMajor(rs.getString("major"));
				dto.setSubject(rs.getString("subject"));
				dto.setMat(rs.getInt("mat"));
				dto.setKor(rs.getInt("kor"));
				
				res.add(dto);	
//				System.out.println(res); db를 comstudy21로 연결 해둬서 리스트가 안뽑히는거였음
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return res;
	}
	
	public SchoolDTO detail(int stuid){
		SchoolDTO res = null;
		String sql = "select * from list where stuid = ?";
		
		
		try {
			ptmt = conn.prepareStatement(sql);
			ptmt.setInt(1, stuid);
			
			rs = ptmt.executeQuery();
			
			 if(rs.next()) {
				res = new SchoolDTO();
				
				res.setPname(rs.getString("pname"));
				res.setStuid(rs.getInt("stuid"));
				res.setMajor(rs.getString("major"));
				res.setSubject(rs.getString("subject"));
				res.setMat(rs.getInt("mat"));
				res.setKor(rs.getInt("kor"));
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
		if (ptmt!=null) { try { ptmt.close(); } catch (SQLException e) {e.printStackTrace();}}
		if (conn!=null) { try { conn.close(); } catch (SQLException e) {e.printStackTrace();}}
	}
	
}
