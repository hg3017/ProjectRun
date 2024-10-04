package login;

import java.util.List;

public class LoginServiceImpl implements LoginService {

	
	LoginDAO dao;
	

	public LoginServiceImpl() {
		this.dao = new LoginDAO();
	}

	
	@Override
	public LoginDTO selectView(String id) {
		
		return dao.selectView(id);
	}
	
}
