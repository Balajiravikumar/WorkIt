<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Available Workers</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f9;
            margin: 0;
            padding: 0;
        }

        .header {
            background: #2c3e50;
            color: white;
            padding: 20px;
            text-align: center;
        }

        .container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
            gap: 25px;
            padding: 40px;
        }

        .card {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 6px 15px rgba(0,0,0,0.1);
            transition: transform 0.2s ease;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card h3 {
            margin-top: 0;
            color: #2c3e50;
        }

        .info {
            color: #555;
            margin: 6px 0;
            font-size: 14px;
        }

        .btn {
            margin-top: 15px;
            display: inline-block;
            padding: 10px 15px;
            background: #3498db;
            color: white;
            border-radius: 5px;
            text-decoration: none;
            font-size: 14px;
        }

        .btn:hover {
            background: #2980b9;
        }
    </style>
</head>

<body>

<div class="header">
    <h2>Available Workers</h2>
    <p>Choose the right professional for your work</p>
</div>

<div class="container">
    <c:forEach var="u" items="${workers}">
        <div class="card">
            <h3>${u.name}</h3>

            <div class="info"><b>Mobile:</b> ${u.mobile}</div>
            <div class="info"><b>Email:</b> ${u.email}</div>
            <div class="info"><b>Service:</b> ${u.service}</div>
            <div class="info"><b>Experience:</b> ${u.experience}</div>
            <div class="info"><b>chargePerDay:</b> ${u.chargePerDay}</div>
            <div class="info"><b>landmark:</b> ${u.landmark}</div>

            <a href="#" class="btn">Book Now</a>
        </div>
    </c:forEach>
</div>

</body>
</html>
