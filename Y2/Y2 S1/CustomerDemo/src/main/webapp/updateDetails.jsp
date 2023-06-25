<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Details</title>

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
         
      <% //to catch valuse here we use java part 

      String id = request.getParameter("id");
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


      %>
<h1 align = "center">Customer Account Update</h1>

    <form action = "update" method = "post"> <%-- to see user's previous inputs --%> 
    
    <table  align="center" style="width:100%">
        <tr>
            <td>Customer ID</td>
            <td><input type="text" name="cusid" value="<%= id %>" readonly ></td> <%--readonly can view only and customer can't change--%> 
        </tr>
        
        <tr>
            <td>First Name</td>
            <td><input type="text" name="first" value="<%= first %>"></td> 
        </tr>
        
        <tr>
            <td>Last Name</td>
            <td><input type="text" name="last" value="<%= last %>"></td> 
        </tr>
        <tr>
            <td>Email</td>
            <td><input type="text" name="email" value="<%= email %>"></td> 
        </tr>
        <tr>
            <td>Phone</td>
            <td><input type="text" name="phone" value="<%= phone %>"></td> 
        </tr>
        <tr>
            <td>Address</td>
            <td><input type="text" name="address" value="<%= address %>"></td> 
        </tr>
        <tr>
            <td>Address2</td>
            <td><input type="text" name="address2" value="<%= address2 %>"></td> 
        </tr>
        <tr>
            <td>City</td>
            <td><input type="text" name="city" value="<%= city %>"></td> 
        </tr>
        <tr>
            <td>State</td>
            <td><input type="text" name="state" value="<%= state %>"></td> 
        </tr>
        <tr>
            <td>Postal</td>
            <td><input type="text" name="postal" value="<%= postal %>"></td> 
        </tr>
        <tr>
            <td>Type</td>
            <td><input type="text" name="type" value="<%= type %>"></td> 
        </tr>
        <tr>
            <td>Goals</td>
            <td><input type="text" name="goals" value="<%= goals %>"></td> 
        </tr>
        <tr>
            <td>Event Name</td>
            <td><input type="text" name="name" value="<%= name %>"></td> 
        </tr>
        <tr>
            <td>Budject</td>
            <td><input type="text" name="budject" value="<%= budject %>"></td> 
        </tr>
        <tr>
            <td>WhoPay</td>
            <td><input type="text" name="who" value="<%= who %>"></td> 
        </tr>
        <tr>
            <td>Text</td>
            <td><input type="text" name="text" value="<%= text %>"></td> 
        </tr>                                      
        <tr>
            <td>Attendence</td>
            <td><input type="text" name="attendence" value="<%= attendence %>"></td> 
        </tr>         
        <tr>
            <td>RunTime</td>
            <td><input type="text" name="run" value="<%= run %>"></td> 
        </tr>         
        <tr>
            <td>Repeating</td>
            <td><input type="text" name="repeat" value="<%= repeat %>"></td> 
        </tr>        
        <tr>
            <td>Month</td>
            <td><input type="text" name="month" value="<%= month %>"></td> 
        </tr>                 
        <tr>
            <td>Day</td>
            <td><input type="text" name="day" value="<%= day %>"></td> 
        </tr>        
        <tr>
            <td>Year</td>
            <td><input type="text" name="year" value="<%= year %>"></td> 
        </tr>
   
        
     </table> 
     
     <h2>Update details : </h2>  
     
     <form action = "http://localhost:8090/CustomerDemo/success.jsp">        
     <input type="submit" name="submit" value="Update My Data"><br>
     </form>
        
    </form>
    
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
       </div> 
</body>
</html>