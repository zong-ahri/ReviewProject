package reviewjsp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JoinIdCheck
 */
@WebServlet("/joinIdCheck?")
public class JoinIdCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String join_id = request.getParameter("join_id");
		
		request.setCharacterEncoding("UTF-8");		
		joinMgrPool joinMgr = new joinMgrPool();
		request.setAttribute("idstatus", joinMgr.idCheck(join_id));
		
		
		
	}
}
	
