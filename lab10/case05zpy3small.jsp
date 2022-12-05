<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body bgcolor=#717171><font size=5><center>
<%Integer integer=(Integer)session.getAttribute("guess"); %>
<p>
<%=integer%>数猜小了，请再猜：
<form action="case05zpy4result.jsp"method="post"name=form>
	<input type="text"name="guess">
	<input type="submit"value="送出"name="submit">
</form></center>
</font>
</body>
</html>