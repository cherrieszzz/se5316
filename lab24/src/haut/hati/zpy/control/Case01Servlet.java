package haut.hati.zpy.control;

import haut.hati.zpy.bean.Case01Bean;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

public class Case01Servlet  extends HttpServlet {
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }


    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        Case01Bean bean = null;
        try{
            bean = (Case01Bean)req.getAttribute("bean");
            if(bean == null) {
                bean = new Case01Bean();
                req.setAttribute("bean",bean);
            }
        }catch (Exception e){
            bean = new Case01Bean();
            req.setAttribute("bean",bean);
        }

        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (Exception e) {
            System.out.println(e);
        }

        String age = req.getParameter("age-select");

        try {
            Connection conn = null;
            Statement stmt = null;
            String DB_URL = "jdbc:mysql://localhost:3306/STUDENT0102ZPY?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
            // 数据库的用户名与密码，需要根据自己的设置
            String USER = "root";
            String PASS = "zpy020923";
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            // 执行查询
            stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String sql;
            sql = "select * from zpystuinfo_1 WHERE age= '"+ age +"';";
            String sql2 = "select * from zpystuinfo_1";
            ResultSet rs = stmt.executeQuery(sql);
            ResultSetMetaData metaData = rs.getMetaData();
            int columnCount = metaData.getColumnCount();
            String[] colName = new String[columnCount];
            for (int i = 0; i < colName.length; i++) {
                colName[i] = metaData.getColumnName(i + 1);
            }
            bean.setColumeName(colName);
            rs.last();
            int rowNumber = rs.getRow();
            bean.getTableRecord();
            String[][] tableRecord = bean.getTableRecord();
            tableRecord = new String[rowNumber][columnCount];
            rs.beforeFirst();
            int i = 0;
            // 展开结果集数据库
            while (rs.next()) {
                for (int j = 0; j < columnCount; j++) {
                    tableRecord[i][j] = rs.getString(j + 1);
                }
                i++;
            }
            bean.setTableRecord(tableRecord);
            conn.close();
            req.getRequestDispatcher("case01zpyshow.jsp").forward(req, res);
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String sex = req.getParameter("sex-select");
        Case01Bean bean = null;
        try{
            bean = (Case01Bean)req.getAttribute("bean");
            if(bean == null) {
                bean = new Case01Bean();
                req.setAttribute("bean",bean);
            }
        }catch (Exception e){
            bean = new Case01Bean();
            req.setAttribute("bean",bean);
        }

        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (Exception e) {
            System.out.println(e);
        }

        String age = req.getParameter("age-select");

        try {
            Connection conn = null;
            Statement stmt = null;
            String DB_URL = "jdbc:mysql://localhost:3306/STUDENT0102ZPY?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
            // 数据库的用户名与密码，需要根据自己的设置
            String USER = "root";
            String PASS = "zpy020923";
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            // 执行查询
            stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String sql;
            sql = "select * from zpystuinfo_1 WHERE sex= '"+ sex +"';";
            String sql2 = "select * from zpystuinfo_1";
            ResultSet rs = stmt.executeQuery(sql);
            ResultSetMetaData metaData = rs.getMetaData();
            int columnCount = metaData.getColumnCount();
            String[] colName = new String[columnCount];
            for (int i = 0; i < colName.length; i++) {
                colName[i] = metaData.getColumnName(i + 1);
            }
            bean.setColumeName(colName);
            rs.last();
            int rowNumber = rs.getRow();
            bean.getTableRecord();
            String[][] tableRecord = bean.getTableRecord();
            tableRecord = new String[rowNumber][columnCount];
            rs.beforeFirst();
            int i = 0;
            // 展开结果集数据库
            while (rs.next()) {
                for (int j = 0; j < columnCount; j++) {
                    tableRecord[i][j] = rs.getString(j + 1);
                }
                i++;
            }
            bean.setTableRecord(tableRecord);
            conn.close();
            req.getRequestDispatcher("case01zpyshow.jsp").forward(req, res);
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
