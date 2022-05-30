<%@page import="java.net.URLEncoder"%>
<%@page import="java.io.FileInputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	// 한글로 파일을 저장하기 위한 인코딩
	String fName = URLEncoder.encode("한글한글.docx","utf-8");

	response.setHeader("Content-Disposition", "attachment; filename="+fName);

	out.clear();
	out = pageContext.pushBody();
	
	String path = request.getRealPath("bbb_fff");
	path = "C:\\jsp_work\\jspProj\\src\\main\\webapp\\bbb_fff";
	path += "\\asdf.docx";
	
	FileInputStream fis = new FileInputStream(path);
	ServletOutputStream sos = response.getOutputStream();
	
	byte[] buf = new byte[1024];
	
	while(fis.available()>0){
		int len = fis.read(buf);
		sos.write(buf,0,len);
	}
	
	sos.close();
	fis.close();
	
%>