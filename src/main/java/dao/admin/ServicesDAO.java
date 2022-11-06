package dao.admin;

import context.DBContext;
import model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ServicesDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public List<Product> getProductList() {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * from PRODUCT ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getBoolean(7),
                        rs.getString(8)));
            }
        } catch (Exception e) {
        }

        return list;
    }
    public Product getProductID(String productID) {
        String query = "SELECT * from PRODUCT where ProductID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productID);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getBoolean(7),
                        rs.getString(8));
            }
        } catch (Exception e) {
        }
        return null;
    }
    public void deleteProduct(String productID) {
        String query = "delete from PRODUCT\n"
                + "where ProductID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void addProduct(String productName, String category, int price, int quantity, String image, boolean status, String description) {
        String query = "INSERT INTO PRODUCT\n"
                + "VALUES (?, ?, ?, ?, ?, ?, ?);";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productName);
            ps.setString(2, category);
            ps.setInt(3, price);
            ps.setInt(4, quantity);
            ps.setString(5, image);
            ps.setBoolean(6, status);
            ps.setString(7, description);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }
    public void updateProduct(String productName, String category, int price, int quantity, String image, boolean status, String description, String productID) {
        String query = "update NGUOIDUNG set " +
                "Product_name=?, " +
                "Category   =?, " +
                "Price=?, " +
                "Quantity=?" +
                "Image=?" +
                "Status=?" +
                "where ProductID=? ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productName);
            ps.setString(2, category);
            ps.setInt(3, price);
            ps.setInt(4, quantity);
            ps.setString(5, image);
            ps.setBoolean(6, status);
            ps.setString(7, description);
            ps.setString(8, productID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public static void main(String[] args) {
        dao.admin.ServicesDAO dao = new ServicesDAO();
        ServicesDAO feedback = new ServicesDAO();
        List<Product> list = dao.getProductList();
        System.out.println(dao.getProductID("6"));
        for (Product o : list) {
            System.out.println(o);
        }
    }
}
