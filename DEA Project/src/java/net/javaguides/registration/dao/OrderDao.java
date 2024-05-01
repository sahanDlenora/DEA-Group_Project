package net.javaguides.registration.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import net.javaguides.registration.controller.DbConnect;
import net.javaguides.registration.model.Item_Order;

public class OrderDao {
    public int getOrderNo() {
        Connection conn= DbConnect.getConn();
        int i = 1;
        try {
            String sql = "select * from orderr";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                i++;
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }
    
    public boolean saveOrder(List<Item_Order> ilist) {
        Connection conn= DbConnect.getConn();
        boolean f = false;
        try {
            String sql = "insert into orderr(order_id,user_name,email,address,phone,item_name,price,payment) values(?,?,?,?,?,?,?,?)";
            conn.setAutoCommit(false);
            PreparedStatement ps = conn.prepareStatement(sql);
            for(Item_Order io:ilist) {
                ps.setString(1, io.getOrder_id());
                ps.setString(2, io.getUser_name());
                ps.setString(3, io.getEmail());
                ps.setString(4, io.getFullAdd());
                ps.setString(5, io.getPhone());
                ps.setString(6, io.getItem_name());
                ps.setString(7, io.getPrice());
                ps.setString(8, io.getPayment());
                ps.addBatch();
            }
            
            int[] count = ps.executeBatch();
            conn.commit();
            f = true;
            conn.setAutoCommit(true);
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return f;
    }
    
    public List<Item_Order> getItem(String email) {
        Connection conn= DbConnect.getConn();
        List<Item_Order> list = new ArrayList<Item_Order>();
        Item_Order o = null;
        try {
            String sql = "select * from orderr where email=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                o = new Item_Order();
                o.setId(rs.getInt(1));
                o.setOrder_id(rs.getString(2));
                o.setUser_name(rs.getString(3));
                o.setEmail(rs.getString(4));
                o.setFullAdd(rs.getString(5));
                o.setPhone(rs.getString(6));
                o.setItem_name(rs.getString(7));
                o.setPrice(rs.getString(8));
                o.setPayment(rs.getString(9));
                list.add(o);
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    
    public List<Item_Order> getAllOrder() {
        Connection conn= DbConnect.getConn();
        List<Item_Order> list = new ArrayList<Item_Order>();
        Item_Order o = null;
        try {
            String sql = "select * from orderr";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                o = new Item_Order();
                o.setId(rs.getInt(1));
                o.setOrder_id(rs.getString(2));
                o.setUser_name(rs.getString(3));
                o.setEmail(rs.getString(4));
                o.setFullAdd(rs.getString(5));
                o.setPhone(rs.getString(6));
                o.setItem_name(rs.getString(7));
                o.setPrice(rs.getString(8));
                o.setPayment(rs.getString(9));
                list.add(o);
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
