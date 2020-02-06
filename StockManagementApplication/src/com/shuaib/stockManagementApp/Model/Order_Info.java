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
public class Order_Info {
  @Id
  @GenericGenerator(name="auto", strategy="increment")
  @GeneratedValue(generator = "auto")
  private int order_id;
  private double total_price;
  private double total_price_with_gst;
  
  
  @ManyToMany(cascade=CascadeType.ALL)
  @JoinTable(name="Order_History_Info",joinColumns=@JoinColumn(name="order_id"),inverseJoinColumns=@JoinColumn(name="product_id"))
	
  private List<Product_Info> plist;


public int getOrder_id() {
	return order_id;
}


public void setOrder_id(int order_id) {
	this.order_id = order_id;
}


public double getTotal_price() {
	return total_price;
}


public void setTotal_price(double total_price) {
	this.total_price = total_price;
}


public double getTotal_price_with_gst() {
	return total_price_with_gst;
}


public void setTotal_price_with_gst(double total_price_with_gst) {
	this.total_price_with_gst = total_price_with_gst;
}


public List<Product_Info> getPlist() {
	return plist;
}


public void setPlist(List<Product_Info> plist) {
	this.plist = plist;
}
  
  
  
}
