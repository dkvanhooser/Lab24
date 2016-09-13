package com.vanhooser.lab24;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

public class DAO {
	private static SessionFactory factory;

	private static void setupFactory() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception e) {
			;
		}

		Configuration configuration = new Configuration();
		// modify these to match your XML files
		configuration.configure("hibernate.cfg.xml");
		configuration.addResource("user.hbm.xml");
		ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
				.applySettings(configuration.getProperties()).build();
		factory = configuration.buildSessionFactory(serviceRegistry);
	}

	public static int addUser(User p) {
		if (factory == null)
			setupFactory();
		Session hibernateSession = factory.openSession();
		hibernateSession.getTransaction().begin();
		// save this specific record
		int i = (Integer) hibernateSession.save(p);
		hibernateSession.getTransaction().commit();
		hibernateSession.close();
		return i;
	}

	public static List<User> getAllUsers() {
		if (factory == null)
			setupFactory();
		Session hibernateSession = factory.openSession();
		hibernateSession.getTransaction().begin();
		List<User> users = hibernateSession.createQuery("FROM User").list();
		hibernateSession.getTransaction().commit();
		hibernateSession.close();

		return users;
	}
	public static List<User> getOneUser(int id) {
		if (factory == null)
			setupFactory();
		Session hibernateSession = factory.openSession();
		hibernateSession.getTransaction().begin();
		List<User> user = hibernateSession.createQuery("FROM User WHERE id = "+ id).list();
		hibernateSession.getTransaction().commit();
		hibernateSession.close();
	
        

		return user;
	}
	
	
	public static void deleteUser(int id) {
		if (factory == null)
			setupFactory();
		 // Get current session
		 Session hibernateSession = factory.openSession();

		 // Begin transaction
		 hibernateSession.getTransaction().begin();

		 //save this specific record
		 hibernateSession.createQuery("DELETE FROM User WHERE id = "+ id).executeUpdate();
		
		 // Commit transaction
		 hibernateSession.getTransaction().commit();
		 
		 hibernateSession.close();  
				    
		  
	}
	public static void modifyUser(User user) {
		if (factory == null)
			setupFactory();
		 // Get current session
		 Session hibernateSession = factory.openSession();
		 // Begin transaction
		 hibernateSession.getTransaction().begin();
		 user.setID(user.getID());
		 hibernateSession.merge(user);
		 // Commit transaction
		 hibernateSession.getTransaction().commit();
		 
		 hibernateSession.close();  
	}
}
