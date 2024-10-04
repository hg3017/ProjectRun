package register;


import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JDBConnect;


public class RegisterDAO extends JDBConnect { 
	
	public int insertMember(RegisterDTO dto) {
		
		
		int rs = 0;
		String sql = "insert into member(id,pass,name,grade,nickname,location,phone_number) values (?,?,?,?,?,?,?)";
		
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPass());
			psmt.setString(3, dto.getName());
			psmt.setInt(4, dto.getGrade());
			psmt.setString(5, dto.getNickname());
			psmt.setInt(6, dto.getLocation());
			psmt.setInt(7, dto.getPhone_number());
			
			rs = psmt.executeUpdate();		
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return rs;			
	}

}

	
//	int rs = 0;
//
//	String sql = "insert into member(id,pass,name,grade,nickname,location,phone_number) values (?,?,?,?,?,?,?)";
//	try {
//		psmt = con.prepareStatement(sql);
//		psmt.setString(1, dto.getId());
//		psmt.setString(2, dto.getPass());
//		psmt.setString(3, dto.getName());
//		dto.setGrade(1); // 테스트용 코드
//		psmt.setInt(4, dto.getGrade());
//		psmt.setString(5, dto.getNickname());
//		psmt.setString(6, dto.getLocation());
//		psmt.setInt(7, dto.getPhone_number());
//
//		rs = psmt.executeUpdate();
//	} catch (SQLException e) {
//		// TODO Auto-generated catch block
//		e.printStackTrace();
//	} 
//	// close() 빼기
//	// finally { close(); }
//
//	return rs;