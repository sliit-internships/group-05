<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>e</title>
<link rel="stylesheet" href="css/login.css">
<link rel="stylesheet" href="css/About.css">
<link rel="stylesheet" href="css/Home1.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/contactus.css">
<link rel="stylesheet" href="css/echannling.css">
<link rel="stylesheet" href="css/Faqs.css">
<link rel="stylesheet" href="css/newform.css">




<meta charset="UTF-8">
<!-- <meta>tags always go inside the <head> element,and aretypically used tospecify character set, page description, keywords, author of the document, and viewport settings.-->
<meta name="viewport" content="width-device-width, initial-scale=1">
<meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">
<!--Google font -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!--Bootstrap  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



</head>



<div class="login-bar">
	<center>
		<img src="images/logo123.png" width="95" />
		<h1 style="color: white;">MedPlus Admin Home</h1>


	</center>
	<div style="text-align: left; margin-left: 18px;"></div>

	<a href="#" target="_blank" class="login">Login</a>
</div>

<div class="navbar">
	<div class="topnav">
		<a href="index.html"><i class="fa fa-fw fa-home"></i>Home</a> <a
			href="#about"><i class="fa fa-shopping-bag" aria-hidden="true"></i>Shop</a>
		<a href="#contact"><i class="fa fa-etsy" aria-hidden="true"></i>E-Channeling</a>
		<a href="#contact"><i class="fa fa-phone"></i>Contact Us</a> <a
			href="aboutus1.html"><i class="fa fa-fw fa-envelope"></i>About Us</a>

		<a href="cart1.html"><i class="fa fa-etsy1" aria-hidden="true"></i>Shopping
			cart</a> <a href="Faqs.html"><i class="fa fa-etsy1"
			aria-hidden="true"></i>FAQs</a>


		<div class="search-container">
			<form action="/action_page.php">
				<input type="text" placeholder="Search.." name="search">
				<button type="submit">
					<i class="fa fa-search"></i>
				</button>
			</form>
		</div>



	</div>



</div>



<div class="containerr">
	<h1>Feedback</h1>
	<form action="Feedback" method="post">
		<div class="row">
			<div class="col-25">
				<label for="fname">Feedback ID</label>
			</div>
			<div class="col-75">
				<input type="text" id="Fid" name="Fid" required>
			</div>
		</div>
		<div class="row">
			<div class="col-25">
				<label for="lname">Customer Name</label>
			</div>
			<div class="col-75">
				<input type="text" id="Fname" name="Fname" required>
			</div>
		</div>
		<div class="row">
			<div class="col-25">
				<label for="lname">Date</label>
			</div>
			<div class="col-75">
				<input type="date" id="Fdate" name="Fdate" required>
			</div>
		</div>
		<div class="row">
			<div class="col-25">
				<label for="lname">Email</label>
			</div>
			<div class="col-75">
				<input type="text" id="Femail" name="Femail" required>
			</div>
		</div>
		<div class="row">
			<div class="col-25">
				<label for="lname">Description</label>
			</div>
			<div class="col-75">
				<input type="text" id="Fdes" name="Fdes" required>
			</div>
		</div>

		<br>

		<div class="row">
			<input type="submit" value="Submit">
		</div>
	</form>
</div>

<div class="footer">
	<div class="container">
		<div class="row">
			<div class="footer-col-1">
				<h3>Contact Details</h3>
				<pre>
					<img src="images/phone1.png" width="15" Height="15">  0915869875<br><img
						src="images/contact_us.jpg" width="15" Height="15">  Contact Us<br><img
						src="images/location.png" width="15" Height="15">  Boston street,NewYork City.</pre>
				<br> <br>
				<h3>Sign Up for our Newsletter</h3>
				<input type="text" placeholder="Email"></input><br>
				<br> <input class="nBtn" type="submt" value="Submit"
					style="width: 175px; left: 250; top: 250;">

			</div>
			<div class="footer-col-2">
				<h3>Contact form</h3>
				<br>
				<h3>Sign Up for our News letter</h3>
				<input type="text" placeholder="Name"></input><br>
				<br> <input type="text" placeholder="Email"></input><br>
				<br> <input type="text" placeholder="Message"></input><br>
				<br>
				<br> <input class="nBtn" type="submt" value="Submit"
					style="width: 175px; left: 250; top: 250;">

			</div>
			<div class="footer-col-3">
				<h3>Useful Links</h3>
				<ul>
					<li>Coupons</li>
					<li>Blog Post</li>
					<li>Return Policy</li>
					<li>Join Affiliate</li>

				</ul>

			</div>
			<div class="footer-col-4">

				<img src="images/i13.jpg"
					style="width: 70px; height: 60px; margin-top: 20px; border-radius: 60%;"
					class="offer-img"><br> Opening Timings<br> Mon-Fri
				9.00 am-5.00 pm<br> Sat 9.00 am-8.00 pm<br> Sun 9.00
				am-4.00 pm<br>
			</div>


		</div>
	</div>
	<hr>
	<!--credit -->
	<div class="brands">
		<div class="small-container">
			<div class="row">
				<div class="col-5">
					<img src="images/discover.jpg" class="offer-img">
				</div>
				<div class="col-5">
					<img src="images/American.jpg" class="offer-img">
				</div>
				<div class="col-5">
					<img src="images/master.jpg" class="offer-img">
				</div>
				<div class="col-5">
					<img src="images/visa.jpg" class="offer-img">
				</div>
			</div>
		</div>
	</div>
	<hr>
	<p class="copyright">Copyright 2021 Madu Play Store</p>
</div>

<div class="social-icons">

	<img src="images/apple.png" alt="vcbhjnc"> <img
		src="images/facebook.png"> <img src="images/linkin.png"> <img
		src="images/twitter.png">

</div>


</body>
</html>