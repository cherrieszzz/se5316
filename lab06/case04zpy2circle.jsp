<%@page contentType="text/html;charset=utf-8"%>
<%!    public String getArea(double r)
    {
        if(r>0)
        {
            double area=r*r*3.14;
            return ""+area;
        }
        else{
            return("半径为"+r+"不能为大于0以外的数字，无法计算面积");
        }
    }
%>
<%
    String sideR=request.getParameter("sideR");
    double r=Double.parseDouble(sideR);
%>
<br><br>计算圆的面积：<br>
给我传递的半径是：<%=r%>
<br>圆的面积是：<%=getArea(r) %>