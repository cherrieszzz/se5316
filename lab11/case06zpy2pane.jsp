<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<html>
<body>
<%!Vector v=new Vector();
	int i=0;
	ServletContext application;
	synchronized void leaveWord(String s){
		application=getServletContext();
		i++;
		v.add("No."+i+":"+ s);
		application.setAttribute("Mess", v);
	}
%>
<%String name=request.getParameter("name");
	String title=request.getParameter("title");
	String messages=request.getParameter("messages");
	if(name==null)name="guest"+(int)(Math.random()+10000);
	if(title==null)title="无标题";
	String s=name+"#"+title+"#"+messages;
	leaveWord(s);
	out.print("你的信息已提交");
%>
<a href="case06zpy1input.jsp">返回留言页面</a>
</body>
</html>