package Join;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Beans.UserBean;

/**
 * Servlet implementation class joinProc
 */
@WebServlet("/join")
public class join extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		UserBean sessionBean = (UserBean)session.getAttribute("userBean");
		
		
		String	user_id = "",
				user_pwd = "",
				user_repwd = "",
				user_name = "",
				user_year = "",
				user_month = "",
				user_day = "",
				user_gender = "",
				user_first_phone = "",
				user_middle_phone = "",
				user_last_phone = "",
				user_email = "";
		
		if(request.getParameter("user_id") != null){
			user_id = request.getParameter("user_id");
		}
		if(request.getParameter("user_pwd") != null){
			user_pwd = request.getParameter("user_pwd");
		}
		if(request.getParameter("user_repwd") != null){
			user_repwd = request.getParameter("user_repwd");
		}
		if(request.getParameter("user_name") != null){
			user_name = request.getParameter("user_name");
		}
		if(request.getParameter("user_year") != null){
			user_year = request.getParameter("user_year");
		}
		if(request.getParameter("user_month") != null){
			user_month = request.getParameter("user_month");
		}
		if(request.getParameter("user_gender") != null){
			user_day = request.getParameter("user_gender");
		}
		if(request.getParameter("user_first_phone") != null){
			user_day = request.getParameter("user_first_phone");
		}
		if(request.getParameter("user_middle_phone") != null){
			user_day = request.getParameter("user_middle_phone");
		}
		if(request.getParameter("user_last_phone") != null){
			user_day = request.getParameter("user_last_phone");
		}
		if(request.getParameter("user_email") != null){
			user_day = request.getParameter("user_email");
		}
				
		request.setAttribute("user_id", user_id);
		request.setAttribute("user_pwd", user_repwd);
		request.setAttribute("user_name", user_name);
		request.setAttribute("user_year", user_year);
		request.setAttribute("user_month", user_month);
		request.setAttribute("user_day", user_day);
		request.setAttribute("user_gender", user_gender);
		request.setAttribute("user_email", user_email);
		request.setAttribute("user_first_phone", user_first_phone);
		request.setAttribute("user_middel_phone", user_middle_phone);
		request.setAttribute("user_last_phone", user_last_phone);
		request.setAttribute("user_day", user_day);
		request.setAttribute("user_day", user_day);
		

		if(sessionBean == null) {
			request.getRequestDispatcher("/WEB-INF/view/join/join.jsp").forward(request, response);			
		}else {
			request.setAttribute("name", sessionBean.getUser_name());
			request.getRequestDispatcher("/WEB-INF/view/index/index.jsp").forward(request, response);
			
		}

	}

}
