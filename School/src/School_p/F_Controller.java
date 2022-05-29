package School_p;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// WebServlet에서 School로 시작하는 모든 경로를 Controller로 전달(?) 받음
@WebServlet("/School/*")
public class F_Controller extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String serviceStr = req.getRequestURI().substring(
				(req.getContextPath() + "/School/").length());
		System.out.println("serviceStr >> " + serviceStr);
		try {
			SchoolService serv = 
					// SchoolService에 Request로 받아온 URI의 (serviceStr)Service를 객체화 한다.
					(SchoolService)Class.forName("School_p.Service_p.School" + serviceStr).newInstance();
			// 객체화 된 Service클래스의 execute 실행
			serv.execute(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = req.getRequestDispatcher("/school/template.jsp");
		
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
	
}
