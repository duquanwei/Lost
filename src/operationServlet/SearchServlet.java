package operationServlet;

import Tools.TransGoodsList;
import com.db.DbConnect;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.domain.Goods;

@WebServlet(name = "searchServlet", value = "/searchServlet")
public class SearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //接受数据
        String name=request.getParameter("name");
        String address=request.getParameter("address");
        String type=request.getParameter("type");
        List<Goods> goods=new ArrayList<Goods>();
        try {
            //数据库连接
            Connection conn= DbConnect.getDBconnection();
            String sql="select * from goods where name like ? or address like ? or type=?";
            PreparedStatement preparedStatement= conn.prepareStatement(sql);
            preparedStatement.setString(1,"%"+name+"%");
            preparedStatement.setString(2,"%"+address+"%");
            preparedStatement.setString(3,type);
            ResultSet resultSet=preparedStatement.executeQuery();

                //为goodsList添加数据
                while (resultSet.next()) {

//                    初始化goods1
//                    Goods goods1 = new Goods();
//
//                    goods1.setName(resultSet.getString("name"));
//                    goods1.setDate(resultSet.getString("date"));
//                    goods1.setAddress(resultSet.getString("address"));
//                    goods1.setDescribe(resultSet.getString("description"));
//                    goods1.setType(resultSet.getString("type"));

                    //添加到goods列表

                    //调用封装方法，其封装内容为40行注释的内容
                    goods.add(TransGoodsList.instantiation(resultSet));
                }

                //传送goods集合
                request.setAttribute("goodsList",goods);

                if(resultSet!=null)resultSet.close();
                if(preparedStatement!=null)preparedStatement.close();
                if(conn!=null)conn.close();

                RequestDispatcher dis=request.getRequestDispatcher("index.jsp");
                dis.forward(request,response);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
