package login;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JDBConnect;

public class LoginDAO extends JDBConnect {
		
	public LoginDTO selectView(String id) {
		LoginDTO member = null;
		String sql = "select id, pass from member where id = ?";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();		
			if (rs.next()) {
				String pass = rs.getString("pass");
				member = new LoginDTO(id, pass);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return member;			
	}
	
	
}
