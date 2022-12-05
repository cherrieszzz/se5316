<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<html>
<head>
    <title>lab5</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
</head>
<body>
<% 
  String sideA = request.getParameter("sideA"); 
  String sideB = request.getParameter("sideB");
  String sideC = request.getParameter("sideC");
  double a=Double.parseDouble(sideA);
  double b=Double.parseDouble(sideB);
  double c=Double.parseDouble(sideC);
%>

<%! public String getArea(double a,double b,double c){
	if(a + b > c && a + c > b && c + b > a) {
	double p= ( a + b + c ) / 2.0;
	double area =Math.sqrt( p * (p - a) * (p - b) * (p - c));
	return"三角形面积为" + area;
	}
	else{
	return(""+a+","+b+","+c+"不能构成一个三角形，无法计算面积");
	}
}%>

<div class="container">
   <div class = "d-flex justify-content-center">
    <div>
      <div class="alert alert-success" role="alert">
            <p> <%= getArea(a, b, c)%></p>
            <hr/>
            <p>联软件2001 张圃源设计</p>
        </div>
    
    </div>
   </div>  
</div>
</body>
</html>
