package board_p.service_p;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import board_p.BoardService;
import board_p.model_p.BoardDAO;
import board_p.model_p.BoardDTO;

public class BoardDeleteReg implements BoardService{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
			
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		BoardDTO dto = new BoardDTO();
		
		int id = Integer.parseInt(request.getParameter("id"));
		dto.setId(id);
		dto.setPw(request.getParameter("pw"));
		
		BoardDTO delDTO = new BoardDAO().detail(id);
		
		int res = new BoardDAO().delete(dto);
		
		String msg = "삭제실패", goUrl = "DeleteForm?id="+dto.getId();
		
		if(res>0) {
			msg = "삭제성공";
			goUrl = "List";
			System.out.println(msg + ":" + delDTO.getUpfile());
			if(delDTO.getUpfile() != null) {
				String path = request.getRealPath("bbb_fff");
				path = "C:\\jsp_work\\jspProj\\src\\main\\webapp\\bbb_fff";
				
				new File(path+"\\"+delDTO.getUpfile()).delete();
			}
		}
		
		request.setAttribute("msg", msg);
		request.setAttribute("goUrl", goUrl);
		request.setAttribute("mainUrl", "alert");

		System.out.println("BoardModifyReg execute()실행");
		
	}
	
}
