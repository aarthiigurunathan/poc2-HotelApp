
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register for New User</title>
<link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="container">
		<div class="regbox box">
			<h1>Register for New User</h1>
			<form action="register" method="post">
				<p>FirstName</p>
				<input type="text" placeholder="FirstName" name="Firstname" required>
				<p>LastName</p>
				<input type="text" placeholder="LastName" name="Lastname" required>
				<p>UserName</p>
				<input type="text" placeholder="UserName" name="Username" required>
				<p>Date Of Birth</p>
				<input type="date" placeholder="Date Of Birth" name="DOB" required>
				<p>Phone Number</p>
				<input type="number" placeholder="Phone Number" name="phoneNumber" maxlength="10" pattern="\d{10}" title="Enter a Valid Mobile Number" required>
				<p>Email ID</p>
				<input type="email" placeholder="mailID" name="email" required>
				<p>Password</p>
				<input type="password" placeholder="Password" id="psw"
					name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
					title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
					required> <input type="submit" value="Register"> 
					<a href="login.jsp">Already have Account?</a>
			</form>
		</div>
	</div>
</body>
</html>