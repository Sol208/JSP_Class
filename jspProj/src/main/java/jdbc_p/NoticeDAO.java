package jdbc_p;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class NoticeDAO {
	
	Connection con;
	
	Statement stmt;
	ResultSet rs;
	String sql;
	
	public NoticeDAO() {
		String url = "jdbc:mariadb://localhost:3307/comstudy21"; // 경로는 커넥터가 지정
		String username = "user21";
		String password = "1234";
		
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			
			con = DriverManager.getConnection(url, username, password);
			
			stmt = con.createStatement();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public ArrayList<NoticeDTO> selectAll(){
		ArrayList<NoticeDTO> res = new ArrayList<NoticeDTO>();
		
		sql = "SELECT * FROM notice";
		
		try {
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				NoticeDTO dto = new NoticeDTO();
				
				dto.setNo(rs.getInt("no"));
				dto.setTitle(rs.getString("title"));
				dto.setDate(rs.getTimestamp("date"));
				dto.setView(rs.getInt("view"));
				
				res.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
				
		return res;
	}
	
	public void close() {
		if (rs!=null) try { rs.close(); } catch (SQLException e) {e.printStackTrace();}
		if (stmt!=null) try { rs.close(); } catch (SQLException e) {e.printStackTrace();}
		if (con!=null) try { rs.close(); } catch (SQLException e) {e.printStackTrace();}
	}
	
	
	
}
