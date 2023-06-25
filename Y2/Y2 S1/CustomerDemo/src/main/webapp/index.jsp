<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     
<!DOCTYPE html>
<html lang="en">
<head>
<link href="css/style.css" rel="stylesheet" type="text/css"/>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AddNewEventType</title>
</head>
<style>
body {
  background-color: #92a8d1;
}
input[type=text], select {
  width: 20%;
  padding: 6px 10px;
  margin: 4px 0;
  display: inline-block;
  border: 2px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.border {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 30px;
}
.p2 {
  font-family: Arial, Helvetica, sans-serif;
}

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
    
    <h1 class = "p2" align="center">Add New Event Type</h1>
    <div class = "border">
    <div class = "p2">
        <form class="custom-form" action="insert2" method="post">
            <label for="eventtype">Type of the Event: </label><br>
            <input type="text" id="eventtype" name="eventtype"><br><br>
            <label for="descript">Description: </label><br>
            <textarea id="descript" name="descript" rows="4" cols="50"></textarea><br><br>
            
            <label for="venue1">Add Venue 1 : </label>
            <input type="text" id="venue1" name="venue1">
            
            <label for="venue">Add Venue 2 : </label>
            <input type="text" id="venue2" name="venue2"><br><br>
            
            <label for="venue3">Add Venue 3: </label>
            <input type="text" id="venue3" name="venue3">
            
            <label for="venue4">Add Venue 4 : </label>
            <input type="text" id="venue4" name="venue4"><br><br>
            
            <label for="venue5">Add Venue 5 : </label>
            <input type="text" id="venue5" name="venue5"><br><br>

            <label for="Includes">Includes: </label><br><br>

            <input type="checkbox" id="service1" name="service1" value="Photography">
            <label for="service1">Photography</label><br>
            <input type="checkbox" id="service2" name="service2" value="Sounds">
            <label for="service2">Sounds</label><br>
            <input type="checkbox" id="service3" name="service3" value="Food">
            <label for="service3">Food</label><br><br>

            <label for="newservice">Add a New Service: </label><br>
            <input type="text" id="newservice" name="newservice"><br><br>

            <label for="cost">Cost for the Event: </label><br>
            <input type="text" id="cost" name="cost"><br><br>

            <div align="center">
            <input class = "button" type="submit" value="Submit">
            </div>
        </form>
        </div>
        
        
          <br>
      <br>

     <div class = "p2" align="center">
     
     <button class = "button" onclick="document.location='admin.jsp'">Home</button>
     
     </div>
     
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