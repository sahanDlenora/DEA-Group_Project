package net.javaguides.registration.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import net.javaguides.registration.controller.DbConnect;
import net.javaguides.registration.model.Cart;
import net.javaguides.registration.model.Item;
import net.javaguides.registration.model.Login;
import net.javaguides.registration.model.Register;

public class CartDao {
    
    
    public List<Cart> getItemByUser (int user_id) {
        List<Cart> list = new ArrayList<Cart>();
        Connection conn= DbConnect.getConn();
        Cart cart = null;
        double totalPrice = 0;
        
        try {
            String sql = "select * from cart where user_id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, user_id);
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()) {
                cart = new Cart();
                cart.setCart_id(rs.getInt(1));
                cart.setItem_id(rs.getInt(2));
                cart.setUser_id(rs.getInt(3));
                cart.setItem_name(rs.getString(4));
                cart.setPrice(rs.getDouble(5));
                
                totalPrice = totalPrice + rs.getDouble(6);
                cart.setTotal_price(totalPrice);
                
                list.add(cart);
                
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    
    public boolean deleteItem(int item_id) {
        Connection conn= DbConnect.getConn();
        boolean f = false;
        
        try {
            String sql = "delete from cart where item_id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, item_id);
            
            int i = ps.executeUpdate();
            if(i==1) {
                f=true;
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return f;
    }
       
}
