package newEventType;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/eventTypeInsert")
public class eventTypeInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String eventType = request.getParameter("eventtype");
		
		String eventDescript = request.getParameter("descript");
		
		String v1 = request.getParameter("venue1");
		String v2 = request.getParameter("venue2");
		String v3 = request.getParameter("venue3");
		String v4 = request.getParameter("venue4");
		String v5 = request.getParameter("venue5");
		
		//check boxes 
		String s1 = request.getParameter("service1");
		String s2 = request.getParameter("service2");
		String s3 = request.getParameter("service3");
		
		String ns = request.getParameter("newservice");
				
		String cs = request.getParameter("cost");
		
		boolean isTrue;
		
		isTrue = eventTypeDBUtil.insertEventType(eventType,eventDescript,v1,v2,v3,v4,v5,s1,s2,s3,ns,cs);
		
		
		if(isTrue == true) {
			RequestDispatcher dis1 = request.getRequestDispatcher("success.jsp");
			dis1.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
			
	}

}
