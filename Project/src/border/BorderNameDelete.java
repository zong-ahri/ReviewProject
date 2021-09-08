package border;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Beans.BorderDtlBean;
import Beans.BorderMstBean;

/**
 * Servlet implementation class BorderNameDelete
 */
@WebServlet("/borderdelete")
public class BorderNameDelete extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String title_flag = request.getParameter("title_btn_flag") == null ? "false" : request.getParameter("title_btn_flag");
		String content_flag = request.getParameter("content_btn_flag") == null ? "false" : request.getParameter("content_btn_flag");

		if(title_flag.equals("true")) {  
			BorderMstBean borderMstBean = new BorderMstBean();
			BorderMgrPool NameDelete = new BorderMgrPool();
			
			int border_code = Integer.parseInt(request.getParameter("border_code"));
			
			borderMstBean.setBorder_code(border_code);
			
			NameDelete.BorderNamedelete(borderMstBean);
			
			response.sendRedirect("/bordertable");
		}
		
		if(content_flag.equals("true")) {
			BorderDtlBean borderDtlBean = new BorderDtlBean();
			BorderMgrPool TitleDelete = new BorderMgrPool();
			
			int border_code = Integer.parseInt(request.getParameter("border_code"));
			int border_seq = Integer.parseInt(request.getParameter("border_seq"));
			
			borderDtlBean.setBorder_code(border_code);
			borderDtlBean.setBorder_seq(border_seq);
			
			TitleDelete.BorderTitledelete(borderDtlBean);
			
			response.sendRedirect("/bordertable");
		}
	}
}
