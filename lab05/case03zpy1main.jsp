<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, java.lang.*" %>
<html>
  <head>
    <title>lab5</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
  </head>

 <body>
    <div class = "container">

        <form action="case03zpy1main.jsp" method="post" name=gender class="form-control">
          <label for="exampleInputEmail1" class="form-label">请输入一个数字</label>
          <br>
             <input type="text" name="number" >

             <input type="submit" value="提交" name="submit" class="btn btn-primary">

        </form> 
    </div>

    <%
    String str=request.getParameter("number");
    if(str !=null){
      try{
        int num;
        num = Integer.parseInt(str);
    
        if(num>=1&&num<=50){
          %>
          <jsp:forward page="case03zpy2two.jsp">
          <jsp:param name="str" value="<%=num %>"/>
          </jsp:forward>
        <%}
        else if(num>50&&num<=100)
        {
        %><jsp:forward page="case03zpy3three.jsp">
          <jsp:param name="str" value="<%=num %>"/>
          </jsp:forward>
        <% }
        else if(num>100||num<=0)
        {
        %><jsp:forward page="case03zpy3error.jsp">
          <jsp:param name="str" value="<%=num %>"/>
          </jsp:forward>
        <% }
      }
      catch(Exception e)
      {
      %><jsp:forward page="case03zpy3error.jsp">
      <jsp:param name="mess" value="<%=e.toString()%>"/>
      </jsp:forward>
    <% 	}
    }
    %>
 </body>
</html>