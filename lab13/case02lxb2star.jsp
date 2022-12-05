<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="boy2" class="haut.hati.lxb.Case02Student" scope="request"></jsp:useBean>
<form action="" method="post">
喜欢的明星的微博id<input type="text" name="number"><br>
喜欢的明星的姓名<input type="text" name="name"><br>
喜欢的明星的身高<input type="text" name="width"><br>
<input type="submit" name="提交">
</form>
<jsp:setProperty property="*" name="boy2" />
<jsp:setProperty property="name" name="boy2" param="name"/>
<jsp:setProperty property="number" name="boy2" param="number"/>
<jsp:setProperty property="name" name="boy2" param="width"/>
<jsp:getProperty property="number" name="boy2"/><br>
<jsp:getProperty property="name" name="boy2"/><br>
<jsp:getProperty property="width" name="boy2"/><br>
<hr>

</body>
</html>