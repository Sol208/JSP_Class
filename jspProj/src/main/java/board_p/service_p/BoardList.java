package board_p.service_p;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board_p.BoardService;
import board_p.model_p.BoardDAO;

public class BoardList implements BoardService{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		int page = (int)request.getAttribute("nowPage");
		
		int limit = 3; // 한 페이지에 보여줄 게시물 수
		int pageLimit = 4; // 페이지 번호 갯수

		BoardDAO dao = new BoardDAO();
		
		int total = dao.totalCnt();

		int pageTotal = total/limit;
		
		if(total%limit > 0) {
			pageTotal++;
		}
		
		int start = (page-1) * limit + 1;
		int pageStart = (page-1) / pageLimit * pageLimit+1;
		int pageEnd = (pageStart+pageLimit)-1;
		
		if(pageEnd>pageTotal) {
			pageEnd = pageTotal;
		}
		
		Object data = new BoardDAO().list(start, limit);
		
		request.setAttribute("mainData", data);
		request.setAttribute("mainUrl", "List");
		
		request.setAttribute("start", start);
		request.setAttribute("pageTotal", pageTotal);
		request.setAttribute("pageStart", pageStart);
		request.setAttribute("pageEnd", pageEnd);
		System.out.println("BoardList execute()실행" + data + "\n" + total + "\n" + page);
		
	}
	
}
