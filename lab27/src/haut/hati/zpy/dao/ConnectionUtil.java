package haut.hati.zpy.dao;

import java.sql.*;

public class ConnectionUtil {
    public static Connection getConn(String url, String name, String passwd) {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url,name,passwd);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }

    public static String[] getColumName(ResultSet rs) throws SQLException {
        ResultSetMetaData metaData = rs.getMetaData();
        int columCount = metaData.getColumnCount();
        String[] ColumName = new String[columCount];
        for(int i = 0 ; i < columCount; i++){
            ColumName[i] = metaData.getColumnName(i + 1);
        }
        return ColumName;
    }

    public static String[][] gettableRecord(ResultSet rs) throws SQLException {
        rs.last();
        int RowCount = rs.getRow();
        ResultSetMetaData metaData = rs.getMetaData();
        int columCount = metaData.getColumnCount();
        String[][] tableRecord = new String[RowCount][columCount];
        rs.beforeFirst();
        int i = 0;
        while (rs.next()){
            for (int k = 0; k < columCount; k++){
                tableRecord[i][k] = rs.getString(k + 1);
            }
            i++;
        }
        return tableRecord;
    }

    public static void Close(Connection conn, Statement stmt){
        try {
            if(stmt != null)
                stmt.close();
            if(conn != null)
                conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void Close(Connection conn, Statement stmt, ResultSet rs) {
        try {
            if(rs != null)
                rs.close();
            if(stmt != null)
                stmt.close();
            if(conn != null)
                conn.close();
        } catch (SQLException e) {
           e.printStackTrace();
        }
    }
}
