<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String name1="吕晓博";
String width1="186";
%>
<jsp:useBean id="boy1" class="haut.hati.lxb.Case02Student" scope="request"></jsp:useBean>
<jsp:setProperty property="number" name="boy1" value="202041030124"/>
<jsp:setProperty property="name" name="boy1" value="<%=name1%>"/>
<jsp:setProperty property="width" name="boy1" value="<%=width1%>"/>
<jsp:getProperty property="number" name="boy1"/><br>
<jsp:getProperty property="name" name="boy1"/><br>
<jsp:getProperty property="width" name="boy1"/><br>
<hr>
<a href="case02lxb2star.jsp">case02lxb2star.jsp</a>
</body>
</html>