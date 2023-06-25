package com.payment;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/paymentInsert")
public class paymentInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

  
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String Name = request.getParameter("name");
		String Card = request.getParameter("card");
		String Date = request.getParameter("date");
		String CVC = request.getParameter("cvc");
		String Amount = request.getParameter("amount");
		

		boolean isTrue;
		
		isTrue = paymentDBUtil.paymentinsert(Name, Card, Date, CVC, Amount);
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("success1.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess1.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
