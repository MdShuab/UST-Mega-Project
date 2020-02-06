package com.shuaib.stockManagementApp.dao;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Disjunction;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.shuaib.stockManagementApp.Model.Order_Info;
import com.shuaib.stockManagementApp.Model.Product_Info;
@Component
public class MyDAOImp implements MyDAO{
@Autowired
SessionFactory sf;
	@Override
	public void padd(Product_Info pdto) {
		// TODO Auto-generated method stub
		Session ss=sf.openSession();
		ss.save(pdto);
		ss.beginTransaction().commit();
		ss.close();
		System.out.println("Product Add Successfully!");
	}
	@Override
	public List<Product_Info> search(String sr) {
		// TODO Auto-generated method stub
			Session	ss=sf.openSession();
			Criteria cr=ss.createCriteria(Product_Info.class);
			//cr.add(Restrictions.ilike("pname", sr, MatchMode.ANYWHERE));
			Criterion pname=Restrictions.ilike("pname", sr,MatchMode.ANYWHERE);
			Criterion category=Restrictions.ilike("category", sr,MatchMode.ANYWHERE);
			Criterion company=Restrictions.ilike("company", sr,MatchMode.ANYWHERE);
			Criterion complete=Restrictions.disjunction().add(pname).add(category).add(company);
			cr.add(complete);
			List<Product_Info>plist=cr.list();
			ss.close();
			return plist;
	}
	@Override
	public List<Product_Info> showProduct() {
		// TODO Auto-generated method stub
			Session	ss=sf.openSession();
			Criteria cr=ss.createCriteria(Product_Info.class);
			List<Product_Info>plist= cr.list();
			return plist;
	}
	@Override
	public List<Product_Info> updateProduct(Product_Info pdto) {
		
		Session	ss=sf.openSession();
		ss.update(pdto);
		ss.beginTransaction().commit();
		 Criteria cr=ss.createCriteria(Product_Info.class);
		 List<Product_Info>plist= cr.list();

		return plist;
	}
	@Override
	public List<Product_Info> addCart() {
		Session	ss=sf.openSession();
		Criteria cr=ss.createCriteria(Product_Info.class);
		List<Product_Info>plist= cr.list();
		return plist;
	}
	@Override
	public List<Order_Info> cartAdded(Product_Info pdto) {
		// TODO Auto-generated method stub
		
		List<Order_Info>plist=new ArrayList<Order_Info>();
		int id=pdto.getProduct_id();
		double ttp=((pdto.getPrice()*pdto.getQuantity())*1.18);
		Session	ss=sf.openSession();
		
		Product_Info mpdto=ss.load(Product_Info.class,id);
		if(pdto.getQuantity()<=mpdto.getQuantity()) {
			
		 mpdto.setQuantity((mpdto.getQuantity()-pdto.getQuantity()));
		Order_Info odto=new Order_Info();
		odto.setTotal_price((pdto.getPrice()*pdto.getQuantity()));
		odto.setTotal_price_with_gst(ttp);
		
		plist=mpdto.getOlist();
		plist.add(odto);
		ss.saveOrUpdate(mpdto);
		ss.beginTransaction().commit();
		
		Criteria cr=ss.createCriteria(Order_Info.class);
		List<Order_Info>olist=cr.list();
		
		
		return olist;
		}else {
			return plist;
		}
	}
	@Override
	public List<Order_Info> showCart() {
		Session	ss=sf.openSession();
		Criteria cr=ss.createCriteria(Order_Info.class);
		List<Order_Info>olist=cr.list();
		return olist;
	}
	@Override
	public boolean deleteProduct(int pid) {
		// TODO Auto-generated method stub
		Session	ss=sf.openSession();
		
		Product_Info mpdto=ss.get(Product_Info.class,pid);
		if(mpdto!=null) {
		ss.delete(mpdto);
		ss.beginTransaction().commit();
		return true;
		}else {
			return false;
		}
	}

}
