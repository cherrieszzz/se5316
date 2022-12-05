<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="name4" class="haut.hati.lxb.Case01Circle" scope="application"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
name4.setRadius(124);
out.print("修改半径："+name4.getRadius()+"<br>");
out.print("半径："+name4.getRadius()+"<br>");
%>
圆周长：<%=name4.girth()%><br>
圆面积：<%=name4.Area()%><br>
</body>
</html>