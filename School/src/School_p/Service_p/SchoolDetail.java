package School_p.Service_p;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import School_p.SchoolService;
import School_p.Model_p.SchoolDAO;
import School_p.Model_p.SchoolDTO;

public class SchoolDetail implements SchoolService {
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		int stuid = Integer.parseInt(request.getParameter("stuid"));
		System.out.println("stuid >>> " + stuid);
		
		
		SchoolDTO data = new SchoolDAO().detail(stuid);
		
			int matScore = data.getMat();
			int korScore = data.getKor();
			
			data.setTotal(matScore+korScore);
			data.setEvg((matScore+korScore)/2);
			// System.out.println("evg >>> " + (matScore+korScore)/2);
			
			// 전공과목에 따라 학점을 다르게 주기위한 스위치 케이스
			switch (data.getMajor()) {
				case "국어국문학과": {
					String majorGrade = checkMajor(korScore);
					String generalGrade = checkgeneral(matScore);
					data.setKorGrade(majorGrade);
					data.setMatGrade(generalGrade);
					
					break;
				}
				case "컴퓨터공학과":{
					String majorGrade = checkMajor(matScore);
					String generalGrade = checkgeneral(korScore);
					data.setMatGrade(majorGrade);
					data.setKorGrade(generalGrade);
					
					break;
				}
		}
		request.setAttribute("dto", data);
		request.setAttribute("mainURL", "Detail");
		 
//		System.out.println("SchoolDetail execute()실행" + data);
	}
	
	
	String checkMajor(int majorScore) {
		String res = "";
		if(majorScore >= 95 && majorScore <= 100) {
			res = "S";
		} else if(majorScore >= 90 && majorScore <= 94) {
			res = "A";
		} else if(majorScore >= 80 && majorScore <= 89) {
			res = "B";
		} else if(majorScore >= 70 && majorScore <= 79) {
			res = "C";
		} else if(majorScore >= 60 && majorScore <= 69) {
			res = "D";
		} else if(majorScore <= 59) {
			res = "F";
		}
		return res;
	}
	String checkgeneral(int generalScore) {
		String res = "";
		if(generalScore >= 90 && generalScore <= 100) {
			res = "A";
		} else if(generalScore >= 80 && generalScore <= 89) {
			res = "B";
		} else if(generalScore >= 70 && generalScore <= 79){
			res = "C";
		} else if(generalScore >= 55 && generalScore <= 69){
			res = "D";
		} else if(generalScore < 55) {
			res = "F";
		}
		return res;
	}
	
}
