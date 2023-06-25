<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Details</title>
<style>
th, td {
  border-style:solid;
  border-color: #FF0000;
}
</style>

        <link href="css/style.css" rel="stylesheet" type="text/css"/>

</head>

<body style="background-color:#FFFF00;">

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
        
<h1 align = "center">The One EVENT</h1>
<h2 align = "center">Your current event details!!</h2>
    <table align = "center" style="width:75%">
    <c:forEach var="cus" items="${cusDetails}">
    
    <c:set var="id" value="${cus.id}"/>
    <c:set var="first" value="${cus.getFirstName()}"/>
    <c:set var="last" value="${cus.getLastName()}"/>
    <c:set var="email" value="${cus.getEmail()}"/>
    <c:set var="phone" value="${cus.getPhone()}"/>
    <c:set var="address" value="${cus.getAddress()}"/>
    <c:set var="address2" value="${cus.getAddress2()}"/>
    <c:set var="city" value="${cus.getCity()}"/>
    <c:set var="state" value="${cus.getState()}"/>
    <c:set var="postal" value="${cus.getPostal()}"/>
    <c:set var="type" value="${cus.getType()}"/>
    <c:set var="goals" value="${cus.getGoals()}"/>
    <c:set var="name" value="${cus.getEventName()}"/>
    <c:set var="budject" value="${cus.getBudject()}"/>
    <c:set var="who" value="${cus.getWhoPay()}"/>
    <c:set var="text" value="${cus.getText()}"/>
    <c:set var="attendence" value="${cus.getAttendence()}"/>
    <c:set var="run" value="${cus.getRunTime()}"/>
    <c:set var="repeat" value="${cus.getRepeating()}"/>
    <c:set var="month" value="${cus.getMonth()}"/>
    <c:set var="day" value="${cus.getDay()}"/>
    <c:set var="year" value="${cus.getYear()}"/>

        <tr>
            <td>Customer ID</td>
            <td>${cus.id}</td>
        </tr>
        
        <tr>
            <td>Customer First Name</td>
            <td>${cus.getFirstName()}</td>
        </tr>
        
        <tr>
            <td>Customer Last Name</td>
            <td>${cus.getLastName()}</td>
        </tr>
        
        <tr>
            <td>Customer email</td>
            <td>${cus.getEmail()}</td>
        </tr>
        
        <tr>
            <td>Customer phone</td>
            <td>${cus.getPhone()}</td>
        </tr>    
    
        <tr>
            <td>Customer address</td>
            <td>${cus.getAddress()}</td>
        </tr> 


        <tr>
            <td>Customer address2</td>
            <td>${cus.getAddress2()}</td>
        </tr>
        
        <tr>
            <td>Customer city</td>
            <td>${cus.getCity()}</td>
        </tr>
        
        <tr>
            <td>Customer state</td>
            <td>${cus.getState()}</td>
        </tr>
        
        <tr>
            <td>Customer postal</td>
            <td>${cus.getPostal()}</td>
        </tr>
        
        <tr>
            <td>Customer type</td>
            <td>${cus.getType()}</td>
        </tr>    
    
        <tr>
            <td>Customer goals</td>
            <td>${cus.getGoals()}</td>
        </tr> 
        
        
        <tr>
            <td>Customer eventName</td>
            <td>${cus.getEventName()}</td>
        </tr>
        
        <tr>
            <td>Customer budject</td>
            <td>${cus.getBudject()}</td>
        </tr>
        
        <tr>
            <td>Customer Who Pay</td>
            <td>${cus.getWhoPay()}</td>
        </tr>
        
        <tr>
            <td>Customer text</td>
            <td>${cus.getText()}</td>
        </tr>
        
        <tr>
            <td>Customer attendence</td>
            <td>${cus.getAttendence()}</td>
        </tr>    
    
        <tr>
            <td>Customer Run Time</td>
            <td>${cus.getRunTime()}</td>
        </tr> 
        
        
        <tr>
            <td>Customer repeating</td>
            <td>${cus.getRepeating()}</td>
        </tr>
        
        <tr>
            <td>Customer month</td>
            <td>${cus.getMonth()}</td>
        </tr>
        
        <tr>
            <td>Customer day</td>
            <td>${cus.getDay()}</td>
        </tr>
        
        <tr>
            <td>Customer year</td>
            <td>${cus.getYear()}</td>
        </tr>
        
        
    </c:forEach>
    </table>
    
  <c:url value="updateDetails.jsp" var="upDetail"> <%-- where to locate and what we want to pass  --%>
  
                <c:param name="id" value="${id}"/>
                <c:param name="first" value="${first}"/>
                <c:param name="last" value="${last}"/>
                <c:param name="email" value="${email}"/>
                <c:param name="phone" value="${phone}"/>
                <c:param name="address" value="${address}"/>
                <c:param name="address2" value="${address2}"/>
                <c:param name="city" value="${city}"/>
                <c:param name="state" value="${state}"/>
                <c:param name="postal" value="${postal}"/>
                <c:param name="type" value="${type}"/>
                <c:param name="goals" value="${goals}"/>
                <c:param name="name" value="${name}"/>
                <c:param name="budject" value="${budject}"/>
                <c:param name="who" value="${who}"/>
                <c:param name="text" value="${text}"/>
                <c:param name="attendence" value="${attendence}"/>
                <c:param name="run" value="${run}"/>
                <c:param name="repeat" value="${repeat}"/>
                <c:param name="month" value="${month}"/>
                <c:param name="day" value="${day}"/>
                <c:param name="year" value="${year}"/>
        
  </c:url> 
  <h2>Do you want to edit event details!!</h2>
  <a href="${upDetail}">
  <input type="button" name="update" value="Update My Data">
  </a>
  
  <br>
  <c:url value="deletecustomer.jsp" var="cusdelete"> <%-- where to locate and what we want to pass  --%>
  
                <c:param name="id" value="${id}"/>
                <c:param name="first" value="${first}"/>
                <c:param name="last" value="${last}"/>
                <c:param name="email" value="${email}"/>
                <c:param name="phone" value="${phone}"/>
                <c:param name="address" value="${address}"/>
                <c:param name="address2" value="${address2}"/>
                <c:param name="city" value="${city}"/>
                <c:param name="state" value="${state}"/>
                <c:param name="postal" value="${postal}"/>
                <c:param name="type" value="${type}"/>
                <c:param name="goals" value="${goals}"/>
                <c:param name="name" value="${name}"/>
                <c:param name="budject" value="${budject}"/>
                <c:param name="who" value="${who}"/>
                <c:param name="text" value="${text}"/>
                <c:param name="attendence" value="${attendence}"/>
                <c:param name="run" value="${run}"/>
                <c:param name="repeat" value="${repeat}"/>
                <c:param name="month" value="${month}"/>
                <c:param name="day" value="${day}"/>
                <c:param name="year" value="${year}"/>
        
  </c:url>
  <h2>Delete account ?</h2>
  <a href="${cusdelete}">
  <input type="button" name="delete" value="Delete My Account">
  </a>
  
  <h2>Back :</h2>
  <a href = "http://localhost:8090/CustomerDemo/operations.jsp">
    <input type="button" name="Back" value="Back">
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