package net.javaguides.registration.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import net.javaguides.registration.controller.DbConnect;
import net.javaguides.registration.model.Login;

public class LoginDao {

    public Login getLogin(String em, String ps) {
        Connection conn= DbConnect.getConn();
        Login lo = null;
        try {
            String sql = "select * from user where email=? and password=?";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, em);
            pst.setString(2, ps);
            
            ResultSet rs = pst.executeQuery();
            if(rs.next()){
                lo = new Login(rs.getString(1),rs.getString(2),rs.getString(3));
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return lo;
    }

}
