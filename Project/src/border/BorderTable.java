package border;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.plaf.BorderUIResource;

import Beans.BorderMstBean;

/**
 * Servlet implementation class Border
 */
@WebServlet("/border_table")
public class BorderTable extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private BorderMgrPool borderMgrPool = new BorderMgrPool();

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		int border_code = 100;
		if(request.getParameter("border_code") != null) {
			border_code = Integer.parseInt(request.getParameter("border_code"));
		}
		ArrayList<BorderMstBean> borderMstBeans = borderMgrPool.getBorderMstList();	
		
		for(BorderMstBean borderMstBean : borderMstBeans) {
			if(borderMstBean.getBorder_code() == border_code) {
				request.setAttribute("border_mst_bean", borderMstBean);
			}
		}
		
		
		request.setAttribute("list", borderMstBeans);
		request.getRequestDispatcher("/WEB-INF/view/border/border_table.jsp").include(request, response);
	}

}
