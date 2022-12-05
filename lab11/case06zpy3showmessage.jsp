<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%!public String handleStr(String s){
	try{
		byte[]bb=s.getBytes("iso-8859-1");
		s=new String(bb);
	}catch(Exception e){}
	return s;
}
%>
<html>
<body >
<% 	Vector v=(Vector)application.getAttribute("Mess");
	for(int i=0;i<v.size();i++){
		String message=(String)v.elementAt(i);
		String []a=message.split("#");
		out.print("留言人："+handleStr(a[0]+"<BR>"));
		out.print("标题："+handleStr(a[1])+"<br>");
		out.print("留言内容：<br>"+handleStr(a[2]));
		out.print("<br>-------------------<br>");
	}
%>
</body></html>