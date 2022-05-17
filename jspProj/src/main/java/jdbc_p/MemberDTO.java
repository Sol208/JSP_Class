package jdbc_p;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

public class MemberDTO {
   String pid, pname, pw;
   int age;
   boolean marriage;
   Date reg_Date;
   
   public int getAge() {
      return age;
   }

   public void setAge(int age) {
      this.age = age;
   }

   public Date getReg_Date() {
      return reg_Date;
   }

   public void setReg_Date(Date reg_Date) {
      this.reg_Date = reg_Date;
   }

   public MemberDTO() {
      
   }
   
   public MemberDTO(String pid,  boolean marriage) {
      this.pid = pid;
      this.marriage = marriage;
   }

   public MemberDTO(String pid, String pname) {
      this.pid = pid;
      this.pname = pname;
      
   }
   
   public MemberDTO(String pid, String pname, String pw) {
      this.pid = pid;
      this.pname = pname;
      this.pw = pw;
      
   }
   
   public String getPw() {
      return pw;
   }
   
   public void setPw(String pw) {
      this.pw = pw;
   }
   
   public String getPname() {
      return pname;
   }
   
   public void setPname(String pname) {
      this.pname = pname;
   }
   
   public String getPid() {
      return pid;
   }

   public void setPid(String pid) {
      this.pid = pid;
   }

   public boolean isMarriage() {
      return marriage;
   }

   public void setMarriage(boolean marriage) {
      this.marriage = marriage;
   }
   
   public void setMarriage(int marriage) {
      this.marriage = (marriage == 1);
   }
   
   public void init(HttpServletRequest request) {
      this.pid = request.getParameter("pid");
      

      if(request.getParameter("marriage") != null) {
         this.marriage = request.getParameter("marriage").equals("true") ? true : false;
      }
   }
   
   public int getMarriageInt() {
      if(marriage) {
         return 1;
      }
      
      return 0;
   }
   
   @Override
   public String toString() {
      return "MemberDTO [pid=" + pid + ", pname=" + pname + ", pw=" + pw + ", age=" + age
            + ", marriage=" + marriage + ", reg_Date=" + reg_Date + "]";
   }
   
   
   
   
   
   
   
}