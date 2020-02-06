package com.shuaib.stockManagementApp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.shuaib.stockManagementApp.Model.Order_Info;
import com.shuaib.stockManagementApp.Model.Product_Info;
import com.shuaib.stockManagementApp.service.MyService;

@Component
@RequestMapping("/")
public class MyController {

	@Autowired
	MyService ms;
	
	@RequestMapping("/Register")
	public String m1() {
		
		return "Register";
				
	}
	@RequestMapping("/AddProduct")
	public String m2() {
		
		return "AddProduct";
		
	}
	@RequestMapping("/Home")
	public String m3() {
		
		return "Home";
		
	}
	
	@RequestMapping(value="/ProductAdd",method=RequestMethod.POST)
	public String regProduct(@ModelAttribute Product_Info pdto) {
		ms.padd(pdto);
		return "Home";
		
	}
	
	@RequestMapping("/Search")
	public ModelAndView search(HttpServletRequest req ) {
		
		String sr=req.getParameter("search");
	  List<Product_Info>plist=ms.search(sr);
	  if(plist.isEmpty()) {
		  return new ModelAndView("Search", "msg","Product Is Not Available");
	  }else {
		  return new ModelAndView("Search", "plist",plist);
	  }
		
	}
	@RequestMapping( value="/UpdateProduct", method = RequestMethod.POST )
	public ModelAndView updateProduct(@ModelAttribute Product_Info pdto ) {
		
		List<Product_Info>plist=ms.updateProduct(pdto);
		
		return new ModelAndView("ShowProductAvl", "plist",plist);
		
	}
	@RequestMapping( value="/CartAdded", method = RequestMethod.POST )
	public ModelAndView CartAdded(@ModelAttribute Product_Info pdto ) {
		
		List<Order_Info>plist=ms.cartAdded(pdto);
		if(plist.isEmpty()) {
			return new ModelAndView("Home", "msg","Quantity Out of Stock!");
		}else {
			return new ModelAndView("Home", "msg","Cart Added");
		}
		
	}
	@RequestMapping("/AddCartPro")
	public ModelAndView addCart(@ModelAttribute Product_Info pdto ) {
		
		List<Product_Info>plist=ms.addCart();
		
		return new ModelAndView("AddCart", "plist",plist);
		
	}
	@RequestMapping("/DeleteProduct")
	public ModelAndView addCart(@RequestParam int pid ) {
		
		boolean b=ms.deleteProduct(pid);
		if(b) {
			return new ModelAndView("Home", "msg","Deletion Successfully!");
		}else {
			return new ModelAndView("Home", "msg","Deletion Failed");
		}
		
	}
	@RequestMapping("/ShowCart")
	public ModelAndView showCart(@ModelAttribute Product_Info pdto ) {
		
		List<Order_Info>plist=ms.showCart();
		
		return new ModelAndView("CartShow", "plist",plist);
		
	}
	@RequestMapping("/ShowProduct")
	public ModelAndView showProduct(HttpServletRequest req ) {
		
		List<Product_Info>plist=ms.showProduct();
		return new ModelAndView("ShowProductAvl", "plist",plist);
		
	}
	
}
