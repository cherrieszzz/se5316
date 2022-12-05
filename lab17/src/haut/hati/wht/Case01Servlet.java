package haut.hati.wht;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.GenericServlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class Case01Servlet extends HttpServlet{
	/** * 	 */
	int num1=0,num2=0;
	String value;
	//private ServletConfig servletConfig;
	private static final long serialVersionUID = 1L;
	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO 自动生成的方法存根
		System.out.print("init程序已执行！！！\n");
		super.init(config);

		//this.servletConfig=config;
		value=config.getInitParameter("pw");
		System.out.print(config.getInitParameter("pw")+"\n");
		
	}
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO 自动生成的方法存根
		num1++;
		
		System.out.print("service程序已执行"+num1+"次！！！\n");
		
		request.setCharacterEncoding("UTF-8");
		String str=request.getParameter("moon"); 
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		String sevletName=getServletName();
		out.print("<html><body background=D:/workspaceJSP2017/s27ch05wht/WebContent/image/t1.jpg><font size=5>");		
		out.print("<b>请求的网页的次数是："+num1+"<br></b>");
		out.print("<b>xml传来的值为："+value+"<br></b>");
		out.print("<b><br>请求的servlet的名字是："+sevletName+"<br></b>");
		out.print("---------------------------------");
		/*if(str!=null&&str.length()>=1)
			out.print("<br><h2>"+str+"<h2>");*/
		out.print("</font></body></html>");
			//super.service(arg0, arg1);http://localhost:8080/s27ch05wht/lookhello?moon=lonn
	}
	@Override
	public void destroy() {
		// TODO 自动生成的方法存根
		System.out.print("destroy程序已执行！！！");
		}
}
