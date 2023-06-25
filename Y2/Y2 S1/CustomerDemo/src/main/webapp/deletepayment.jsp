<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Gateway</title>
<link href="css/style.css" = rel="stylesheet" type="text/css">
<style>
import url('https://fonts.googleapis.com/css?family=Baloo+Bhaijaan|Ubuntu');

*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Ubuntu', sans-serif;
}

body{
  background: #096e80;
  margin: 0 10px;
}

.payment{
  background: #f8f8f8;
  max-width: 360px;
  margin: 80px auto;
  height: auto;
  padding: 35px;
  padding-top: 70px;
  border-radius: 5px;
  position: relative;
}

.payment h2{
  text-align: center;
  letter-spacing: 2px;
  margin-top: -10px;
  margin-bottom: 40px;
  color: #0d3c61;
}
.payment h3{
  text-align: center;
  letter-spacing: 2px;
  margin-top: -10px;
  margin-bottom: 40px;
  color: #0d3c61;
}

.payment h4{
  text-align: center;
  letter-spacing: 2px;
  margin-top: 30px;
  margin-bottom: 20px;
  color: #0d3c61;
}

.form .label{
  display: block;
  color: #555555;
  margin-bottom: 6px;
}

.input{
  padding: 13px 0px 13px 10px;
  width: 100%;
  margin-bottom: 7px;
  text-align: left;
  border: 2px solid #dddddd;
  border-radius: 5px;
  letter-spacing: 1px;
  word-spacing: 3px;
  outline: none;
  font-size: 15px;
  color: #555555;
}

.card-grp{
  display: flex;
  justify-content: space-between;
  justify-content: space-between;
}

.card-item{
  width: 50%;
  justify-content: space-between;
}

                
.space{
  margin-bottom: 20px;
}

.icon-relative{
  position: relative;
}

.icon-relative .fas,
.icon-relative .far{
  position: absolute;
  bottom: 12px;
  left: 15px;
  font-size: 20px;
  color: #555555;
}

.btn{
  margin-top: 40px;
  background: #096e80;
  padding: 12px;
  text-align: center;
  color: #f8f8f8;
  border-radius: 5px;
  cursor: pointer;
}



@media screen and (max-width: 420px){
  .card-grp{
    flex-direction: column;
  }
  .card-item{
    width: 100%;
    margin-bottom: 20px;
  }
  .btn{
    margin-top: 20px;
  }
}

</style>

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
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String card = request.getParameter("card");
		String date = request.getParameter("date");
		String cvc = request.getParameter("cvc");
	%>
<div class="wrapper">
    <div class="payment">

        <h2>Enter your Payment ID</h2>
        
		<form action="delete1" method="post">
		
        <div class="form" >
        
            <div class="card">
                <label class="label"> Enter Payment ID :</label>
                <input type="text" class="input" name="id" <%=id %> placeholder="Your payment id is assigned to 1">
            </div>

            
		<div class="btn">
		<input type="submit" name="update" value="Delete my existing payment details"> <br>
		</div>
		

        </div>
        </form>

    </div>
</div>


<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>

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

		