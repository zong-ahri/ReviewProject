package Index;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Beans.BorderMstBean;
import border.BorderMgrPool;



/**
 * Servlet implementation class index
 */
@WebServlet("/index")
public class index extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private BorderMgrPool borderMgrPool = new BorderMgrPool();
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		ArrayList<BorderMstBean> borderMstBeans = borderMgrPool.getBorderMstList();	
		
		request.setAttribute("list", borderMstBeans);
		
		request.getRequestDispatcher("/WEB-INF/view/index/index.jsp").include(request, response);
		
    /* 디스패처의 역활은 서블릿과 jsp한테 리케스트 리스폰스를 받을수있게 값을 넘겨준다 */
	
	}

}
