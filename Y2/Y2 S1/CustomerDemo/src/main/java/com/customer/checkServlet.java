package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/checkServlet")
public class checkServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {//We set all things in post so we use dopost method

		String FirstName = request.getParameter("name");//check jsp names give as parameters
		String Email = request.getParameter("email");
		
		try {
		     List<Customer> cusDetails = CustomerDBUtil.validate(FirstName, Email);
		     request.setAttribute("cusDetails", cusDetails);
		     //set values for jsp view
		}	
		catch (Exception e) {
			e.printStackTrace();
		}
		
		//find our navigate page
		RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
		dis.forward(request, response);
		
	}

}
