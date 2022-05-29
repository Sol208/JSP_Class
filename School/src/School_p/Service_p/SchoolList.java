package School_p.Service_p;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import School_p.SchoolService;
import School_p.Model_p.SchoolDAO;
import School_p.Model_p.SchoolDTO;

public class SchoolList implements SchoolService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// DAO를 통해서 DB를 끌어와 Attribute로 전달 해야함
		ArrayList<SchoolDTO> data = new SchoolDAO().list();
		
		request.setAttribute("listData", data);
		request.setAttribute("mainURL", "List");
		 
//		System.out.println("SchoolList execute()실행" + data);
	}
	
	
}
