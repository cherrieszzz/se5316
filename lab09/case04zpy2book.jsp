<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="link.txt" %>
<html>
<body><FONT Size=5>
	<p>选择购要买的图书：
	<form action =""method=post name =form>
		<input type ="checkbox" name="choice"value="Java教程32.5圆">Java教程32.5圆
		<input type ="checkbox" name="choice"value="数据库原理23圆">数据库原理23圆
		<input type ="checkbox" name="choice"value="操作系统35圆">操作系统35圆
		<input type ="checkbox" name="choice"value="C语言教程45.6圆">C语言教程45.6圆
		<input type ="submit" value ="确定"name="sumbit">
	</form>
	<% String book[]=request.getParameterValues("choice");
		if(book!=null){
			StringBuffer str =new StringBuffer();
			for(int k=0;k<book.length;k++){
				str.append(book[k]+"<br>");
			}
			session.setAttribute("book", str);//将书籍放入用户的session
	}
	%>
	</FONT>
</body>
</html>