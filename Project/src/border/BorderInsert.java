package border;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Beans.BorderDtlBean;
import Beans.BorderMstBean;
import Beans.UserBean;
import Join.JoinMgrPool;

/**
 * Servlet implementation class BorderInsert
 */
@WebServlet("/borderinsert")
public class BorderInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String title_submit_flag = request.getParameter("title_submit_flag") == null ? "false" : request.getParameter("title_submit_flag");
		String content_submit_flag = request.getParameter("content_submit_flag") == null ? "false" : request.getParameter("content_submit_flag");
		
		
		
		if(title_submit_flag.equals("true")) {
			BorderMstBean borderMstbean = new BorderMstBean();
			BorderMgrPool borderMgr = new BorderMgrPool();
			
			String border_name = request.getParameter("border_name");
			
			borderMstbean.setBorder_name(border_name);
			
			borderMgr.BorderTitleInsert(borderMstbean);
			
			response.sendRedirect("/bordertable");
		}
		
		if(content_submit_flag.equals("true")) {
			BorderDtlBean borderDtlbean = new BorderDtlBean();
			BorderMgrPool borderMgr = new BorderMgrPool();
			
			int border_code = Integer.parseInt(request.getParameter("border_code"));
			String border_title = request.getParameter("border_title");
				
			borderDtlbean.setBorder_code(border_code);
			borderDtlbean.setBorder_title(border_title);
			
			borderMgr.BorderContentInsert(borderDtlbean);
			
			response.sendRedirect("/bordertable");
		}
		
	}

}
