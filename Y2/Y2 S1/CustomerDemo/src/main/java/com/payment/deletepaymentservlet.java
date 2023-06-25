package com.payment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/deletepaymentservlet")
public class deletepaymentservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String card = request.getParameter("card");
		String date = request.getParameter("date");
		String cvc = request.getParameter("cvc");
		String amount = request.getParameter("amount");
		
	
		boolean isTrue;
		isTrue = paymentDBUtil.deletePayment(id, name, card, date, cvc, amount);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("insertform.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("viewpaymentdetails.jsp");
			dispatcher.forward(request, response);
		}
	}

}
