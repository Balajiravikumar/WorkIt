<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>WorkIt - Home</title>
    <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f6f9;
        margin: 0;
        padding: 0;
        min-height: 100vh;
        display: flex;
        flex-direction: column;
    }

    .header {
        background-color: #2c3e50;
        color: white;
        padding: 15px;
        text-align: center;
    }

    /* CENTER CONTENT */
    .container {
        flex: 1;
        display: flex;
        justify-content: center;   /* horizontal center */
        align-items: center;       /* vertical center */
        flex-wrap: wrap;
        gap: 20px;
    }

    .btn {
        display: inline-block;
        padding: 15px 30px;
        font-size: 16px;
        text-decoration: none;
        color: white;
        border-radius: 100px;
        min-width: 140px;
        text-align: center;
    }

    .login { background-color: #3498db; }
    .signup { background-color: #2ecc71; }
    .contact { background-color: #e67e22; }
    .help { background-color: #9b59b6; }

    .btn:hover {
        opacity: 0.85;
    }

    .footer {
        background-color: #2c3e50;
        color: white;
        padding: 10px;
        text-align: center;
    }
</style>


</head>
<body>

<div class="header">
    <h1>Welcome to WorkIt</h1>
    <p>Your Productivity Partner</p>
</div>

<div class="container">
    <a href="login" class="btn login">Login</a>
    <a href="signup" class="btn signup">Sign Up</a>
    <a href="contact" class="btn contact">Contact</a>
    <a href="help" class="btn help">Help</a>
</div>

<div class="footer">
    <p>© 2025 WorkIt. All Rights Reserved.</p>
</div>

</body>
</html>

