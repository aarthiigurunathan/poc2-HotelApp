<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
<link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei"
	rel="stylesheet">
<link href="css/styleLogin.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="container">
		<div class="box">
			<h1>Login Account</h1>
			<form action="login" method="post">
				<p>Username</p>
				<input type="text" placeholder="Username" name="username" required>
				<p>Password</p>
				<input type="password" placeholder="Password" name="password"
					required> <input type="submit" value="Login"
					onclick="location='success.jsp'"> <a href="#">Forget
					Password?</a><br> <a href="registrationPage.jsp">Create New
					Account</a>
			</form>
		</div>
	</div>
</body>
</html>