package School_p.Model_p;

public class SchoolDTO {
	
	private String pname;	// 학생이름
	private String major;	// 전공
	private String subject; // 전공과목
	private int stuid;	// 학번
	private int mat;	// 수학점수
	private int kor;	// 국어점수
	private int total;	// 총합계
	private int evg;	// 평균
	private String korGrade; // 국어 학점
	private String matGrade; // 수학 학점

	
	public SchoolDTO() {
		
	}
	
//	// List를 받아오기 위한 Constructor
//	public SchoolDTO(String pname, String major, int stuid, int mat, int kor) {
//		this.pname = pname;
//		this.major = major;
//		this.stuid = stuid;
//		this.mat = mat;
//		this.kor = kor;
//	}
	
	
	
	public String getPname() {
		return pname;
	}
	public String getKorGrade() {
		return korGrade;
	}

	public void setKorGrade(String korGrade) {
		this.korGrade = korGrade;
	}

	public String getMatGrade() {
		return matGrade;
	}

	public void setMatGrade(String matGrade) {
		this.matGrade = matGrade;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public int getStuid() {
		return stuid;
	}
	public void setStuid(int stuid) {
		this.stuid = stuid;
	}
	public int getMat() {
		return mat;
	}
	public void setMat(int mat) {
		this.mat = mat;
	}
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		this.kor = kor;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getEvg() {
		return evg;
	}
	public void setEvg(int evg) {
		this.evg = evg;
	}

	@Override
	public String toString() {
		return "SchoolDTO [pname=" + pname + ", major=" + major + ", subject=" + subject + ", stuid=" + stuid + ", mat="
				+ mat + ", kor=" + kor + ", total=" + total + ", evg=" + evg + ", korGrade=" + korGrade + ", matGrade="
				+ matGrade + "]";
	}
	
	

}
