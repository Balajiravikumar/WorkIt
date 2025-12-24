<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>WorkIt - Login</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f6f9;
}

.login-container {
	width: 400px;
	margin: 80px auto;
	background: white;
	padding: 25px;
	border-radius: 8px;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}

h2 {
	text-align: center;
	margin-bottom: 20px;
	color: #2c3e50;
}

label {
	font-weight: bold;
	display: block;
	margin-top: 10px;
}

input {
	width: 100%;
	padding: 10px;
	margin-top: 6px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

.btn {
	width: 100%;
	margin-top: 20px;
	padding: 12px;
	background-color: #3498db;
	color: white;
	font-size: 16px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.btn:hover {
	background-color: #2980b9;
}

.back {
	text-align: center;
	margin-top: 15px;
}

.back a {
	text-decoration: none;
	color: #3498db;
}
</style>
</head>
<body>

	<div class="login-container">
		<h2>Login to WorkIt</h2>
		<c:if test="${not empty error}">
			<div style="color: red; text-align: center; margin-bottom: 15px;">
				${error}</div>
		</c:if>


		<form action="${pageContext.request.contextPath}/doLogin"
			method="post">

			<label>Mobile Number</label> <input type="tel" name="mobile"
				placeholder="Enter mobile number" required> <label>Password</label>
			<input type="password" name="password" placeholder="Enter password"
				required>

			<button type="submit" class="btn">Login</button>
		</form>

		<div class="back">
			<a href="./">← Back to Home</a>
		</div>
	</div>

</body>
</html>
