<%@ page contentType="text/html;charset=gb2312" %>
<jsp:useBean id="tri" class="haut.hati.zpy.Case05Trapezoid" scope="request"/>
<!DOCTYPE html>
    <head>
        <title>case03 trapezoid</title>
    </head>
    <body>
        <form action="" method="post" >
            输入梯形的上底，下底和高：
            上底:<input type=text name="sideA" value=0 size=5>
            下底:<input type=text name="sideB" value=0 size=5>
            高:<input type=text name="sideC" value=0 size=5>
            <input type=submit value="提交">
        </form>
        <jsp:setProperty name="tri" property="*"/>
            梯形的上底，下底和高是：
        <jsp:getProperty name="tri" property="sideA"/>,
        <jsp:getProperty name="tri" property="sideB"/>,
        <jsp:getProperty name="tri" property="sideC"/>.
        <br>面积是:<jsp:getProperty name="tri" property="area"/></b>
    </body>
</html>
<jsp:useBean id="count" class="haut.hati.zpy.Case05Count" scope="session"/>


<br>您是第<jsp:getProperty name="count" property="number"/>             个访问者。<br>
