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
		
		// List에서 넘어오면서 받아온 Parameter를 통해 stuid에 학번을 담는다.
		int stuid = Integer.parseInt(request.getParameter("stuid"));
		// System.out.println("stuid >>> " + stuid);
		
		// DAO에서 detail메서드를 사용해 사용자가 원하는 학생의 학번을 전달한 뒤 학생정보를 받아온다.
		SchoolDTO data = new SchoolDAO().detail(stuid);
		
			int matScore = data.getMat();	// 받아온 학생의 수학 점수를 변수에 담는다.
			int korScore = data.getKor();	// 받아온 학생의 국어 점수를 변수에 담는다.
			
			data.setTotal(matScore+korScore);	// 만들긴 했는데 어디에 써야할지...
			data.setEvg((matScore+korScore)/2);	// 만들긴 했는데 어디에 써야할지...
			// System.out.println("evg >>> " + (matScore+korScore)/2);
			
			// 전공과목에 따라 학점을 다르게 주기위한 스위치 케이스
			switch (data.getMajor()) {
				case "국어국문학과": {	// 전공 과목은 국어, 일반 과목은 수학이 된다.
					String majorGrade = checkMajor(korScore);	// 전공 과목의 등급을 메서드를 통해 받는다.
					String generalGrade = checkgeneral(matScore);	// 일반과목의 등급을 메서드를 통해 받는다.
					data.setKorGrade(majorGrade);	// DTO에 전공등급 저장
					data.setMatGrade(generalGrade); // DTO에 일반등급 저장
					
					break;
				}
				case "컴퓨터공학과":{ // 전공 과목은 수학, 일반 과목은 국어가 된다.
					String majorGrade = checkMajor(matScore);	// 전공 과목의 등급을 메서드를 통해 받는다.
					String generalGrade = checkgeneral(korScore);	// 일반과목의 등급을 메서드를 통해 받는다.
					data.setMatGrade(majorGrade);	// DTO에 전공등급 저장
					data.setKorGrade(generalGrade);	// DTO에 일반등급 저장
					
					break;
				}
		}
		request.setAttribute("dto", data);
		request.setAttribute("mainURL", "Detail");
		 
//		System.out.println("SchoolDetail execute()실행" + data);
	}
	
	
	// 전공과목의 등급을 걸러내기 위한 메서드(파라미터로 전공과목의 점수를 받는다.)
	String checkMajor(int majorScore) {
		String res = "";
		if(majorScore >= 95 && majorScore <= 100) { // 점수가 95점 이상 100점 이하일 때
			res = "S"; // return값은 "S"
		} else if(majorScore >= 90 && majorScore <= 94) { // 점수가 90점 이상 94점 이하일 때
			res = "A"; // return값은 "A"
		} else if(majorScore >= 80 && majorScore <= 89) { // 점수가 80점 이상 89점 이하일 때
			res = "B"; // return값은 "B"
		} else if(majorScore >= 70 && majorScore <= 79) { // 점수가 70점 이상 79점 이하일 때
			res = "C"; // return값은 "C"
		} else if(majorScore >= 60 && majorScore <= 69) { // 점수가 60점 이상 69점 이하일 때
			res = "D"; // return값은 "D"
		} else if(majorScore < 60) { // 점수가 60점 미만일 때
			res = "F"; // return값은 "F"
		}
		return res; // if 문을 통해 정해진 등급 return(전공과목)
	}
	
	// 일반과목의 등급을 걸러내기 위한 메서드(파라미터로 일반과목의 점수를 받는다.)
	String checkgeneral(int generalScore) {
		String res = "";
		if(generalScore >= 90 && generalScore <= 100) {	// 점수가 90이상 100점 이하일 때
			res = "A"; // return값은 "A"
		} else if(generalScore >= 80 && generalScore <= 89) { // 점수가 80점 이상 89점 이하일 때
			res = "B"; // return값은 "B"
		} else if(generalScore >= 70 && generalScore <= 79){ // 점수가 70점 이상 79점 이하일 때
			res = "C"; // return값은 "C"
		} else if(generalScore >= 55 && generalScore <= 69){ // 점수가 55점 이상 69점 이하일 때
			res = "D"; // return값은 "D"
		} else if(generalScore < 55) {	// 점수가 55점 미만일 때 
			res = "F"; // return값은 "F"
		}
		return res; // if 문을 통해 정해진 등급 return(일반과목)
	}
	
}
