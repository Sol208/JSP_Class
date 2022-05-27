package board_p.model_p;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDAO {

	Connection con;
	PreparedStatement ptmt;
	ResultSet rs;
	String sql;
	
	public BoardDAO() {
		try {
			Context context = new InitialContext(); 
			DataSource ds = (DataSource) context.lookup("java:comp/env/qazxsw");
			con = ds.getConnection();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<BoardDTO> list(){
		ArrayList<BoardDTO> res = new ArrayList<BoardDTO>();
		sql = "select * from board";
		
		try {
			ptmt = con.prepareStatement(sql);
			rs = ptmt.executeQuery();
			
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();

				dto.setId(rs.getInt("id"));
				dto.setCnt(rs.getInt("cnt"));
				dto.setTitle(rs.getString("title"));
				dto.setPname(rs.getString("pname"));
				dto.setReg_date(rs.getTimestamp("reg_date"));
				
				res.add(dto);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return res;
	}
	
	public BoardDTO detail(int id){
		BoardDTO dto = null;
		sql = "select * from board where id = ?";
		
		try {
			ptmt = con.prepareStatement(sql);
			ptmt.setInt(1, id);
			
			rs = ptmt.executeQuery();
			
			// 1개만 찾으면 되니까 if문으로
			if(rs.next()) {
				dto = new BoardDTO();

				dto.setId(rs.getInt("id"));
				dto.setCnt(rs.getInt("cnt"));
				dto.setTitle(rs.getString("title"));
				dto.setPname(rs.getString("pname"));
				dto.setUpfile(rs.getString("upfile"));
				dto.setContent(rs.getString("content"));
				dto.setReg_date(rs.getTimestamp("reg_date"));
				
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return dto;
	}
	
	public void addCount(int id){
		sql = "update board set cnt = cnt +1 where id = ?";
		
		try {
			ptmt = con.prepareStatement(sql);
			ptmt.setInt(1, id);
			ptmt.executeUpdate();
		
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void insert(BoardDTO dto){
		sql = "insert into board (title, pname, pw, content, upfile, cnt, reg_date) values"
				+"(?, ?, ?, ?, ?, 0, sysdate())";
		
		
		try {
			ptmt = con.prepareStatement(sql);
			
			ptmt.setString(1,dto.getTitle());
			ptmt.setString(2,dto.getPname());
			ptmt.setString(3,dto.getPw());
			ptmt.setString(4,dto.getContent());
			ptmt.setString(5,dto.getUpfile());
			
			ptmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
	}
	
	public int modify(BoardDTO dto){
		int res = 0;
		sql = "update board set title = ?, pname = ?, content = ? where id = ? and pw = ?";
		
		
		try {
			ptmt = con.prepareStatement(sql);
			ptmt.setString(1,dto.getTitle());
			ptmt.setString(2,dto.getPname());
			ptmt.setString(3,dto.getContent());
			ptmt.setInt(4,dto.getId());
			ptmt.setString(5,dto.getPw());
			
			res = ptmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return res;
	}
	
	public int delete(BoardDTO dto){
		int res = 0;
		sql = "delete from board where id = ? and pw = ?";
		
		
		try {
			ptmt = con.prepareStatement(sql);
			ptmt.setInt(1,dto.getId());
			ptmt.setString(2,dto.getPw());
			
			res = ptmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return res;
	}
	
	public void close() {
		if (rs!=null) {try { rs.close(); } catch (SQLException e) {e.printStackTrace();}}
		if (ptmt!=null) { try { ptmt.close(); } catch (SQLException e) {e.printStackTrace();}}
		if (con!=null) { try { con.close(); } catch (SQLException e) {e.printStackTrace();}}
	}
	
}
