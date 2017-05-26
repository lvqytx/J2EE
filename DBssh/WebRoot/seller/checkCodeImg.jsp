<%@ page language="java"  contentType="image/jpeg" 
import="team.j2ee.util.RandImgCreater"  
pageEncoding="UTF-8"%>
<%    
	response.setHeader("Pragma", "No-cache");
	response.setHeader("Cache-Control", "no-cache");
	response.setDateHeader("Expires", 0);
	RandImgCreater rc = new RandImgCreater(response);
	String rand = rc.createRandImage();
	session.setAttribute("rand", rand);  
	out.clear();
	out = pageContext.pushBody();
%>
