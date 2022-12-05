<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body bgcolor=pink><font size=5><center>
<%int count=((Integer)session.getAttribute("count")).intValue();
int num=((Integer)session.getAttribute("save")).intValue();%>
<br>恭喜你，猜对了！！！
<br>您共猜了<%=count %>次
<br>这个数字是<%=num %></center>
</font>
</body>
</html>