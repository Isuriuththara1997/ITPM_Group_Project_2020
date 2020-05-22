<!-- 
SLIIT ID : IT18020236
@author : Y.R.S Nadeeshani
@version : 1.0 
-->

<html>
<head>
<title>Login</title>
<link rel="stylesheet" type="text/css" href="stylesheet/login.css">
<body>
	<div class="wrap">
		<h1>Customer Login</h1>
		<form method="post" action="sign">
			<p>User name</p>
			<input type="text" name="uname" placeholder="Enter Username"
				autofocus required />
			<p>Password</p>
			<input type="password" name="pass" placeholder="Enter Password"
				required /> <input type="submit" name="submit" value="Login"/>
				<br>
				<br><a href="signin.jsp">No account ? SignUp Today</a><br>
		</form>
	</div>
</body>
</head>
</html>