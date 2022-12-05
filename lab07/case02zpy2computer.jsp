<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, java.lang.*" %>
<html>
<head>
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
</head>
<body>
    <%
        String string_num = request.getParameter("string_num");
    %>
    <div class="container">
        <h3>实验3-2：request对象求串长</h3>
        <p> 该字符串的串长为<%= string_num.length()%></p>
    </div>
  
</body>
</html>