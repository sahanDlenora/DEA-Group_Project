package net.javaguides.registration.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
    
    public List<Item> getPlantItem(){
        List<Item> items= new ArrayList<Item>();
        try{
            query="select * from item_details where Icategory = 'Plant'";
            pst = this.conn.prepareStatement(query);
            rs = pst.executeQuery();
            while(rs.next()){
                Item row = new Item();
                row.setId(rs.getInt("Id"));
                row.setName(rs.getString("Iname"));
                row.setCategory(rs.getString("Icategory"));
                row.setPrice(rs.getDouble("Iprice"));
                row.setImage(rs.getString("img_name"));
                row.setStatus(rs.getString("Istatus"));
                
                items.add(row);
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return items;
    }
    
    public List<Item> getSeedsItem(){
        List<Item> items= new ArrayList<Item>();
        try{
            query="select * from item_details where Icategory = 'Seeds'";
            pst = this.conn.prepareStatement(query);
            rs = pst.executeQuery();
            while(rs.next()){
                Item row = new Item();
                row.setId(rs.getInt("Id"));
                row.setName(rs.getString("Iname"));
                row.setCategory(rs.getString("Icategory"));
                row.setPrice(rs.getDouble("Iprice"));
                row.setImage(rs.getString("img_name"));
                row.setStatus(rs.getString("Istatus"));
                
                items.add(row);
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return items;
    }
    
    public List<Item> getFertilizerItem(){
        List<Item> items= new ArrayList<Item>();
        try{
            query="select * from item_details where Icategory = 'Fertilizer'";
            pst = this.conn.prepareStatement(query);
            rs = pst.executeQuery();
            while(rs.next()){
                Item row = new Item();
                row.setId(rs.getInt("Id"));
                row.setName(rs.getString("Iname"));
                row.setCategory(rs.getString("Icategory"));
                row.setPrice(rs.getDouble("Iprice"));
                row.setImage(rs.getString("img_name"));
                row.setStatus(rs.getString("Istatus"));
                
                items.add(row);
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return items;
    }
    
    public List<Item> getEquipmentItem(){
        
        List<Item> items= new ArrayList<Item>();
        try{
            query="select * from item_details where Icategory = 'Equipment'";
            pst = this.conn.prepareStatement(query);
            rs = pst.executeQuery();
            while(rs.next()){
                Item row = new Item();
                row.setId(rs.getInt("Id"));
                row.setName(rs.getString("Iname"));
                row.setCategory(rs.getString("Icategory"));
                row.setPrice(rs.getDouble("Iprice"));
                row.setImage(rs.getString("img_name"));
                row.setStatus(rs.getString("Istatus"));
                
                items.add(row);
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return items;
    }
    
    
    public List<Item> getRecentItemHome(){
        List<Item> items= new ArrayList<Item>();
        try{
            query="select * from item_details where Istatus = 'Active' order by Id DESC";
            pst = this.conn.prepareStatement(query);
            rs = pst.executeQuery();
            int i=1;
            while(rs.next() && i<=4){
                Item row = new Item();
                row.setId(rs.getInt("Id"));
                row.setName(rs.getString("Iname"));
                row.setCategory(rs.getString("Icategory"));
                row.setPrice(rs.getDouble("Iprice"));
                row.setImage(rs.getString("img_name"));
                row.setStatus(rs.getString("Istatus"));
                
                items.add(row);
                
                i++;
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return items;
    }
    
    
    public List<Item> getPlantItemHome(){
        List<Item> items= new ArrayList<Item>();
        try{
            query="select * from item_details where Icategory = 'Plant' order by Id DESC";
            pst = this.conn.prepareStatement(query);
            rs = pst.executeQuery();
            int i=1;
            while(rs.next() && i<=4){
                Item row = new Item();
                row.setId(rs.getInt("Id"));
                row.setName(rs.getString("Iname"));
                row.setCategory(rs.getString("Icategory"));
                row.setPrice(rs.getDouble("Iprice"));
                row.setImage(rs.getString("img_name"));
                row.setStatus(rs.getString("Istatus"));
                
                items.add(row);
                
                i++;
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return items;
    }
    
    
    public List<Item> getSeedsItemHome(){
        List<Item> items= new ArrayList<Item>();
        try{
            query="select * from item_details where Icategory = 'Seeds' order by Id DESC";
            pst = this.conn.prepareStatement(query);
            rs = pst.executeQuery();
            int i=1;
            while(rs.next() && i<=4){
                Item row = new Item();
                row.setId(rs.getInt("Id"));
                row.setName(rs.getString("Iname"));
                row.setCategory(rs.getString("Icategory"));
                row.setPrice(rs.getDouble("Iprice"));
                row.setImage(rs.getString("img_name"));
                row.setStatus(rs.getString("Istatus"));
                
                items.add(row);
                
                i++;
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return items;
    }
    
    public List<Item> getFertilizerItemHome(){
        List<Item> items= new ArrayList<Item>();
        try{
            query="select * from item_details where Icategory = 'Fertilizer' order by Id DESC";
            pst = this.conn.prepareStatement(query);
            rs = pst.executeQuery();
            int i=1;
            while(rs.next() && i<=4){
                Item row = new Item();
                row.setId(rs.getInt("Id"));
                row.setName(rs.getString("Iname"));
                row.setCategory(rs.getString("Icategory"));
                row.setPrice(rs.getDouble("Iprice"));
                row.setImage(rs.getString("img_name"));
                row.setStatus(rs.getString("Istatus"));
                
                items.add(row);
                
                i++;
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return items;
    }
    
    
    public List<Item> getEquipmentItemHome(){
        List<Item> items= new ArrayList<Item>();
        try{
            query="select * from item_details where Icategory = 'Equipment' order by Id DESC";
            pst = this.conn.prepareStatement(query);
            rs = pst.executeQuery();
            int i=1;
            while(rs.next() && i<=4){
                Item row = new Item();
                row.setId(rs.getInt("Id"));
                row.setName(rs.getString("Iname"));
                row.setCategory(rs.getString("Icategory"));
                row.setPrice(rs.getDouble("Iprice"));
                row.setImage(rs.getString("img_name"));
                row.setStatus(rs.getString("Istatus"));
                
                items.add(row);
                
                i++;
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return items;
    }
       
}
