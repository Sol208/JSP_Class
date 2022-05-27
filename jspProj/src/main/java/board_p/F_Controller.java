package board_p;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class F_Controller
 */
@WebServlet("/board/*")
public class F_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	ArrayList<String> nonClass;
	
    public F_Controller() {
        super();
        nonClass = new ArrayList<String>();
        nonClass.add("InsertForm");
        nonClass.add("DeleteForm");
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				// out역할을 해줌
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		

		String serviceStr = request.getRequestURI().substring(
				(request.getContextPath()+"/board/").length()
				);
		
		if(nonClass.contains(serviceStr)) {
			request.setAttribute("mainUrl", serviceStr);
		}else {
			try {
				BoardService service =
						(BoardService)Class.forName("board_p.service_p.Board"+serviceStr).newInstance();
				
				service.execute(request, response);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		//System.out.println("doGet() 왔다감");
		RequestDispatcher dispatcher = request.getRequestDispatcher("/bbb_view/template.jsp");
		
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
