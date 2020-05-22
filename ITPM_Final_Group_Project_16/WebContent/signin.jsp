<!-- 
SLIIT ID : IT18020236
@author : Y.R.S Nadeeshani
@version : 1.0 
-->

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign up</title>
<link rel="stylesheet" type="text/css" href="stylesheet/signUp.css">
</head>
<body>
	<header>
		<div class="loginbox">
			<h1>Sign up</h1>
			<form method="post" action="sign">
				<p>User name</p>
				<input type="text" name="uname" placeholder="User name" autofocus
					required />
				<p>Email</p>
				<input type="email" name="email" placeholder="Email" required>
				<p>Password</p>
				<input type="password" name="pass"
					placeholder="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" />
				<!-- 					pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  -->
				<p>Retype Password</p>
				<input type="password" name="pass2" placeholder="Retype password" />
				<input type="submit" name="submit" value="Sign Up" /> <input
					type="reset" name="reset" value="Reset" /> <a href="index.jsp">Already
					Have A Account? Login</a><br>
			</form>
		</div>
	</header>
</body>
</html>