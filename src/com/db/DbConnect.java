package com.db;
import java.sql.*;
public class DbConnect {
    private static String driverName="com.mysql.cj.jdbc.Driver";
    private static String userName="root";
    private static String userPwd="123456";
    private static String dbName="mysql";
    public static Connection getDBconnection(){
       String url1="jdbc:mysql://localhost/"+dbName;
       String url2="?user="+userName+"&password="+userPwd;
       String url3="&useUnicode=true&characterEncoding=UTF-8";
       String url=url1+url2+url3;
       try{
           Class.forName(driverName);
           Connection con=DriverManager.getConnection(url);
           return con;
       }catch (Exception e){
           e.printStackTrace();
       }

        return null;
    }
    public static void closeDB(Connection con,PreparedStatement pstm,ResultSet rs){
        try{
            if(rs!=null) rs.close();
            if(pstm!=null) pstm.close();
            if(con!=null) con.close();
        }catch (SQLException e){
            e.printStackTrace();
        }
    }
}
