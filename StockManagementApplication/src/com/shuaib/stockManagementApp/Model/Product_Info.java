package com.shuaib.stockManagementApp.Model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

import org.hibernate.annotations.GenericGenerator;

@Entity
public class Product_Info {
  @Id
  
  @GenericGenerator(name="auto", strategy="increment")
	@GeneratedValue(generator = "auto")
  private int product_id;
  private String pname;
  private String category;
  private String company;
  private int quantity;
  private double price;
  
  @ManyToMany(cascade=CascadeType.ALL)
  @JoinTable(name="Order_History_Info",joinColumns=@JoinColumn(name="product_id"),inverseJoinColumns=@JoinColumn(name="order_id"))
  private List<Order_Info> olist;

public int getProduct_id() {
	return product_id;
}

public void setProduct_id(int product_id) {
	this.product_id = product_id;
}

public String getPname() {
	return pname;
}

public void setPname(String pname) {
	this.pname = pname;
}

public String getCategory() {
	return category;
}

public void setCategory(String category) {
	this.category = category;
}

public String getCompany() {
	return company;
}

public void setCompany(String company) {
	this.company = company;
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

public List<Order_Info> getOlist() {
	return olist;
}

public void setOlist(List<Order_Info> olist) {
	this.olist = olist;
}
  
  
  
  
}
