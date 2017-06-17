package com.niit.person;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Person;




@Repository("PersonDao")
@Transactional
public class PersonDaoImpl implements PersonDao {
	@Autowired
	private SessionFactory sessionFactory;

	public void savePerson(Person person) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.save(person);
		session.persist(person);
		transaction.commit();
		session.flush();
		session.close();

	}

	public void saveperson(Person person) {
		// TODO Auto-generated method stub
		
	}

	

	
		
	}


