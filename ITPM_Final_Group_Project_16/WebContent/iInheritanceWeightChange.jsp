<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Code Complexity Tool</title>
</head>
<style>
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

/* Main content */
.main {
  margin-left: 200px; /* Same as the width of the sidenav */
  font-size: 20px; /* Increased text to enable scrolling */
  padding: 0px 10px;
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
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
h1 {
	text-align: center;
}
#footer {
	background-color: #000099;
	color: white;
	text-align: center;
	padding: 6px;
	clear: both;
}
.button {
  background-color: #008CBA;
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
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}
table,th,td{
border: 1px solid black;
}
.button {
  background-color: #008CBA;
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
</style>
<body>
</br>

	<div class="sidenav">
  <a href="#about">AboutUs</a>
  </br>
  <a href="#services">ContactUs</a>
  </br>

  <a href="Home.jsp">Home</a>
  </br>
  <a href="#clients">Log In</a>
  </br>

  <button class="dropdown-btn">Services 
    <i class="fa fa-caret-down"></i>
  </button>
  <div class="dropdown-container">
			<a href="sizes.jsp">Size</a> 
			<a href="variables.jsp">Variables</a> <a
				href="methods.jsp">Methods</a> 
				<a href="Inheritance.jsp">Inheritance</a>
			<a href="#">Coupling</a> 
			<a href="Control.jsp">Control Structure</a>
			<a href="all.jsp">All Factors</a>
  </div>
  </br>
  <a href="#contact">Search</a>
  </br>
 <a href="https://www.facebook.com/">Facebook</a>
   </br>
 <a href="www.facebook.com">YouTube</a>
   </br>
 <a href="www.facebook.com">Instagram</a>
   </br>
 <a href="www.facebook.com">LinkdIN</a>

</div>

<div class="main">
  <h1 style="color: black;">
		<b><i>Weights related to the Inheritance factor</i></b>
	</h1>
	</br>
	</br>
	<table>
 <tr>
    <th>Inheritance Type</th>
    <th>Weights</th>

  </tr>
  <tr>
    <td>A class inheriting from one user-defined class</td>
    <td><input type="text" id="w1" name="w1"></td>
  </tr>
    <tr>
    <td>class inheriting from two user-defined classes</td>
    <td><input type="text" id="w1" name="w1"></td>
  </tr>
    <tr>
    <td>A class inheriting from three user-defined classes</td>
     <td><input type="text" id="w1" name="w1"></td>
  </tr>
    <tr>
    <td>A class inheriting from more than three user-defined classes</td>
    <td><input type="text" id="w1" name="w1"></td>
  </tr>
</table>
	<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;
				<a href= "Inheritance.jsp"><button class="button">Save</button></a>




</div>
 </br><br></br></br> </br><br></br></br> </br><br></br></br> </br><br></br></br> </br><br></br></br>
  </br><br></br></br> </br><br></br></br> </br><br></br></br></br></br> 
  
<div id="footer">Code by ITPM Group 16</div>

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
</body>
</html>