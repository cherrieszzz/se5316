<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <jsp:useBean id="name3" class="haut.hati.lxb.Case01Circle" scope="session"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
name3.setRadius(24);
out.print("修改半径："+name3.getRadius()+"<br>");
out.print("半径："+name3.getRadius()+"<br>");
%>
圆周长：<%=name3.girth()%><br>
圆面积：<%=name3.Area()%><br>
<a href="case01lxb3app.jsp">case01lxb3app.jsp</a>
</body>
</html>