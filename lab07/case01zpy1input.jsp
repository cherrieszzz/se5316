<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, java.lang.*" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <title>输入页面</title>
</head>
<body>
    <div class="container">
        <div class="d-flex justify-content-center">
            <div>
                <h3>实验3-1：request对象四则运算</h3>
                <form action="case01zpy2result.jsp">
                    <div class="form-group">
                        <label for="num1">请输入第一个数</label>
                        <input type="text" name="num1"  class="form-control">
                    </div>
                 
                   
                    <div class="form-group">
                        <label for="num2">请输入第二个数</label>
                        <input type="text" name="num2"  class="form-control">
                    </div>
                    
                    <div class="form-group">
                        <label for="operator">运算符号</label>
                        <select name="operator"  class="form-control dropdown-toggle">     <!--下拉列表框-->
                            <option value="+">+</option>
                            <option value="-">-</option>
                            <option value="*">x</option>
                            <option value="/">/</option>
                        </select>
                    </div>
                
                 
                    <input type="submit" name="计算" class="btn btn-primary">
                </form>
            </div>
        </div>
    </div>
</body>
</html>