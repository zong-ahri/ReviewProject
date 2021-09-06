package border;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Beans.BorderMstBean;
import Beans.ContentBean;

/**
 * Servlet implementation class BorderTitle
 */
@WebServlet("/bordertable")
public class BorderTable extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private BorderMgrPool borderMgrPool = new BorderMgrPool();
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		

		ArrayList<BorderMstBean> borderMstBeans = borderMgrPool.getBorderMstList();	
		
		request.setAttribute("list", borderMstBeans);
		
		int border_code = request.getParameter("border_code") == null ? 1 : Integer.parseInt(request.getParameter("border_code"));
		int border_seq = request.getParameter("border_seq") == null ? 1 : Integer.parseInt(request.getParameter("border_seq"));
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));;
		int max_page = 0;
		int totalCount = 0;
		
		
		int startpage = (page%5) == 0 ? (page/5) * 5 - 4 : (page/5) * 5 + 1;
		int totalpage = (page%5) == 0 ? (page/5) + 1 : (page/5);
		int endpage = (startpage+4) <= totalpage ? startpage + 4 : totalpage;

		request.setAttribute("startpage", startpage);
		request.setAttribute("endpage", endpage);
				
		ArrayList<ContentBean> borderContentBeans = borderMgrPool.getContentBorderList(border_code, border_seq);	
		totalCount = borderContentBeans.size();
		max_page = (totalCount % 10) == 0 ? totalCount % 10 : totalCount % 10 + 1 ;
		request.setAttribute("contentlists", borderContentBeans);
		request.getRequestDispatcher("/WEB-INF/view/border/border_table.jsp").include(request, response);
	}

}
