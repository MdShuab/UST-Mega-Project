package com.shuaib.stockManagementApp.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.shuaib.stockManagementApp.Model.Order_Info;
import com.shuaib.stockManagementApp.Model.Product_Info;
import com.shuaib.stockManagementApp.dao.MyDAO;

@Component
public class MyServiceImp1 implements MyService{
  @Autowired
  MyDAO mdao;
	@Override
	public void padd(Product_Info pdto) {
		// TODO Auto-generated method stub
		mdao.padd(pdto);
		
	}
	@Override
	public List<Product_Info> search(String sr) {
		// TODO Auto-generated method stub
		 List<Product_Info>plist=mdao.search(sr);
		return plist;
	}
	@Override
	public List<Product_Info> showProduct() {
		// TODO Auto-generated method stub
		return mdao.showProduct();
	}
	@Override
	public List<Product_Info> updateProduct(Product_Info pdto) {
		// TODO Auto-generated method stub
		return mdao.updateProduct(pdto);
	}
	@Override
	public List<Product_Info> addCart() {
		// TODO Auto-generated method stub
		return mdao.addCart();
	}
	@Override
	public List<Order_Info> cartAdded(Product_Info pdto) {
		// TODO Auto-generated method stub
		return mdao.cartAdded(pdto);
	}
	@Override
	public List<Order_Info> showCart() {
		// TODO Auto-generated method stub
		return mdao.showCart();
	}
	@Override
	public boolean deleteProduct(int pid) {
		// TODO Auto-generated method stub
		return mdao.deleteProduct(pid);
	}

	
}
