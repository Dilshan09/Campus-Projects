<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/style.css" rel="stylesheet" type="text/css"/>
<style>
    body{
    background-color:rgb(161, 242, 161);
}
.Signuparea{
   
    width: 360px;
    height: 620;
    margin: auto;
    background-color:#e6ffee;
    border-radius: 3px;
    
}
.bottom{
    margin-top: 50px;
}
.loginarea{
    width: 360px;
    height: 300px;
    margin: auto;
    background-color: #e6ffee;
    border-radius: 3px;
    
    
}

h1{
    text-align: center;
    padding-top: 15px;
}
form{
    
    width:300px;
    margin-left: 20px;

}

form label{
    display: flex;
    margin-top:20px;
    font-size:18px;
    color: black;

}
form input{
    width:100%;
    padding:7px;
    border:none;
    border:1px solid gray;
    border-radius:6px;
    outline:none;
}
input[type="button"]{
    width:300px;
    height:35px;
    margin-top: 20px;
    border:none;
    background-color: green;
    color:white;
    font-size:18px;
}

p{
    text-align:center;
    padding-top:20px;
    font-size:15px;
}
.link{
    text-align:center;
    color:black;
    font-size:15px;
    margin-top:-10px;
}
.link2{
    text-align:center;
    color:black;
    font-size:15px;
    margin-top:-10px;
    
}
.btn:hover{
    background: #2ecc71;
}
</style>
<meta charset="ISO-8859-1">
<title>Register</title>
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

        <div class="bottom">
        <div class="Signuparea">
            <h1>Sign Up</h1>
            <form action="Customerinsert1" method="post">
                <label>Name</label>
                <input id="name" type="text" placeholder="Enter Name" name="name">
                <label>Email</label>
                <input id="email" type="email" placeholder="Enter Email" name="email">
                <label>Phone Number</label>
                <input id="address"type="text" placeholder="Enter Phone Number" name="phone">
                <label>User Name</label>
                <input id="pass" type="text" placeholder="Enter a Username" name="uid">
                <label>Password</label>
                <input id="pass2" type="password" placeholder="Enter your Password" name="psw"><br><br>
                <br>
                <input type="submit" name="submit" class="btn" value="Submit">

            </form>
            <p class="link">If you have an account <a href="login.jsp">Login</a></p>

        </div>
        </div>
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