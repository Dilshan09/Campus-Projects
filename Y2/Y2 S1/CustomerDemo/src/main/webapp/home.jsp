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
:root {
  --background-color: #000000;
  --color: #000000;
  --light-theme: #ffffff;
}

body {
  font-family: "Mulish", sans-serif;
  background-color: var(--background-color);
}

.container {
  display: flex;
  justify-content: center;
  align-items: center;

  height: 100vh;
}

.btn {
  display: flex;
  justify-content: center;
  align-items: center;
  
  width: 220px;
  height: 60px;
  
  background-color: var(--light-theme);
  cursor: pointer;
  font-size: 24px;
  color: var(--color);
  transition: all 0.3s;
  position: relative;

  text-align: center;
  overflow: hidden;

  border-radius: 5px;
  box-shadow: 0 6px 30px -10px rgba(#CCCCCC, 1);
  
  &:hover {
    transform: translateX(5px) translateY(-7px);
  }
}

.shop-now {
  position: relative;
  .santa-icon {
    position: absolute;
    width: 30px;
    height: 30px;
    top: -17px;
    right: -20px;
    transform: rotate(14deg);
    img {
      width: 100%;
      height: 100%;
    }
  }
}

.snowflake-grid {
  display: inline-grid;
  grid-template-columns: 1fr 1fr;
  grid-auto-rows: 50px;
  gap: 5px;

  width: 100px;
  transform: scale(0.4);
  div {
    border-radius: 5px;
  }
  
  .snowflake-item {
    position: relative;
  }
}

.to-left {
  position: absolute;
  top: -4px;
  left: -35px;
  animation: swing 3s infinite;
  div {
    animation: flash 3s infinite;
  }
}

.to-right {
  position: absolute;
  top: -25px;
  right: -35px;
  animation: swing 2.5s infinite;
  div {
    animation: flash 2.5s infinite;
  }
}

.border-left {
  border-left: 4px solid #e6dada;
  
}

.border-right {
  border-right: 4px solid #e6dada;
}

.border-bottom {
  border-bottom: 4px solid #e6dada;
}

.border-top {
  border-top: 4px solid #e6dada;
}

.sub-items {
  height: 28px;
  width: 28px;
}

.m-w-15 {
  width: 15px;
}

.m-h-15 {
  height: 15px;
}

.r-270 {
  transform: rotate(270deg);
}

.r-180 {
  transform: rotate(180deg);
}

.r-90 {
  transform: rotate(90deg);
}

.pull-down {
  position: absolute;
  bottom: 5px;
  right: 5px;
}

.pull-down-right {
  position: absolute;
  bottom: 5px;
  left: 5px;
}

.pull-right {
  position: absolute;
  right: 5px;
  top: 5px;
}

.pull-left {
  position: absolute;
  left: 5px;
  top: 5px;
}

.m-3 {
  margin: 3px;
}

@keyframes swing {
  50% {
    transform: rotateZ(10deg) scale(0.4);
  }
}

@keyframes flash {
  50% {
    border-color: #485563; 
  }

h1{
    color: #decdcd;
}
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
        
        <center>
    <h1 style="background-color:powderblue;">The ONEevents</h1>
    </center>


    <div class="container">
        <div class="btn">
            <form action = "http://localhost:8090/CustomerDemo/login.jsp">
           <button class="shop-now">Login</button>
             </form>
           <div class="snowflake-grid to-left">
              <div class="snowflake-item border-bottom border-right">
                 <div class="sub-items border-right border-bottom pull-down">
                    <div class="m-w-15 m-h-15 border-right border-bottom m-3"></div>
                 </div>
              </div>
              <div class="snowflake-item border-bottom border-left">
                 <div
                    class="sub-items border-right border-bottom r-90 pull-down-right"
                    >
                    <div class="m-w-15 m-h-15 border-right border-bottom m-3"></div>
                 </div>
              </div>
              <div class="snowflake-item border-top border-right">
                 <div class="sub-items border-right border-bottom r-270 pull-right">
                    <div class="m-w-15 m-h-15 border-right border-bottom m-3"></div>
                 </div>
              </div>
              <div class="snowflake-item border-top border-left">
                 <div class="sub-items border-right border-bottom r-180 pull-left">
                    <div class="m-w-15 m-h-15 border-right border-bottom m-3"></div>
                 </div>
              </div>
           </div>
           <div class="snowflake-grid to-right">
              <div class="snowflake-item border-bottom border-right">
                 <div class="sub-items border-right border-bottom pull-down">
                    <div class="m-w-15 m-h-15 border-right border-bottom m-3"></div>
                 </div>
              </div>
              <div class="snowflake-item border-bottom border-left">
                 <div
                    class="sub-items border-right border-bottom r-90 pull-down-right"
                    >
                    <div class="m-w-15 m-h-15 border-right border-bottom m-3"></div>
                 </div>
              </div>
              <div class="snowflake-item border-top border-right">
                 <div class="sub-items border-right border-bottom r-270 pull-right">
                    <div class="m-w-15 m-h-15 border-right border-bottom m-3"></div>
                 </div>
              </div>
              <div class="snowflake-item border-top border-left">
                 <div class="sub-items border-right border-bottom r-180 pull-left">
                    <div class="m-w-15 m-h-15 border-right border-bottom m-3"></div>
                 </div>
              </div>
           </div>
        </div>
     </div>
     
     <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
    
      <!-- Wrapper for slides -->
    
    
        <div align = "center" class="item">
          <img src="images/2.jpeg" alt="Chicago">
        </div>
    
        <div align = "center" class="item">
          <img  src="images/3.jpeg" alt="New York">
        </div>
      </div>
    
      <!-- Left and right controls -->
      <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
        <span class="sr-only">Next</span>
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
                    <br>
                    <a href="admin.jsp">Admin</a>
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