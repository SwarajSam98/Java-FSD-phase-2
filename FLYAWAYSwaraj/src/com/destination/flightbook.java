package com.destination;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/flight")
public class flightbook extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public flightbook() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		listDestination(request, response);
    
	}
		
		 private void listDestination(HttpServletRequest request, HttpServletResponse response)
		            throws ServletException, IOException {
		        DestinationDAO dao = new DestinationDAO();
		 
		        try {
		 
		            List<Destination> listDestination = dao.list();
		            request.setAttribute("listDestination", listDestination);
		 
		            RequestDispatcher dispatcher = request.getRequestDispatcher("choosedestination.jsp");
		            dispatcher.forward(request, response);
		 
		        } catch (SQLException e) {
		            e.printStackTrace();
		            throw new ServletException(e);
		        }
		    }
		 
		    @Override
		    protected void doPost(HttpServletRequest request, HttpServletResponse response)
		            throws ServletException, IOException {
		    	RequestDispatcher dispatcher= null;
		    	PrintWriter writer = response.getWriter();
		    	String city1= request.getParameter("city1");
		    	String city2=request.getParameter("city2");
		    	if(city1.equals(city2)) {
		    		writer.println("You cannot choose same destination");
		    		response.sendRedirect("choosedestination.jsp");
		    	}
		    	else {
		    		response.sendRedirect("payment.jsp");
		    	}
//		        int categoryId = Integer.parseInt(request.getParameter("destination"));
//		 
//		        request.setAttribute("selectedCatId", categoryId);
//		 
//		        listDestination(request, response);
		    }
	}


