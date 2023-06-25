package newEventType;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteEventTypeServlet")
public class deleteEventTypeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String eventID = request.getParameter("eventID");
		String eventType = request.getParameter("eventType");
		String eventDescription = request.getParameter("eventDescription");
		String venue1 = request.getParameter("venue1");
		String venue2 = request.getParameter("venue2");
		String venue3 = request.getParameter("venue3");
		String venue4 = request.getParameter("venue4");
		String venue5 = request.getParameter("venue5");
		String service1 = request.getParameter("service1");
		String service2 = request.getParameter("service2");
		String service3 = request.getParameter("service3");
		String newservice = request.getParameter("newservice");
		String cost = request.getParameter("cost");
		
		boolean isTrue;
		isTrue = eventTypeDBUtil.deleteEventType(eventID, eventType, eventDescription, venue1, venue2, venue3, venue4, venue5, service1, service2, service3, newservice, cost);
		
		if (isTrue == true) {
			RequestDispatcher d6 = request.getRequestDispatcher("index.jsp");
			d6.forward(request, response);
		}
		else {
			RequestDispatcher d7 = request.getRequestDispatcher("unsuccess.jsp");
			d7.forward(request, response);
		}
		
	}

}
