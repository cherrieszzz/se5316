<%@ page contentType="text/html;charset=gb2312" %>
<jsp:useBean id="tri" class="haut.hati.zpy.Case05Trapezoid" scope="request"/>
<!DOCTYPE html>
    <head>
        <title>case03 trapezoid</title>
    </head>
    <body>
        <form action="" method="post" >
            �������ε��ϵף��µ׺͸ߣ�
            �ϵ�:<input type=text name="sideA" value=0 size=5>
            �µ�:<input type=text name="sideB" value=0 size=5>
            ��:<input type=text name="sideC" value=0 size=5>
            <input type=submit value="�ύ">
        </form>
        <jsp:setProperty name="tri" property="*"/>
            ���ε��ϵף��µ׺͸��ǣ�
        <jsp:getProperty name="tri" property="sideA"/>,
        <jsp:getProperty name="tri" property="sideB"/>,
        <jsp:getProperty name="tri" property="sideC"/>.
        <br>�����:<jsp:getProperty name="tri" property="area"/></b>
    </body>
</html>
<jsp:useBean id="count" class="haut.hati.zpy.Case05Count" scope="session"/>


<br>���ǵ�<jsp:getProperty name="count" property="number"/>             �������ߡ�<br>
