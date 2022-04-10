package operationServlet;

import Tools.TransGoodsList;
import com.db.DbConnect;
import com.domain.Goods;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "Add", value = "/Add")
public class AddServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Goods> goods=new ArrayList<>();
        String name=request.getParameter("goods");
        String date=request.getParameter("time");
        String description=request.getParameter("describe");
        String address=request.getParameter("address");
        String type=request.getParameter("type");
        try{
            Connection conn= DbConnect.getDBconnection();
            String sql="insert into goods values(?,?,?,?,?)";
            PreparedStatement preparedStatement= conn.prepareStatement(sql);
            preparedStatement.setString(1,name);
            preparedStatement.setString(2,date);
            preparedStatement.setString(3,address);
            preparedStatement.setString(4,description);
            preparedStatement.setString(5,type);
            int n=preparedStatement.executeUpdate();
            if(n==1) {

                //可以封装一下
                String sql1="select * from goods";
                PreparedStatement preparedStatement1= conn.prepareStatement(sql1);
                ResultSet resultSet=preparedStatement1.executeQuery();
                while(resultSet.next()){
//                    Goods goods1=new Goods();
//                    goods1.setName(resultSet.getString("name"));
//                    goods1.setDate(resultSet.getString("date"));
//                    goods1.setAddress(resultSet.getString("address"));
//                    goods1.setDescribe(resultSet.getString("description"));
//                    goods1.setType(resultSet.getString("type"));

                    //调用封装方法TransGoodsList
                    goods.add(TransGoodsList.instantiation(resultSet));
                }
                if(resultSet!=null)resultSet.close();
                if (preparedStatement!=null)preparedStatement.close();

                //将集合传值过去
                request.setAttribute("goodsList",goods);

                if (preparedStatement != null) preparedStatement.close();
                if (conn != null) conn.close();
               RequestDispatcher dis=request.getRequestDispatcher("index.jsp");
                dis.forward(request,response);
            }else {

                if(preparedStatement!=null){preparedStatement.close();}
                if(conn!=null){conn.close();}
              RequestDispatcher  dis=request.getRequestDispatcher("add_content.jsp");
                dis.forward(request,response);
            }

        }catch(Exception e){
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
