<!-- 
SLIIT ID : IT18020236
@author : Y.R.S Nadeeshani
@version : 1.0 
-->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Code Complexity Tool</title>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

</head>
<style type="text/css">
#section {
	width: 1000px;
	height: 470px;
	float: left;
	padding: 10px;
}

.button {
	background-color: blue;
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}

.button1 {
	background-color: white;
	border: none;
	padding: 12px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}

#footer {
	background-color: #000099;
	color: white;
	text-align: center;
	padding: 6px;
	clear: both;
}

body {
	font-family: "Lato", sans-serif;
}
/* Fixed sidenav, full height */
.sidenav {
	height: 100%;
	width: 200px;
	position: fixed;
	z-index: 1;
	top: 0;
	left: 0;
	background-color: #111;
	overflow-x: hidden;
	padding-top: 20px;
}
/* Style the sidenav links and the dropdown button */
.sidenav a, .dropdown-btn {
	padding: 6px 8px 6px 16px;
	text-decoration: none;
	font-size: 20px;
	color: #818181;
	display: block;
	border: none;
	background: none;
	width: 100%;
	text-align: left;
	cursor: pointer;
	outline: none;
}
/* On mouse-over */
.sidenav a:hover, .dropdown-btn:hover {
	color: #f1f1f1;
}
/* Add an active class to the active dropdown button */
.active {
	background-color: green;
	color: white;
}
/* Dropdown container (hidden by default). Optional: add a lighter background color and some left padding to change the design of the dropdown content */
.dropdown-container {
	display: none;
	background-color: #262626;
	padding-left: 8px;
}
/* Optional: Style the caret down icon */
.fa-caret-down {
	float: right;
	padding-right: 8px;
}
/* Some media queries for responsiveness */
@media screen and (max-height: 450px) {
	.sidenav {
		padding-top: 15px;
	}
	.sidenav a {
		font-size: 18px;
	}
}

h1 {
	text-align: center;
}

body {
	background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
		url(Images/home.jpg);
	background-size: cover;
}
</style>


<body>
	<div class="sidenav">
		<a href="#about">AboutUs</a> </br> <a href="#services">ContactUs</a> </br> <a
			href="#clients">Log In</a> </br> <a href="Home.jsp">Home</a> </br>

		<button class="dropdown-btn">
			Services <i class="fa fa-caret-down"></i>
		</button>
		<div class="dropdown-container">
			<a href="sizes.jsp">Size</a> <a href="variables.jsp">Variables</a> <a
				href="methods.jsp">Methods</a> <a href="Inheritance.jsp">Inheritance</a>
			<a href="#">Coupling</a> <a href="Control.jsp">Control Structure</a>
		</div>
		</br> <a href="#contact">Search</a> </br> <a href="https://www.facebook.com/">Facebook</a>
		</br> <a href="www.facebook.com">YouTube</a> </br> <a href="www.facebook.com">Instagram</a>
		</br> <a href="www.facebook.com">Linkdin</a>

	</div>


	<h1 style="color: white;"text-align:center; font-size:20px; >
		<b>Code Complexity Measuring Tool</b>
	</h1>
	<script>
		/* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - This allows the user to have multiple dropdowns without any conflict */
		var dropdown = document.getElementsByClassName("dropdown-btn");
		var i;

		for (i = 0; i < dropdown.length; i++) {
			dropdown[i].addEventListener("click", function() {
				this.classList.toggle("active");
				var dropdownContent = this.nextElementSibling;
				if (dropdownContent.style.display === "block") {
					dropdownContent.style.display = "none";
				} else {
					dropdownContent.style.display = "block";
				}
			});
		}
	</script>
	</br>
	<h2 style="color: white; text-align: center;">
		<b>Please Upload your Source Code to Measure the Complexity of a
			program due to size</b>
	</h2>
	</br>
	<form action="SizeUploadHandler" enctype="multipart/form-data"
		method="post" style="text-align: center;">
		<input type="file" name="file2" class="button1" /><br> <input
			type="submit" value="Upload" class="button1" />
	</form>

</body>
</html>