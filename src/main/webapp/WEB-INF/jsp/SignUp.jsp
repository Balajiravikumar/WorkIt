<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>WorkIt - SignUp</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f9;
        }
        .SignUp-container {
            width: 420px;
            margin: 60px auto;
            background: white;
            padding: 25px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #2c3e50;
        }
        label {
            font-weight: bold;
            display: block;
            margin-top: 12px;
        }
        input, select {
            width: 100%;
            padding: 10px;
            margin-top: 6px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .row {
            display: flex;
            gap: 10px;
        }
        .row div {
            flex: 1;
        }
        .btn {
            width: 100%;
            margin-top: 22px;
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

<div class="SignUp-container">
    <h2>Sign Up to WorkIt</h2>

    <form action="${pageContext.request.contextPath}/dosignup" method="post">

        <label>Name</label>
        <input type="text" name="name" placeholder="Enter your name" required>

        <label>Email</label>
        <input type="email" name="email" placeholder="Enter your email" required>

        <label>Mobile Number</label>
        <input type="tel" name="mobile" placeholder="Enter mobile number" required>

        <label>Password</label>
        <input type="password" name="password" placeholder="Enter password" required>

        <label>Select Service</label>
        <select name="service" required>
            <option value="">-- Select Service --</option>
            <option value="CARPENTER">Carpenter</option>
            <option value="ELECTRICIAN">Electrician</option>
            <option value="PLUMBER">Plumber</option>
        </select>

        <!-- Experience & Charge in same row -->
        <div class="row">
            <div>
                <label>Experience (Years)</label>
                <input type="number" name="experience" min="0" placeholder="e.g. 5" required>
            </div>
            <div>
                <label>Per Day Charge (₹)</label>
                <input type="number" name="chargePerDay" min="0" placeholder="e.g. 800" required>
            </div>
        </div>

        <label>Landmark</label>
        <input type="text" name="landmark" placeholder="Nearby landmark" required>

        <button type="submit" class="btn">Sign Up</button>
    </form>

    <div class="back">
        <a href="./">← Back to Home</a>
    </div>
</div>

</body>
</html>
