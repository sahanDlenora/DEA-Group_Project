package net.javaguides.registration.model;

public class Register {
    private String name;
    private String email;
    private String phone;
    private String password;
    private String address;
    private String landmark;
    private String city;
    private String state;
    
    public Register() {
        super();
    }

    public Register(String name, String email, String phone, String password,String address,String landmark,String city,String state) {
        super();
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.password = password;
        this.address = address;
        this.landmark = landmark;
        this.city = city;
        this.state = state;
              
    }
    public Register(String name, String email, String phone, String password) {
        super();
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.password = password;
    
    }

    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address =address;
    }
    public String getLandmark() {
        return landmark;
    }
    public void setLandmark(String landmark) {
        this.landmark = landmark;
    }
    public String getCity() {
        return city;
    } 
    public void setCity(String city) {
        this.city = city;
    }
    public String getState() {
        return state;
    }
    public void setState(String state) {
        this.state = state;
    }
      
}
