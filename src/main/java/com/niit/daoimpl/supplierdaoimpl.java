package com.niit.daoimpl;

import java.util.List;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.Supplierdao;

import com.niit.model.Supplier;
@Repository("supplierdao")
public class supplierdaoimpl implements Supplierdao
{
	
	@Autowired
	SessionFactory sessionFactory;
	
	public supplierdaoimpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	
	@Transactional 
	public void addSupplier(Supplier supplier) {
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(supplier);	
		
	}
	@Transactional
	public void updateSupplier(Supplier supplier) {
		Session session=sessionFactory.getCurrentSession();
		session.update(supplier);
	}
	@Transactional
	public void deleteSupplier(int sid) {
		Session session=sessionFactory.getCurrentSession();
		Supplier supplier=(Supplier)session.get(Supplier.class,sid);
		session.delete(supplier);	
	}
	 
	public Supplier getSupplierBySupplierId(int sid) {
		Session session=sessionFactory.getCurrentSession();
		Supplier supplier=(Supplier)session.get(Supplier.class,sid);
		session.close();
		return supplier;
	}

	public List<Supplier> displayAll() 
	{
		Session session=sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<Supplier> list=session.createQuery("from Supplier").list();
		session.close();
		return list;
	}
	
}
