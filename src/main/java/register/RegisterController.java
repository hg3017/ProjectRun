package register;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import login.LoginDAO;
import login.LoginDTO;
import login.LoginService;
import login.LoginServiceImpl;

@WebServlet("*.regi")
public class RegisterController extends HttpServlet {

	RegisterService service;

	public RegisterController() {
		service = new RegisterServiceImpl();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doProcess");
		String uri = request.getRequestURI();
		int lastSlash = uri.lastIndexOf("/");
		String action = uri.substring(lastSlash);
		System.out.println(action);
		HttpSession session = request.getSession();
		System.out.println("checkPoint-RegisterController-doProcess-1");
		
		if(action.equals("/RegisterProcess.regi")) {
			System.out.println("checkPoint-RegisterController-doProcess-2");
			// 1. 받을 값 확인
			RegisterDTO dto = new RegisterDTO();
			dto.setId(request.getParameter("id"));
			dto.setPass(request.getParameter("pass"));
			dto.setName(request.getParameter("name"));
			dto.setGrade(Integer.parseInt(request.getParameter("grade")));
			dto.setNickname(request.getParameter("nickname"));
			dto.setLocation(Integer.parseInt(request.getParameter("location")));
			dto.setPhone_number(Integer.parseInt(request.getParameter("phone_number")));
			
//			String id = request.getParameter("user_id");
//			String pw = request.getParameter("user_pw");
			
			// 2. service 요청
			RegisterDAO dao = new RegisterDAO();
			
			int rs = dao.insertMember(dto);
			
			System.out.println("checkPoint-RegisterController-doProcess-6");
			
			
			if(dto != null){
				
				if(rs == 1){
					System.out.println("checkPoint-RegisterController-doProcess-3");
					String ContextPath = request.getContextPath();
					
					System.out.println(ContextPath + "/src/main/JSP" );
					
					response.sendRedirect(ContextPath + "/JSP/Login/Login.jsp");
				} else {
					System.out.println("checkPoint-RegisterController-doProcess-4");
					request.setAttribute("LoginErrMsg", "로그인 오류");
					request.getRequestDispatcher("LoginForm.jsp").forward(request, response);
				}
			} else {
				System.out.println("checkPoint-RegisterController-doProcess-5");
				request.setAttribute("LoginErrMsg", "회원가입 오류");
				request.getRequestDispatcher("LoginForm.jsp").forward(request, response);
			}
		} else if(action.equals("/LoginForm.lo")) {
			response.sendRedirect("LoginForm.jsp");
		} else if(action.equals("/Logout.lo")) {
			session.invalidate();			
			response.sendRedirect("LoginForm.jsp");
		}
		
	}
}

/*


@WebServlet("*.lo")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	LoginService service;

	public LoginController() {
		service = new LoginServiceImpl();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doProcess");
		String uri = request.getRequestURI();
		int lastSlash = uri.lastIndexOf("/");
		String action = uri.substring(lastSlash);
		System.out.println(action);
		HttpSession session = request.getSession();
		System.out.println("checkPoint-LoingController-doProcess-1");
		
		if(action.equals("/LoginProcess.lo")) {
			System.out.println("checkPoint-LoingController-doProcess-2");
			// 1. 받을 값 확인
			String id = request.getParameter("user_id");
			String pw = request.getParameter("user_pw");
			System.out.println(id);
			System.out.println(pw);
			// 2. service 요청
			LoginDAO dao = new LoginDAO();
			LoginDTO dto = dao.selectView(id);
			
			System.out.println("checkPoint-LoingController-doProcess-6");
			System.out.println(dto.getPW());
			
			if(dto != null){
				
				if(pw.equals(dto.getPW())){
					System.out.println("checkPoint-LoingController-doProcess-3");
					session.setAttribute("UserId", id);
					
					response.sendRedirect("Main/Main.jsp");
				}else{
					System.out.println("checkPoint-LoingController-doProcess-4");
					request.setAttribute("LoginErrMsg", "로그인 오류");
					request.getRequestDispatcher("LoginForm.jsp").forward(request, response);
				}
			}else{
				System.out.println("checkPoint-LoingController-doProcess-5");
				request.setAttribute("LoginErrMsg", "로그인 오류");
				request.getRequestDispatcher("LoginForm.jsp").forward(request, response);
			}
			// 3. 어떻게 어디로 이동 할것인?
			
		}else if(action.equals("/LoginForm.lo")) {
			response.sendRedirect("LoginForm.jsp");
		}else if(action.equals("/Logout.lo")) {
			session.invalidate();			
			response.sendRedirect("LoginForm.jsp");
		}
	}

}
*/