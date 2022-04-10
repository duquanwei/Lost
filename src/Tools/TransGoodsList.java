package Tools;

import com.domain.Goods;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TransGoodsList {
    public static Goods instantiation(ResultSet resultSet) throws Exception {
        Goods goods1=new Goods();
        List<Goods> goods=new ArrayList<>();
        goods1.setName(resultSet.getString("name"));
        goods1.setDate(resultSet.getString("date"));
        goods1.setAddress(resultSet.getString("address"));
        goods1.setDescribe(resultSet.getString("description"));
        goods1.setType(resultSet.getString("type"));
        return goods1;
    }
}
