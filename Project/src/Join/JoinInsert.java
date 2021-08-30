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
 * Servlet implementation class JoinInsert
 */
@WebServlet("/joininsert")
public class JoinInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			req.getRequestDispatcher("/WEB-INF/view/index.jsp").forward(req, resp);
		}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		UserBean userBean = new UserBean();
		JoinMgrPool joinMgr = new JoinMgrPool();
	
		String user_id = request.getParameter("user_id");
		String user_pwd = request.getParameter("user_repwd");
		String user_name = request.getParameter("user_name");
		String user_year = request.getParameter("user_year");
		String user_month = request.getParameter("user_month");
		String user_day = request.getParameter("user_day");
		String user_gender = request.getParameter("user_gender");
		String user_email = request.getParameter("user_email");
		String user_first_phone = request.getParameter("user_first_phone");
		String user_middle_phone = request.getParameter("user_middle_phone");
		String user_last_phone = request.getParameter("user_last_phone");
		
		userBean.setUser_id(user_id);
		userBean.setUser_pwd(user_pwd);
		userBean.setUser_name(user_name);
		userBean.setUser_birthday(user_year + "-" + user_month + "-" + user_day);
		userBean.setUser_gender(user_gender);
		userBean.setUser_email(user_email);
		userBean.setUser_phone(user_first_phone + "-" + user_middle_phone + "-" + user_last_phone);
		
		joinMgr.joinInsert(userBean);
		
		request.getRequestDispatcher("/WEB-INF/view/index/index.jsp").forward(request, response);
		
	}

}
