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
        String sql =  "insert into user(name,email,phone,password) values(?,?,?,?)";
        
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
}
