package com.niit.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.dao.CategoryDao;
import com.niit.model.Category;

@Repository
public class CategoryDaoImpl implements CategoryDao {
	@Autowired

	private SessionFactory sessionFactory;

	public void saveCategory(Category category) {
		Session session = sessionFactory.openSession();
		Transaction transaction = (Transaction) session.beginTransaction();
		System.out.println("PRODUCT ID BEFORE INSERTION " + category.getCid());
		session.saveOrUpdate(category);
		System.out.println("PRODUCT ID AFTER INSERTION " + category.getCid());
		transaction.commit();
		session.close();
	}

	public List<Category> getAllCategories() {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		//Query query = session.createQuery("FROM Category");
		List<Category> categories =  session.createQuery("FROM Category",Category.class).list();
		transaction.commit();
		session.close();
		return categories;
	}
}
