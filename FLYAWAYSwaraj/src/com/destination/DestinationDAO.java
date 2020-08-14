package com.destination;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DestinationDAO {
	 String databaseURL = "jdbc:mysql://localhost:3306/flyaway_db";
	    String user = "root";
	    String password = "Sss1998$1707";
	     
	    public List<Destination> list() throws SQLException {
	        List<Destination> listCategory = new ArrayList<>();
	         
	        try (Connection connection = DriverManager.getConnection(databaseURL, user, password)) {
	            String sql = "SELECT * FROM destination ORDER BY country";
	            Statement statement = connection.createStatement();
	            ResultSet result = statement.executeQuery(sql);
	             
	            while (result.next()) {
	                int id = result.getInt("id");
	                String country = result.getString("country");
	                Destination category = new Destination(id, country);
	                     
	                listCategory.add(category);
	            }          
	             
	        } catch (SQLException ex) {
	            ex.printStackTrace();
	            throw ex;
	        }      
	         
	        return listCategory;
	    }

}
