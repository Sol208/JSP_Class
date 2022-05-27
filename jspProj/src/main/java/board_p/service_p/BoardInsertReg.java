package board_p.service_p;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import board_p.BoardService;
import board_p.model_p.BoardDAO;
import board_p.model_p.BoardDTO;

public class BoardInsertReg implements BoardService{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
//		Object data = new BoardDAO().list();

		String path = request.getRealPath("bbb_fff");
		path = "C:\\jsp_work\\jspProj\\src\\main\\webapp\\bbb_fff";
		
		try {
			MultipartRequest mm = new MultipartRequest(
					request,
					path,
					10*1024*1024,
					"UTF-8",
					new DefaultFileRenamePolicy()
					);
			
			BoardDTO dto = new BoardDTO();
			dto.setTitle(mm.getParameter("title"));
			dto.setPname(mm.getParameter("pname"));
			dto.setPw(mm.getParameter("pw"));
			dto.setContent(mm.getParameter("content"));
			dto.setUpfile(mm.getFilesystemName("upfile"));
			
			new BoardDAO().insert(dto);
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.setAttribute("msg", "작성되었습니다.");
		request.setAttribute("goUrl", "List");
		request.setAttribute("mainUrl", "alert");
		

		System.out.println("BoardInsertReg execute()실행");
		
	}
	
}
