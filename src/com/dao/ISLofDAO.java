package com.dao;

import com.db.DbConnect;
import com.domain.Lof;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class ISLofDAO implements LofDAO {
    protected static final String FIELDS_INSERT="id";
    protected static String INSERT_SQL="insert into lof_info("+FIELDS_INSERT+")"+"values(?)";
    protected static String SELECT_SQL="select"+FIELDS_INSERT+"from lof_info where id=?";
    protected static String UPDATE_SQL="update lof_info set"+"id=?where id=?";
    protected static String DELETE_SQL="delete from lof_info where id=?";
    @Override
    public Lof create(Lof lof) throws Exception {

        Connection con=null;
        PreparedStatement prepStmt=null;
        ResultSet rs=null;
        con= DbConnect.getDBconnection();
        prepStmt=con.prepareStatement(INSERT_SQL);
        prepStmt.setInt(1, lof.getId());
        prepStmt.executeUpdate();
        DbConnect.closeDB(con,prepStmt,rs);
        return lof;
    }



    @Override
    public void remove(Lof lof) throws Exception {
         Connection con=null;
         PreparedStatement prepStmt=null;
         ResultSet rs=null;
         con=DbConnect.getDBconnection();
         prepStmt=con.prepareStatement(DELETE_SQL);
         prepStmt.setInt(1,lof.getId());
         prepStmt.executeUpdate();
         DbConnect.closeDB(con,prepStmt,rs);

    }

    @Override
    public Lof find(Lof lof) throws Exception {
        Connection con=null;
        PreparedStatement prepStmt=null;
        ResultSet rs=null;
        Lof lof2=null;
        con=DbConnect.getDBconnection();
        prepStmt=con.prepareStatement(SELECT_SQL);
        prepStmt.setInt(1,lof.getId());
        rs=prepStmt.executeQuery();
        if(rs.next()){
            lof2=new Lof();
            lof2.setId(rs.getInt(1));

        }
        DbConnect.closeDB(con,prepStmt,rs);

        return lof2;
    }

    @Override
    public List<Lof> findAll() throws Exception {
        Connection con=null;
        PreparedStatement prepStmt=null;
        ResultSet rs=null;
        List<Lof> lof=new ArrayList<Lof>();
        con=DbConnect.getDBconnection();
        prepStmt=con.prepareStatement("select *from lof_info");
        rs=prepStmt.executeQuery();
        while(rs.next()){
            Lof lof2=new Lof();
            lof2.setId(rs.getInt(1));
            lof.add(lof2);
        }
        DbConnect.closeDB(con,prepStmt,rs);
        return lof;
    }

    @Override
    public void update(Lof lof) throws Exception {
         Connection con=null;
         PreparedStatement prepStmt=null;
         ResultSet rs=null;
         con=DbConnect.getDBconnection();
         prepStmt=con.prepareStatement(UPDATE_SQL);
         prepStmt.setInt(1,lof.getId());
         int rowCount= prepStmt.executeUpdate();
         if(rowCount==0){
             throw new Exception("Update Error:Lof Id"+lof.getId());
         }
         DbConnect.closeDB(con,prepStmt,rs);
    }
}
