package border;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BorderFilter
 */
@WebServlet("/borderfilter")
public class BorderFilter extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String filter = request.getParameter("filter");
		
		BorderMgrPool borderfilter = new BorderMgrPool();
		//request.setAttribute("borderFilter", borderfilter.getBorderList(filter));
		
		response.sendRedirect("border_table");
		
	}

}
