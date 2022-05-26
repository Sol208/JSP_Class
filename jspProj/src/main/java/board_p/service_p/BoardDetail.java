package board_p.service_p;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board_p.BoardService;
import board_p.model_p.BoardDAO;

public class BoardDetail implements BoardService{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		BoardDAO dao = new BoardDAO();
		
		dao.addCount(id);
		Object data = dao.detail(id);
		
		request.setAttribute("dto", data);
		
		request.setAttribute("mainUrl", "Detail");

		System.out.println("BoardDetail execute()실행" + data);
		
	}
	
}
