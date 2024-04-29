package net.javaguides.registration.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import net.javaguides.registration.controller.DbConnect;
import static net.javaguides.registration.controller.DbConnect.getConn;
import net.javaguides.registration.model.Register;

public class RegisterDao {
    
    public String insert(Register register) {
        
        Connection conn= DbConnect.getConn();
        String result = "Registration successfully...";
        String sql =  "insert into user(name,email,phone_number,password) values(?,?,?,?)";
        
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, register.getName());
            ps.setString(2, register.getEmail());
            ps.setString(3, register.getPhone());
            ps.setString(4, register.getPassword());
            
            ps.executeUpdate();
              
        } catch (SQLException ex) {
            ex.printStackTrace();
            result = "Data not entered";
        }
        return result;
    }
    public boolean validate(Register register) {
        Connection conn= DbConnect.getConn();
        boolean status = false;
        String sql = "select * from user  where name = ? or email = ?";
        PreparedStatement ps;
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, register.getName());
            ps.setString(2, register.getEmail());
            
            ResultSet rs = ps.executeQuery();
            status = rs.next();
            

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return status;
    }
     public boolean checkPassword(int id,String ps)
    {
        boolean f =false;
        PreparedStatement pst;
        try
        {
            String sql ="SELECT * FROM user WHERE id=? AND password=?";
            pst =conn.PrepareStatement(sql);
            
            pst.setInt(1,id);
            pst.setString(2,ps);
            
            ResultSet rs = pst.executeQuery();
            while(rs.next())
            {
                f = true;
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
            
        }
        return f;
    }
    public boolean UpdateProfile(User us )
    {
          Connection conn= DbConnect.getConn();
          boolean f =false;
        
        try {
            String sql =  "UPDATE user SET name=?,email=?,phone_number=? WHERE id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, us.getName());
            ps.setString(2,us.getEmail());
            ps.setString(3, us.getPhone());
            ps.setInt(4,us.getId());
           
            int i = ps.executeUpdate();
            if(i==1)
            {
                f = true;
            }
            ps.executeUpdate();
              
        } catch (SQLException ex) {
            ex.printStackTrace();
          
        }
      
        return false;
    }
}
