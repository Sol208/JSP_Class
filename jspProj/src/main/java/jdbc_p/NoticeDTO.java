package jdbc_p;

import java.util.Date;

public class NoticeDTO {

	int no, view;
	String title;
	Date date;
	
	
	public NoticeDTO() {
	}

	public NoticeDTO(int no, int view, String title, Date date) {
		this.no = no;
		this.view = view;
		this.title = title;
		this.date = date;
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getView() {
		return view;
	}
	public void setView(int view) {
		this.view = view;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "NoticeDTO [no=" + no + ", review=" + view + ", title=" + title + ", date=" + date + "]";
	}
	
	
	
}
