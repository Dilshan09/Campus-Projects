package com.customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CustomerInsert")
public class CustomerInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private RequestDispatcher RequestDispatcher;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String FirstName = request.getParameter("q3_fullName3[first]");
		String LastName = request.getParameter("q3_fullName3[last]");
		String Email = request.getParameter("q4_emailAddress");
		String Phone = request.getParameter("q6_phoneNumber[full]");
		String Address = request.getParameter("q19_addressOf[addr_line1]");
		String Address2 = request.getParameter("Street Address Line 2");
		String City = request.getParameter("q19_addressOf[city]");
		String State = request.getParameter("q19_addressOf[state]");
		String Postal = request.getParameter("q19_addressOf[postal]");
		String Type = request.getParameter("q7_whatType[]");
		String Goals = request.getParameter("q8_whatAre8[]");
		String EventName = request.getParameter("q9_whatIs9");
		String Budject = request.getParameter("q12_whatIs");
		String WhoPay = request.getParameter("q10_whoPays");
		String Text = request.getParameter("q20_whatAre20");
		String Attendence = request.getParameter("q16_howMany");
		String RunTime = request.getParameter("q22_howLong");
		String Repeating = request.getParameter("q23_howOften");
		String Month = request.getParameter("q13_whatIs13[month]");
		String Day = request.getParameter("q13_whatIs13[day]");
		String Year = request.getParameter("q13_whatIs13[year]");
		
		boolean isTrue;
		
		isTrue = CustomerDBUtil.insertEventDetails(FirstName, LastName, Email, Phone, Address, Address2, City, State, Postal, Type, Goals, EventName, Budject, WhoPay, Text, Attendence, RunTime, Repeating, Month, Day, Year);
		
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");//direct to success msg page
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("eventDetails.jsp");//direct to unsuccess msg page
			dis2.forward(request, response);

		}
	}

	
}
