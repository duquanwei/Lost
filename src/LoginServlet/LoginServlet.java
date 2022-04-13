package LoginServlet;

import Tools.TransGoodsList;
import com.db.DbConnect;
import com.domain.Goods;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         List<Goods> goods=new ArrayList<>();
         request.setCharacterEncoding("UTF-8");
         String names=request.getParameter("username");
         String passwords=request.getParameter("password");
         RequestDispatcher dis;
         try{
            Connection conn= DbConnect.getDBconnection();
             String sql="select *from user1 where (username=?and password=?)";
             PreparedStatement p=conn.prepareStatement(sql);
             p.setString(1,names);
             p.setString(2,passwords);
             ResultSet rs= p.executeQuery();

             //成功登录
             if(rs.next()){
                 String sql1="select * from goods limit 0,6";
                 PreparedStatement preparedStatement= conn.prepareStatement(sql1);
                 ResultSet resultSet=preparedStatement.executeQuery();
                 while(resultSet.next()){
//                     Goods goods1=new Goods();
//                     goods1.setName(resultSet.getString("name"));
//                     goods1.setDate(resultSet.getString("date"));
//                     goods1.setAddress(resultSet.getString("address"));
//                     goods1.setDescribe(resultSet.getString("description"));
//                     goods1.setType(resultSet.getString("type"));

                     //调用封装方法
                     goods.add(TransGoodsList.instantiation(resultSet));
                 }

                 if(resultSet!=null)resultSet.close();
                 if (preparedStatement!=null)preparedStatement.close();
                 request.setAttribute("goodsList",goods);
                 if(rs!=null){rs.close();}
                 if(p!=null){p.close();}
                 if(conn!=null){conn.close();}
                 dis=request.getRequestDispatcher("index.jsp");
                 dis.forward(request,response);
             }
             else{
                 if(rs!=null){rs.close();}
                 if(p!=null){p.close();}
                 if(conn!=null){conn.close();}
                 dis=request.getRequestDispatcher("login.jsp");
                 dis.forward(request,response);
             }
         }
         catch (Exception e){
             e.printStackTrace();
         }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doGet(request,response);
    }
}
