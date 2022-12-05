package haut.hati.zpy.control;

import haut.hati.zpy.bean.Case01Bean;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static java.lang.System.out;

public class Case01Servlet extends HttpServlet{
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String start = req.getParameter("start");
        String gc = req.getParameter("gc");
        String gb = req.getParameter("gb");
        String n = req.getParameter("n");
        try {
            Case01Bean newBean = new Case01Bean(Double.parseDouble(start), Double.parseDouble(gc), Double.parseDouble(gb), Integer.parseInt(n));
            req.setAttribute("result_db",newBean.getres_db());
            req.setAttribute("result_dc",newBean.getres_dc());
            req.getRequestDispatcher("case01zpyshow.jsp").forward(req, res);
        } catch (Exception e) {
            res.sendRedirect("case01zpyinput.jsp");
        }

    }

    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        doPost(req, res);
    }
}
