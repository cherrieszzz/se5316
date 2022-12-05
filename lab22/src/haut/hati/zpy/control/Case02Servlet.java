package haut.hati.zpy.control;

import haut.hati.zpy.bean.Case02Bean;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static java.lang.System.out;

public class Case02Servlet extends HttpServlet{
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        try {
            String a = req.getParameter("a");
            String b = req.getParameter("b");
            String c = req.getParameter("c");
            Case02Bean Bean = new Case02Bean(Double.parseDouble(a), Double.parseDouble(b), Double.parseDouble(c));
            Double a1 = Bean.getA();
            Double b1 = Bean.getB();
            Double c1 = Bean.getC();
            double delta = b1 * b1 - 4 * a1 * c1;
            if(a1 == 0 && b1 == 0 && c1 == 0)
                req.setAttribute("result1","该方程无解");
            if(delta < 0) {
                req.setAttribute("result1","该方程无解");
            }
            if(delta == 0) {
                double x = (-b1 + Math.sqrt(delta)) / 2.0 / a1;
                req.setAttribute("result1", x);
                req.setAttribute("result2","没有第二个解");
            }
            if(delta > 0) {
                double x1 = (-b1 + Math.sqrt(delta)) / 2.0 / a1;
                double x2 = (-b1 - Math.sqrt(delta)) / 2.0 / a1;
                String x1str = String.valueOf(x1);
                String x2str = String.valueOf(x2);
                req.setAttribute("result1", x1);
                req.setAttribute("result2", x2);
            }
            req.getRequestDispatcher("case02zpyshow.jsp").forward(req, res);
        } catch (Exception e) {
           res.sendRedirect("case02zpyinput.jsp");
        }
    }

    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        doPost(req, res);
    }
}
