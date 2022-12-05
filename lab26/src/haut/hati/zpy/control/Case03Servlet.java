package haut.hati.zpy.control;

import haut.hati.zpy.bean.Case03Bean;
import haut.hati.zpy.dao.ConnectionUtil;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class Case03Servlet  extends HttpServlet {
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        Case03Bean bean = null;
        try{
            bean = (Case03Bean)req.getAttribute("bean");
            if(bean == null) {
                bean = new Case03Bean();
                req.setAttribute("bean",bean);
            }
        }catch (Exception e){
            bean = new Case03Bean();
            req.setAttribute("bean",bean);
        }
        try {
            String url = "jdbc:mysql://localhost:3306/STUDENT0102ZPY?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
            String username = "root";
            String passwd = "zpy020923";

            String id = req.getParameter("id");
            String name = req.getParameter("name");
            String date = req.getParameter("data");
            String sex = req.getParameter("sex");
            int age = Integer.parseInt(req.getParameter("age"));
            String classe = req.getParameter("class");
            String resume = req.getParameter("resume");


            String add = req.getParameter("add");
            String updata = req.getParameter("updata");
            String del = req.getParameter("del");
            if (id == null || id.length() == 0) {
                fail(req, res);
                return;
            }
            String sql = null;
            try {
                Connection conn = ConnectionUtil.getConn(url, username, passwd);
                Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                ResultSet rs = stmt.executeQuery("select * from zpystuinfo_1");
                if (add != null) {
                    //sql = "insert into zpystuinfo_1 values " + " ( "+ "'"+id  +" ', '" + name + "','" + date + "','" + sex + "'," + age + ",'" + classe + "','" + resume +"');";
                    //stmt.executeUpdate(sql);
                    rs.moveToInsertRow();
                    rs.updateString("id", id);
                    rs.updateString("name", name);
                    rs.updateString("date", date);
                    rs.updateString("sex", sex);
                    rs.updateInt("age", age);
                    rs.updateString("class", classe);
                    rs.updateString("resume", resume);
                    rs.insertRow();
                }
                if (updata != null) {
                    int id_num = Integer.parseInt(id);
                    rs.absolute(id_num);
                    rs.updateString("id", id);
                    rs.updateString("name", name);
                    rs.updateString("date", date);
                    rs.updateString("sex", sex);
                    rs.updateInt("age", age);
                    rs.updateString("class", classe);
                    rs.updateString("resume", resume);
                    rs.updateRow();
                }
                if (del != null) {
                    sql = "delete from zpystuinfo_1 where id =" + id + ";";
                    stmt.executeUpdate(sql);
                }
                //再次查询更新之后的数据表
                rs = stmt.executeQuery("select * from zpystuinfo_1");
                // 结果集的数据存入数组
                String[] ColumName = ConnectionUtil.getColumName(rs);
                bean.setColumeName(ColumName);
                String[][] tableRecord = ConnectionUtil.gettableRecord(rs);
                bean.setTableRecord(tableRecord);
                ConnectionUtil.Close(conn, stmt, rs);
                req.getRequestDispatcher("case03zpyshow.jsp").forward(req, res);
            } catch (SQLException e) {
                e.printStackTrace();
                fail(req, res);
            }
        }catch (Exception e){
            fail(req, res);
            e.printStackTrace();
        }
    }

    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        doPost(req, res);
    }

    public void fail(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException {
        try {
            req.getRequestDispatcher("error.jsp").forward(req, res);
        }catch (IOException e){

        }
    }
}
