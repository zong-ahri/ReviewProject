package border;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Beans.BorderMstBean;

/**
 * Servlet implementation class BorderNameDelete
 */
@WebServlet("/bordernamedelete")
public class BorderNameDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		BorderMstBean borderMstBean = new BorderMstBean();
		BorderMgrPool NameDelete = new BorderMgrPool();
		
		int border_code = Integer.parseInt(request.getParameter("border_code"));
		
		borderMstBean.setBorder_code(border_code);
		NameDelete.BorderNamedelete(borderMstBean);
		
		
		
	}

}
