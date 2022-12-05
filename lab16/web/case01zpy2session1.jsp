<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="name2" class="ch07.case01Circle" scope="session"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
out.print("半径："+name2.getRadius()+"<br>");
%>
圆周长：<%=name2.girth()%><br>
圆面积：<%=name2.Area()%><br>
<a href="case01zpy2session2.jsp">case01zpy2session2.jsp</a>
</body>
</html>