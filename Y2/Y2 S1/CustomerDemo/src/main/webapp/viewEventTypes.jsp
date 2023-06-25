<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link href="css/style.css" rel="stylesheet" type="text/css"/>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body {
  background-color: #92a8d1;
}
.p2 {
  font-family: Arial, Helvetica, sans-serif;
}

table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {background-color: #f2f2f2;}

.button {
	pointer-events: auto;
	cursor: pointer;
	background: #e7e7e7;
	border: none;
	padding: 1.5rem 3rem;
	margin: 0;
	font-family: inherit;
	font-size: inherit;
	position: relative;
	display: inline-block;
	
}

</style>
<body>

<header>
            <a class="logo" href="HomePage.html"><img src="images/one.jpg" alt="logo"></a>
            <nav>
                <ul class="nav__links">
                    <li><a href="#">HOME</a></li>
                    <li><a  href="#">ABOUT US</a></li>

                    <li class="dropdown">
                        <a href="#" class="dropbtn">EVENTS</a>
                        <div class="dropdown-content">
                            <a href="#">Booking</a>
                            <a href="#">Edit booking</a>
                        </div>
                    <li><a href="#">CONTACT</a></li>
                    <li class="dropdown">
                        <a href="#" >PAYMENT</a>
                      
                    
                </ul>
            </nav>
            <a class="cta" href="login.html">LOGIN/SIGN UP</a>
            <a class="logo" href="/"><img src="images/logo.png" alt="logo"></a>

        </header>
 <br>
 <br>
 <h1 class = "p2" align="center">Event Types</h1>
 <br>
 <br>

<%
try {

     //Retrive data from the database in tabel format
     Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eventplanner","root","db|OOP@2022");
     String sql = "select * from eventtypes";
     PreparedStatement stmt = con.prepareStatement(sql);
     ResultSet rs = stmt.executeQuery();
     if(rs.next()==false) {
    	 System.out.println("No Records to Display");
     }
     else {%>
    	 
     <table class = "p2" border = 1>
    	 <tr>
            <th>eventID</th>
            <th>eventType</th>
            <th>eventDescription</th>
            <th>venue1</th>
            <th>venue2</th>
            <th>venue3</th>
            <th>venue4</th>
            <th>venue5</th>
            <th>service1</th>
            <th>service2</th>
            <th>service3</th>
            <th>newservice</th>
            <th>cost</th>
          </tr> <%
          do { %>
          
              <tr>
              <td><%=rs.getInt(1)%></td>
              <td><%=rs.getString(2)%></td>
              <td><%=rs.getString(3)%></td>
              <td><%=rs.getString(4)%></td>
              <td><%=rs.getString(5)%></td>
              <td><%=rs.getString(6)%></td>
              <td><%=rs.getString(7)%></td>
              <td><%=rs.getString(8)%></td>
              <td><%=rs.getString(9)%></td>
              <td><%=rs.getString(10)%></td>
              <td><%=rs.getString(11)%></td>
              <td><%=rs.getString(12)%></td>
              <td><%=rs.getDouble(13)%></td>
              </tr> <% 
        	  
          }while(rs.next()); %>
    	 
    	 
     </table> <% 
     }
     
}
     
catch (Exception e){
	e.printStackTrace();
}

%>   


      <br>
      <br>

     <div class = "p2" align="center">
     
     <button class = "button" onclick="document.location='admin.jsp'">Home</button>
     
     </div>
     
<footer class="footer-distributed">

            <div class="footer-left">
                <a class="logo" href="#"><img src="images/one.jpg" alt="logo"></a>
                <!--<h3><span></span></h3>-->

                <p class="footer-links">
                    <a  href="#">Home</a>
                    <br>
                    <a href="#">About</a>
                    <br>
                    <a href="#">Events</a>
                    <br>
                    <a href="#">Payment</a>
                    <br>
                    <a href="#">Contact</a>
                </p>

                <p class="footer-company-name">TheOneEvent &copy; 2022</p>
            </div>

            <div class="footer-center">
                <br><br>
                <div>
                    <i class="fa fa-map-marker"></i>
                    <p><span>21 Isurupura Road</span> Malabe, Sri Lanka</p>
                </div>

                <div>
                    <i class="fa fa-phone"></i>
                    <p>+94 77 222 2999</p>
                </div>

                <div>
                    <i class="fa fa-envelope"></i>
                    <p><a href="mailto:support@company.com">theOneEvent@srevice.com</a></p>
                </div>

            </div>

            <div class="footer-right">
                <br>
                <p class="footer-company-about">
                    <span>About the company</span>
                    This is a website of a online event planning service,
                    we produce all the event services .
                </p>

                <div class="footer-icons">

                    <a href="#"><i class="fa fa-facebook"><img src="images/visa-2.png" width="20" height="20"></i></a>
                    <a href="#"><i class="fa fa-twitter"><img src="images/maestro.png" width="20" height="20"></i></a>
                    <a href="#"><i class="fa fa-linkedin"><img src="images/paypal.png" width="20" height="20"></i></a>
                    <a href="#"><i class="fa fa-github"><img src="images/apple-pay.png" width="20" height="20"></i></a>

                </div>

            </div>

        </footer>
</body>
</html>