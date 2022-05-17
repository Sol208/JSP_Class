package bas;

import java.io.IOException;

import javax.servlet.jsp.JspWriter;

public class OutGoGo {
	JspWriter jw;

	public OutGoGo(JspWriter jw) {
		super();
		this.jw = jw;
	}
	
	public void wrwr() {
		try {
			jw.println("가나다라마바사<br>");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
