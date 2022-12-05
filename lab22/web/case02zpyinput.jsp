<%--
  Created by IntelliJ IDEA.
  User: green
  Date: 2022/11/10
  Time: 21:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>input</title>
    <link type="text/css" rel="stylesheet" href="bootstrap.css">
    <link type="text/css" rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container-box">
      <h1>Lab22</h1>
      <form action="Case02zpyequation" method="post">
        <div class="form-floating mb-3">
            <input type="text" class="form-control" name="a">
            <label>系数a</label>
        </div>
          <div class="form-floating mb-3">
              <input type="text" class="form-control" name="b">
              <label>系数b</label>
          </div>
          <div class="form-floating mb-3">
              <input type="text" class="form-control" name="c">
              <label>常数项</label>
          </div>
          <input type="submit" class="btn btn-secondary">
      </form>
    </div>
</body>
</html>
