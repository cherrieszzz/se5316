<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Random" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="name1" class="ch07.case01Circle" scope="session"></jsp:useBean>
<%
 Random r = new Random();
int r1=r.nextInt(100);
name1.setRadius(r1);
out.print("半径："+r1+"<br>");
%>
圆周长：<%=name1.girth()%><br>
圆面积：<%=name1.Area()%><br>
</body>
</html>