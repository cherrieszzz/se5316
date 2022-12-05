<%
String str=request.getParameter("guess");
	if(str==null||str.length()==0){
		response.sendRedirect("case05zpy1number.jsp");
	}
	else{
		int guessnumber=Integer.parseInt(str);
		session.setAttribute("guess", new Integer(guessnumber));
		Integer integer=(Integer)session.getAttribute("save");
		int realnumber=integer.intValue();
		if(guessnumber==realnumber){
			int n=((Integer)session.getAttribute("count")).intValue();
			n=n+1;
			session.setAttribute("count", new Integer(n));
			response.sendRedirect("case05zpy5sucess.jsp");
		}
		else if(guessnumber>realnumber){
			int n=((Integer)session.getAttribute("count")).intValue();
			n=n+1;
			session.setAttribute("count", new Integer(n));
			response.sendRedirect("case05zpy2large.jsp");
		}
		else if(guessnumber<realnumber){
			int n=((Integer)session.getAttribute("count")).intValue();
			n=n+1;
			session.setAttribute("count", new Integer(n));
			response.sendRedirect("case05zpy3small.jsp");
		}
	}
%>