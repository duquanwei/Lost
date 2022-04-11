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
        Connection conn= DbConnect.getDBconnection();
        String sql="select * from goods limit ?,?";
        int current=1;
        current=Integer.parseInt(request.getParameter("current"));
        int size=6;
        List<Goods> goods=new ArrayList<>();
        try {
            PreparedStatement preparedStatement=conn.prepareStatement(sql);
            if(current<=0){
                current=1;
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
