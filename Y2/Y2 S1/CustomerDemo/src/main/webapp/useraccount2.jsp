<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/style.css" rel="stylesheet" type="text/css"/>
<style>
h1{
   font-family: sans-serif;
   color:#3c3939;
   background-color:#c7efc3;

  }
.button:hover{
    background: #2ecc71;
    }
    
.button {
  background-color: #90ba92; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  border-radius: 12px;
}
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
    
</style>
<meta charset="ISO-8859-1">
<title>User Account</title>
</head>
<body>
<header>
            <a class="logo" href="home.jsp"><img src="images/one.jpg" alt="logo"></a>
            <nav>
                <ul class="nav__links">
                    <li><a href="home.jsp">HOME</a></li>
                    <li><a  href="#">ABOUT US</a></li>

                    <li class="dropdown">
                        <a href="operations.jsp" class="dropbtn">EVENTS</a>
                        <div class="dropdown-content">
                            <a href="eventsMenu.jsp">Booking</a>
                            <a href="check.jsp">Edit booking</a>
                        </div>
                    <li><a href="contactus.jsp">CONTACT</a></li>
                    <li class="dropdown">
                        <a href="insertform.jsp" >PAYMENT</a>
                      
                    
                </ul>
            </nav>
            <a class="cta" href="login.jsp">LOGIN/SIGN UP</a>
            <a class="logo" href="login.jsp"><img src="images/logo.png" alt="logo"></a>

        </header>
     <h1> <center> Customer Profile </center></h1>
     <center>
	<table id="customers">
	<c:forEach var="cus" items="${cusDetails}">
	
	<c:set var="id" value="${cus.id}"/>
	<c:set var="name" value="${cus.name}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="phone" value="${cus.phone}"/>
	<c:set var="username" value="${cus.userName}"/>
	<c:set var="password" value="${cus.password}"/>
		
		<tr>
			<td>Customer</td>
			<td>${cus.id}</td>
		</tr>
		
		<tr>
			<td>Customer Name</td>
			<td>${cus.name}</td>
		</tr>
		
		<tr>
			<td>Customer Email</td>
			<td>${cus.email}</td>
		</tr>
		
		<tr>
			<td>Customer Phone</td>
			<td>${cus.phone}</td>
		</tr>
		
		<tr>
			<td>Customer User Name</td>
			<td>${cus.userName}</td>
		</tr>
		
		<tr>
			<td>Customer Password</td>
			<td>${cus.password}</td>
		</tr>
	
	
	</c:forEach> 
	</center>
	</table>
	
	<c:url value="updatecustomer.jsp" var="cusupdate"> 
	    <c:param name="id" value="${id}"/>
	    <c:param name="name" value="${name}"/>
	    <c:param name="email" value="${email}"/>
	    <c:param name="phone" value="${phone}"/>
	    <c:param name="uname" value="${username}"/>
	    <c:param name="pass" value="${password}"/>
	</c:url>
	
	<a href="${cusupdate}">
	<br><br>
	<input type="button" name="update" value="Update My Data" class="button"><br>
	</a>
	
	<br>
	
	<c:url value="deletecustomer1.jsp" var="cusdelete">
	<c:param name="id" value="${id}"/>
	<c:param name="name" value="${name}"/>
	<c:param name="email" value="${email}"/>
	<c:param name="phone" value="${phone}"/>
	<c:param name="uname" value="${username}"/>
	<c:param name="pass" value="${password}"/>
	
	
	</c:url>
	
	<a href="${cusdelete}">
	<input type="button" name="delete" value="Delete My Account"  class="button" href
>
	</a>
	
<footer class="footer-distributed">

            <div class="footer-left">
                <a class="logo" href="home.jsp"><img src="images/one.jpg" alt="logo"></a>
                <!--<h3><span></span></h3>-->

                <p class="footer-links">
                    <a  href="home.jsp">Home</a>
                    <br>
                    <a href="#">About</a>
                    <br>
                    <a href="eventsMenu.jsp">Events</a>
                    <br>
                    <a href="insertform.jsp">Payment</a>
                    <br>
                    <a href="contactus.jsp">Contact</a>
                    
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