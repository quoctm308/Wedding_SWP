package dao.guest;

import context.DBContext;
import model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class LoginDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

        //=============Login DAO=============
    public User checkLogin(String user, String password){
        boolean isValid = false;
        String query = "select * from NGUOIDUNG where username = ? or email = ? and password = ?";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, user);;
            ps.setString(3,password);
            rs = ps.executeQuery();
            while (rs.next()) {
                return  new User(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getBoolean(7),
                        rs.getString(8),
                        rs.getString(9)
                );
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return null;
    }


    public static void main(String[] args) {
        LoginDAO dao = new LoginDAO();
        User us = new User();
        System.out.println(dao.checkLogin("staff", "staff"));
    }
}
