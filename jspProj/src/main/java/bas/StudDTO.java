package bas;

import java.util.Arrays;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;

public class StudDTO {

	String pname;
	int[] jum;
	int tot, avg;
	
	public StudDTO(String pname, String... jum) {
		this.pname = pname;
		this.jum = new int[jum.length];
		for(int i = 0; i<jum.length; i++) {
			this.jum[i] = 0;
			if(jum[i]!=null && !jum[i].trim().equals("")) {
				this.jum[i] =Integer.parseInt(jum[i]);
			}
		}
		calc();
	}
	
	void calc() {
		tot = 0;
		for(int i : jum) {
			tot += i;
		}
		avg = tot/ jum.length;
	}
	

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public int[] getJum() {
		return jum;
	}

	public void setJum(int[] jum) {
		this.jum = jum;
	}

	@Override
	public String toString() {
		return "StudDTO [pname=" + pname + ", jum=" + Arrays.toString(jum) + ", tot=" + tot + ", avg=" + avg + "]";
	}

	
	
	public String getDiv() {
		String res = "<div class='st'><div>"+ pname + "</div>";
		
		for(int i : jum) {
			res += "<div>"+ i + "</div>";
		}
		
		res += "<div>"+ tot + "</div><div>"+ avg + "</div></div>";
		                                                                                                       
		return res;
	}
	
	
	
	
	
	
	
	
	
	
}
