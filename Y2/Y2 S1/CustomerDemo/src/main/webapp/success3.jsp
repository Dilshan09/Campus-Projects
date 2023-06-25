<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/style.css" rel="stylesheet" type="text/css"/>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
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
   <script>
    alert ('Successfully submitted , Thank you!!');
   </script>

   <%@ include file="admin.jsp" %><%-- link to my wishes jsp file --%>
   
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