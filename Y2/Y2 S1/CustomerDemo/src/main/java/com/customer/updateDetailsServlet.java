package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updateDetailsServlet")
public class updateDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("cusid");
		String first = request.getParameter("first");
		String last = request.getParameter("last");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String address2 = request.getParameter("address2");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String postal = request.getParameter("postal");
		String type = request.getParameter("type");
		String goals = request.getParameter("goals");
		String name = request.getParameter("name");
		String budject = request.getParameter("budject");
		String who = request.getParameter("who");
		String text = request.getParameter("text");
		String attendence = request.getParameter("attendence");
		String run = request.getParameter("run");
		String repeat = request.getParameter("repeat");
		String month = request.getParameter("month");
		String day = request.getParameter("day");
		String year = request.getParameter("year");

		//to catch db util value
		boolean isTrue;
		
		isTrue = CustomerDBUtil.updatedetails(id, first, last, email, phone, address, address2, city, state, postal, type, goals, name, budject, who, text, attendence, run, repeat, month, day, year);
	
		
		if(isTrue == true) {
			
			List<Customer> cusDetails = CustomerDBUtil.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Customer> cusDetails = CustomerDBUtil.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
	
	}

	
}
