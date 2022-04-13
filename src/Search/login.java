package Search;

import com.db.DbConnect;

import java.io.*;
import java.sql.*;

public class login {
    public static void main(String[] args) throws ClassNotFoundException, SQLException, FileNotFoundException {
        File file=new File("picture/a.jpg");
        FileInputStream fileInputStream=new FileInputStream(file);

        String driverName="com.mysql.cj.jdbc.Driver";
        String userName="root";
        String userPwd="123456";
        String dbName="mysql";
        String url1="jdbc:mysql://localhost/"+dbName;
        String url2="?user="+userName+"&password="+userPwd;
        String url3="&useUnicode=true&characterEncoding=UTF-8";
        String url=url1+url2+url3;
        Class.forName(driverName);
        Connection con= DriverManager.getConnection(url);
        String sql="select * from user1";
        PreparedStatement preparedStatement= con.prepareStatement(sql);
        ResultSet rs=preparedStatement.executeQuery();
        while(rs.next()){
            System.out.print("姓名:"+rs.getString("username")+"密码:"+rs.getString("password")+"\n");
        }
        if(rs!=null)rs.close();
        if(preparedStatement!=null)preparedStatement.close();
        if(con!=null)con.close();
    }
}
