<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>WorkIt - Services</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f6f9;
	margin: 0;
}

.header {
	background-color: #2c3e50;
	color: white;
	padding: 15px;
	text-align: center;
}

.container {
	display: flex;
	justify-content: center;
	gap: 30px;
	margin: 60px;
}

.card {
	width: 250px;
	background: white;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
	text-align: center;
}

.card h3 {
	color: #2c3e50;
}

.card p {
	color: #555;
}

.btn {
	margin-top: 15px;
	padding: 10px 20px;
	background-color: #3498db;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.btn:hover {
	background-color: #2980b9;
}
</style>
</head>
<body>

	<div class="header">
		<h2>Welcome, ${username}</h2>
		<p>Select a Service</p>
	</div>

	<div class="container">

		<div class="card">
			<h3>Carpenter</h3>
			<p>Furniture repair, doors, cupboards</p>
			<a href="service/carpenter" class="btn">View</a>
		</div>

		<div class="card">
			<h3>Plumber</h3>
			<p>Pipes, leakage, bathroom fittings</p>
			<a href="service/plumber" class="btn">View</a>
		</div>

		<div class="card">
			<h3>Electrician</h3>
			<p>Wiring, switches, power issues</p>
			<a href="service/electrician" class="btn">View</a>
		</div>

	</div>

</body>
</html>

