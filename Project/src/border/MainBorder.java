package border;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Beans.MainBorderBean;

/**
 * Servlet implementation class MainBorder
 */
@WebServlet("/MainBorder")
public class MainBorder extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	private BorderMgrPool borderMgrPool = new BorderMgrPool();
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		ArrayList<MainBorderBean> mainborderBeans = borderMgrPool.getMainBorderList();
		
		request.setAttribute("mainlist", mainborderBeans);
	
	}

}
