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
        int size=6;
        int current=1;
        int total = 0;
        Connection conn= DbConnect.getDBconnection();
        String sql1="select count(*) from goods";

        String sql="select * from goods limit ?,?";
        current=Integer.parseInt(request.getParameter("current"));
        List<Goods> goods=new ArrayList<>();
        try {
            PreparedStatement preparedStatement1= conn.prepareStatement(sql1);
            ResultSet resultSet1=preparedStatement1.executeQuery();
            if(resultSet1.next()){
                total=(int)resultSet1.getInt(1)/size;
            }
            PreparedStatement preparedStatement=conn.prepareStatement(sql);
            if(current<=0){
                current=1;
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
