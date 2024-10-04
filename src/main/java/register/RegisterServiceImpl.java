package register;

public class RegisterServiceImpl implements RegisterService {
	
	RegisterDAO dao;
	
	public RegisterServiceImpl() {
		this.dao = new RegisterDAO();
	}
	
	@Override
	public int insertMembership(RegisterDTO dto) {
		
		return dao.insertMember(dto);
	}	
	

}

//package login;
//
//import java.util.List;
//
//public class LoginServiceImpl implements LoginService {
//
//	
//	LoginDAO dao;
//	
//
//	public LoginServiceImpl() {
//		this.dao = new LoginDAO();
//	}
//
//	
//	@Override
//	public LoginDTO selectView(String id) {
//		
//		return dao.selectView(id);
//	}
//	
//}
