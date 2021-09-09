package border;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Beans.BorderMstBean;

/**
 * Servlet implementation class BorderContentInsert
 */
@WebServlet("/bordercontentinsert")
public class BorderContentInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private BorderMgrPool borderMgrPool = new BorderMgrPool();	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		ArrayList<BorderMstBean> borderMstBeans = borderMgrPool.getBorderMstList();	
		
		
		int border_code = Integer.parseInt(request.getParameter("border_code"));
		int border_seq = Integer.parseInt(request.getParameter("border_seq"));
		String border_title = borderMgrPool.getBorderTitle(border_code, border_seq);
		
		request.setAttribute("list", borderMstBeans);
		request.setAttribute("border_title", border_title);	
		request.setAttribute("border_code", border_code);
		request.setAttribute("border_seq", border_seq);
		request.getRequestDispatcher("/WEB-INF/view/border/border_insert.jsp").forward(request, response);
	}

}
