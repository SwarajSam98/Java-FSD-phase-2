package com.flyaway.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.flyaway.entity.Airport;
import com.flyaway.entity.Flight;
import com.flyaway.entity.FlightBooking;
import com.flyaway.entity.Passenger;



public class SessionUtil {	
	
	// static
	private static SessionUtil instance = new SessionUtil();
	
    private static SessionFactory sessionFactory;
    
    public static SessionUtil getInstance() {
    	return instance;
    }
    
    private SessionUtil() {
    	Configuration configuration = new Configuration();
    	configuration.configure("hibernate.cfg.xml")
    	.addAnnotatedClass(Airport.class)
    	.addAnnotatedClass(Flight.class)
    	.addAnnotatedClass(Passenger.class)
    	.addAnnotatedClass(FlightBooking.class);
    	sessionFactory = configuration.buildSessionFactory();    	
    }
    
    public static Session getSession() {
    	Session session =getInstance().sessionFactory.openSession();
    	return session;
    }
}
