package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dto.BoardMemberDTO;
import oracle.jdbc.pool.OracleDataSource;

public class BoardMemberDAO {
	private static BoardMemberDAO intance;
	private OracleDataSource ods;
	
	private BoardMemberDAO() {
		try {
			ods = new OracleDataSource();
			ods.setURL("jdbc:oracle:thin:@nam3324.synology.me:32800/xe");
            ods.setUser("c##quest");
            ods.setPassword("tiger");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	 
	public static BoardMemberDAO getInstance() {
		if(intance == null)
			intance = new BoardMemberDAO();
		return intance;
	}

	public ArrayList<BoardMemberDTO> selectAllMember() {
		//SQL작성 -> Connector받기 -> PreparedStatement 생성 
		//		-> 결과처리 -> 결과값 리턴
		ArrayList<BoardMemberDTO> list = new ArrayList<BoardMemberDTO>();
		String sql = "select * from board_member";
		try(Connection conn = ods.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);) {
			try (ResultSet rs = pstmt.executeQuery();){
				while (rs.next()) {
					BoardMemberDTO dto = new BoardMemberDTO();
					dto.setId(rs.getString("id"));
					dto.setPassword(rs.getString("password"));
					dto.setNickName(rs.getString("nickname"));
					dto.setUserName(rs.getString("username"));
					
					list.add(dto);
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
}
