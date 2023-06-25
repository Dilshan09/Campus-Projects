package CustomerLogin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteCustomerServlet1")
public class DeleteCustomerServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("cusid");
		boolean isTrue;
		
		isTrue = CustomerDBUtil1.deleteCustomer(id);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("customerinsert.jsp");
			dispatcher.forward(request, response);
		}
		else {
			List<Customer1> cusDetails = CustomerDBUtil1.getCustomerDetails(id);
			request.setAttribute("cusDetails",cusDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("useraccount2.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
	}

}
