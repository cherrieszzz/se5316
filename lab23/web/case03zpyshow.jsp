<%--
  Created by IntelliJ IDEA.
  User: green
  Date: 2022/11/15
  Time: 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>case03zpyshow</title>
    <link rel="stylesheet" href="./style.css">
</head>
<body>
<%
    String trape_area = request.getAttribute("trape_area").toString();
    String tar_area = request.getAttribute("tar_area").toString();
%>

    <div class="container">
        <h1>Lab23 MVC模式求梯形和三角形面积</h1>
        <p>梯形面积为<%= trape_area%></p>
        <p>三角形面积为<%= tar_area%></p>
    </div>

</body>
</html>
