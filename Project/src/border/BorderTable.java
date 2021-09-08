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
		
		int border_code = request.getParameter("border_code") == null ? 1 : Integer.parseInt(request.getParameter("border_code"));
		int border_seq = request.getParameter("border_seq") == null ? 1 : Integer.parseInt(request.getParameter("border_seq"));
		int page = request.getParameter("border_page") == null ? 1 : Integer.parseInt(request.getParameter("border_page"));
		int totalCount = 0;
		
		ArrayList<ContentBean> borderContentBeans = borderMgrPool.getContentBorderList(border_code, border_seq);	
		ArrayList<ContentBean> borderContent = new ArrayList<ContentBean>();
		totalCount = borderContentBeans.size();
		int startindex = page*10 - 10;
		int endindex = page*10 - 1 > totalCount ? totalCount : page*10;
		borderContent.clear();
		for(int i = startindex; i < endindex ; i++ ) {
			borderContent.add(borderContentBeans.get(i));
		}
		
		ArrayList<BorderMstBean> borderMstBeans = borderMgrPool.getBorderMstList();	
		
		

		int startpage = (page%10) == 0 ? (page/10) * 10 - 9 : (page/10) * 10 + 1;
		int totalpage = (totalCount%10) == 0 ? (totalCount/10) : (totalCount/10) + 1;
		int endpage = (startpage+9) <= totalpage ? startpage + 9 : totalpage;
		
		request.setAttribute("content", borderContent);
		request.setAttribute("list", borderMstBeans);
		request.setAttribute("page", page);
		request.setAttribute("startpage", startpage);
		request.setAttribute("endpage", endpage);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("contentlists", borderContentBeans);
		request.setAttribute("totalcount", totalCount);
		request.setAttribute("bordercode", border_code);
		request.setAttribute("borderseq", border_seq);
		request.getRequestDispatcher("/WEB-INF/view/border/border_table.jsp").include(request, response);
	}

}
