<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="link.txt" %>
<html>
<body><FONT Size=5>
	<p>输入姓名：
	<form action =""method=post name =form>
		<input type ="text" name="name">
		<input type ="submit" value ="确定"name="sumbit">
	
	</form>
	<%request.setCharacterEncoding("UTF-8"); 
	String name=request.getParameter("name");
		if(name==null)
			name="";
		else
			{session.setAttribute("name", name);}
	%>		
</FONT>	
</body>
</html>