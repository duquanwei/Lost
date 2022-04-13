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
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ShowServlet", value = "/ShowServlet")
public class ShowServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int size=6; //每页的个数
        int current=1; //当前页数
        int total = 0; //总页数
        Connection conn= DbConnect.getDBconnection();

        //获取总个数的SQL语句
        String sql1="select count(*) from goods";

        //分页的sql语句
        String sql="select * from goods limit ?,?";

        List<Goods> goods=new ArrayList<>();

        //通过网址的方式获取当前页数
        current=Integer.parseInt(request.getParameter("current"));


        try {
            //得到总页数
            PreparedStatement preparedStatement1= conn.prepareStatement(sql1);
            ResultSet resultSet1=preparedStatement1.executeQuery();
            if(resultSet1.next()){
                total=(int)resultSet1.getInt(1)/size+1;
            }

            //分页查询
            PreparedStatement preparedStatement=conn.prepareStatement(sql);
            if(current<=1){
                current=2;
            }else if(current>total){
                current=total;
            }
            preparedStatement.setInt(1,(current-1)*size);
            preparedStatement.setInt(2,size);
            ResultSet resultSet=preparedStatement.executeQuery();
            while(resultSet.next()){
                goods.add(TransGoodsList.instantiation(resultSet));
            }
        } catch (Exception throwables) {
            current=1;
        }

        //将重新初始化的当前页数和最新的goodsList传递给index.jsp
        request.setAttribute("currentPage",current);
        request.setAttribute("goodsList",goods);
        RequestDispatcher dis=request.getRequestDispatcher("index.jsp");
        dis.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
