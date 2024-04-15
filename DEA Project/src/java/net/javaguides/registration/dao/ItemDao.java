package net.javaguides.registration.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import net.javaguides.registration.model.Item;

public class ItemDao {
    
    private Connection conn;
    private String query;
    private PreparedStatement pst;
    private ResultSet rs;

    public ItemDao(Connection conn) {
        this.conn = conn;
    }
    
    public List<Item> getAllItem(){
        List<Item> items= new ArrayList<Item>();
        try{
            query="select * from item_details";
            pst = this.conn.prepareStatement(query);
            rs = pst.executeQuery();
            while(rs.next()){
                Item row = new Item();
                row.setId(rs.getInt("Id"));
                row.setName(rs.getString("Iname"));
                row.setCategory(rs.getString("Icategory"));
                row.setPrice(rs.getDouble("Iprice"));
                row.setImage(rs.getString("img_name"));
                
                items.add(row);
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return items;
    }
    
}
