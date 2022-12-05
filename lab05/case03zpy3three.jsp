<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, java.lang.*" %>
<html>
  <head>
    <title>lab5</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
  </head>

 <body>
    <%
        String s=request.getParameter("number");
        
    %>
    <div class = "container">
        <img src="./OIP-C.jpg" alt="asd" style="height: <%=s%> px; width: <%= s%> px" >
    </div>
 </body>
</html>