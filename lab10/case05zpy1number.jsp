<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body bgcolor=#0085FF><font size=5><center>
<p>系统将会随机产生一个数，请猜猜！
<%
	int number=(int)(Math.random()*10)+1;
	session.setAttribute("count", new Integer(0));
	session.setAttribute("save", new Integer(number));
%><br>输入猜想：
<form action="case05zpy4result.jsp"method="post"name=form>
	<input type="text"name="guess">
	<input type="submit"value="送出"name="submit">
</form>
</center>
</font>
</body>
</html>