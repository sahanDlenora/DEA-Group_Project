package net.javaguides.registration.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import net.javaguides.registration.controller.DbConnect;
import net.javaguides.registration.model.Login;
import org.apache.tomcat.jni.User;
import static sun.security.jgss.GSSUtil.login;

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
                lo = new Login(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5));
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return lo;
    }
    public boolean UpdateProfile(Login login )
    {
          Connection conn= DbConnect.getConn();
          boolean f =false;
        
        try {
            String sql =  "UPDATE user SET name=?,email=?,phone_number=? WHERE id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, login.getName());
            ps.setString(2,login.getEmail());
            ps.setString(3, login.getPhone());
            ps.setInt(4,login.getId());
            int i = ps.executeUpdate();
            if(i==1)
            {
                f = true;
            }
            ps.executeUpdate();
              
        } catch (SQLException ex) {
            ex.printStackTrace();
          
        }
      
        return f;
    }
    
}
