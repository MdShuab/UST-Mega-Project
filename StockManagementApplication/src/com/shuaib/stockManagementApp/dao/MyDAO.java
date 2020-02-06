package com.shuaib.stockManagementApp.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.shuaib.stockManagementApp.Model.Order_Info;
import com.shuaib.stockManagementApp.Model.Product_Info;

public interface MyDAO {
	void padd(Product_Info pdto);
	public List<Product_Info> search(String sr);
	public List<Product_Info> showProduct();
	public List<Product_Info> updateProduct(Product_Info pdto);
	public List<Product_Info> addCart();
	public List<Order_Info> cartAdded(Product_Info pdto);
	public List<Order_Info> showCart();
	public boolean deleteProduct(int pid);
}
