package haut.hati.wht;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Case02Servlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO 自动生成的方法存根
		super.init(config);
		System.out.print("init程序已执行！！！");

	}
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO 自动生成的方法存根
		System.out.print("service程序已执行！！！\n");
		request.setCharacterEncoding("UTF-8");
		//String str=request.getParameter("moon");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		
		String str=request.getParameter("billMess");//获取jsp中数据
		out.print("<html><body background=D:/workspaceJSP2017/s27ch05wht/WebContent/image/t1.jpg><font size=7>");
		//out.print("<b>请求的servlet的名字是"+sevletName+"<br></b>");
		out.println(str);		
		out.print("<br>---------------------------------");
		if(str==null||str.length()==0){
			out.println("<br>数据出错！正在返回！！！");
			return;
		}
			
		
		String []price=str.split("[^0123456789.]+");
		double sum=0;
		try{
			for(int i=0;i<price.length;i++){
				if(price[i].length()>=1)
					sum+=Double.parseDouble(price[i]);
			}
		}catch(NumberFormatException e){
			out.print(" "+e);
		}
		out.print("\"<br>"+str+"\"<br>的消费额："+sum+"圆");
			//out.print("<br><h2>"+str+"<h2>");
		out.print("</font></body></html>");	
			}

	@Override
	public void destroy() {
		// TODO 自动生成的方法存根
		System.out.print("destroy程序已执行！！！");
		
	}

	

}
