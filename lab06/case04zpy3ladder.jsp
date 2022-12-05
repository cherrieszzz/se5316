<%@page contentType="text/html;charset=utf-8"%>
<%!    public String getArea(double a,double b,double c)
    {
        if(a>0&&b>0&&c>0)
        {
            double area=(a+b)*c/2;
            return ""+area;
        }
        else{
            return("梯形的上底、下底、高"+a+" "+b+" "+c+"不能为大于0以外的数字，无法计算面积");
        }
    }
%>
<%
    String sideA=request.getParameter("sideA");
    String sideB=request.getParameter("sideB");
    String sideC=request.getParameter("sideC");
    double a=Double.parseDouble(sideA);
    double b=Double.parseDouble(sideB);
    double c=Double.parseDouble(sideC);
%>
<br><br>计算梯形的面积：<br>
给我传递的上底、下底、高是：<%=sideA  %> <%=sideB  %>  <%=sideC  %>
<br>梯形的面积是：<%=getArea(a,b,c) %>
