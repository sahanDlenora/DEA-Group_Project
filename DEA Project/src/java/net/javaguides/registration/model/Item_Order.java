package net.javaguides.registration.model;

public class Item_Order {
   private int id;
   private String order_id;
   private String user_name;
   private String email;
   private String phone;
   private String fullAdd;
   
   private String item_name;
   private String price;
   
   private String payment;
   
   public Item_Order() {
       super();
   }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public String getOrder_id() {
        return order_id;
    }

    public void setOrder_id(String order_id) {
        this.order_id = order_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getFullAdd() {
        return fullAdd;
    }

    public void setFullAdd(String fullAdd) {
        this.fullAdd = fullAdd;
    }
    
    public String getItem_name() {
        return item_name;
    }

    public void setItem_name(String item_name) {
        this.item_name = item_name;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getPayment() {
        return payment;
    }

    public void setPayment(String payment) {
        this.payment = payment;
    }

    @Override
    public String toString() {
        return "Item_Order{" + "id=" + id + ", order_id=" + order_id + ", user_name=" + user_name + ", email=" + email + ", phone=" + phone + ", fullAdd=" + fullAdd + ", item_name=" + item_name + ", price=" + price + ", payment=" + payment + '}';
    }

   

    

    
   
    
   
}
