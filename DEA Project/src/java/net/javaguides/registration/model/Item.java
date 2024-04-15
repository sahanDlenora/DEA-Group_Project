package net.javaguides.registration.model;

public class Item {
    private int Id;
     private String name;
     private double price;
     private String category;
     private String status;
     private String image;

    public Item() {
    }
    
    public Item(int Id, String name, double price, String category, String status, String image) {
        this.Id = Id;
        this.name = name;
        this.price = price;
        this.category = category;
        this.status = status;
        this.image = image;
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "Item{" + "Id=" + Id + ", name=" + name + ", price=" + price + ", category=" + category + ", status=" + status + ", image=" + image + '}';
    }
    
    
     
     
}
