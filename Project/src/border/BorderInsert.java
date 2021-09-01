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
		
		String content_submit_flag = request.getParameter("content_submit_flag");
		System.out.println(content_submit_flag);
		
		if(content_submit_flag != "true") {
				
			BorderDtlBean borderDtlbean = new BorderDtlBean();
			BorderMgrPool borderMgr = new BorderMgrPool();
			
			
			
			int border_code = Integer.parseInt(request.getParameter("border_code"));
			int border_seq = Integer.parseInt(request.getParameter("border_seq"));
			String border_title = request.getParameter("border_title");
			
			border_seq++;
				
			borderDtlbean.setBorder_code(border_code);
			borderDtlbean.setBorder_seq(border_seq);
			borderDtlbean.setBorder_title(border_title);
			
			borderMgr.BorderInsert(borderDtlbean);
		
		}
	}

}
