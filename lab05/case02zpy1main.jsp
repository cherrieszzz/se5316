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
    int RANDOM_NUM_1 = (int)(Math.random() * 20) + 10;
    int RANDOM_NUM_2 = (int)(Math.random() * 20) + 10;
    int RANDOM_NUM_3 = (int)(Math.random() * 20) + 10;
    double S, V, G = 0;
    boolean flag = true;
     S = (RANDOM_NUM_1 + RANDOM_NUM_2 + RANDOM_NUM_3) / 2;
        V = S * (S - RANDOM_NUM_1) * (S - RANDOM_NUM_2) * (S - RANDOM_NUM_3);
        G = Math.sqrt(V);
    if(RANDOM_NUM_1 + RANDOM_NUM_2 <= RANDOM_NUM_3 || RANDOM_NUM_1 + RANDOM_NUM_3 <= RANDOM_NUM_2 || RANDOM_NUM_2 + RANDOM_NUM_3 <= RANDOM_NUM_1) {
      flag = true;
    } else {
      flag = false;
    }
  %>
  <div class="container">
    <div class = "d-flex justify-content-center">
    <div>
        <div class="alert alert-danger" role="alert">
            <h4 class = "alert-heading">实验五 JSP指令和动作标记1</h4>
            <hr/>
            <p>随机生成三个[10.30）的整数为 <strong> <%= RANDOM_NUM_1%>, <%= RANDOM_NUM_2%>, <%= RANDOM_NUM_3%> </p>
        </div>
    </div>
   </div>
  </div>
  <jsp:include page ="case02zpy2trangle.jsp">
      <jsp:param name ="sideA" value ="<%=RANDOM_NUM_1 %>"/>
      <jsp:param name ="sideB" value ="<%=RANDOM_NUM_2 %>"/>
      <jsp:param name ="sideC" value ="<%=RANDOM_NUM_3 %>"/>
  </jsp:include>
  </body>
</html>
