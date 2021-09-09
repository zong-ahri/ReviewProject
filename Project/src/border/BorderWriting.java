package border;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import Beans.ContentBean;
import Beans.UserBean;

/**
 * Servlet implementation class BorderWriting
 */
@WebServlet("/borderwriting")
public class BorderWriting extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		int border_code = Integer.parseInt(request.getParameter("border_code"));
		int border_seq = Integer.parseInt(request.getParameter("border_seq"));
		String border_name = request.getParameter("user_name");
		String border_content = request.getParameter("border_content");
		
		
		
		BorderMgrPool borderwriter = new BorderMgrPool();
		ContentBean contentbean = new ContentBean();
		
		contentbean.setBorder_code(border_code);
		contentbean.setBorder_seq(border_seq);
		contentbean.setBorder_name(border_name);
		contentbean.setBorder_content(border_content);
		
		borderwriter.borderWritingInsert(contentbean);
		
		response.sendRedirect("/bordertable");
		
	}

}
