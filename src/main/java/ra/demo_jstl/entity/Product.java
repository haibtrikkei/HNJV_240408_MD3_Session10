package ra.demo_jstl.entity;

import java.util.Date;

public class Product {
    private String id;
    private String name;
    private String producer;
    private int yearMaking;
    private Date expireDate;
    private int quantity;
    private double price;

    public Product() {
    }

    public Product(String id, String name, String producer, int yearMaking, Date expireDate, int quantity, double price) {
        this.id = id;
        this.name = name;
        this.producer = producer;
        this.yearMaking = yearMaking;
        this.expireDate = expireDate;
        this.quantity = quantity;
        this.price = price;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getProducer() {
        return producer;
    }

    public void setProducer(String producer) {
        this.producer = producer;
    }

    public int getYearMaking() {
        return yearMaking;
    }

    public void setYearMaking(int yearMaking) {
        this.yearMaking = yearMaking;
    }

    public Date getExpireDate() {
        return expireDate;
    }

    public void setExpireDate(Date expireDate) {
        this.expireDate = expireDate;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
