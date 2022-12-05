<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, java.lang.*" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <title>结果页</title>
</head>
<body>
    <%
        String num1 = request.getParameter("num1");
        String num2 = request.getParameter("num2");
        String operator = request.getParameter("operator");
        if(num1 == null||num1.length() == 0){ 
            response.sendRedirect("case01zpy1input.jsp");
            return;
           }
           try{
            double a=Double.parseDouble(num1);
            double b=Double.parseDouble(num2);
            double r=0;
            if(operator.equals("+"))
             r=a+b;
            else if(operator.equals("-"))
             r=a-b;
            else if(operator.equals("*"))
             r=a*b;
            else if(operator.equals("/"))
             r=a/b;
            out.println("结果为" + r);
           }
           catch(Exception e){
            out. println("请输入数字字符");
           }
    %>
    <div class="container">
        <div class="d-flex justify-content-center">
            <div>
                <h3>实验3-1：request对象四则运算</h3>
             
            </div>
        </div>
    </div>
</body>
</html>