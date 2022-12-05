<%@ page contentType="text/html;charset=gb2312" language="java" %>
<html>
<head>
</head>
<body>
如果学号是偶数的话，转到这里
<%
    String name = request.getParameter("name");
    String id = request.getParameter("id");
%>
用户输入的姓名是：<%= name%>
用户输入的学号是：<%= id%>


</body>
</html>
