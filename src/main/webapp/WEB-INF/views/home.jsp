<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home | Student Management</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', sans-serif;
            background-color: #f5f5f5;
        }

        .navbar {
            background-color: #333;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            margin: 0 20px;
            font-weight: bold;
            font-size: 18px;
        }

        .container {
            max-width: 400px;
            margin: 80px auto;
            background-color: white;
            padding: 40px 30px;
            border-radius: 12px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            text-align: center;
        }

        h1 {
            margin-bottom: 20px;
            color: #333;
        }

        p {
            margin-bottom: 30px;
            font-size: 15px;
            color: #555;
        }

      .abutton {
    background-color: #333;
    color: #fff;
    border: none;
    padding: 12px 24px;
    width: 200px;
    border-radius: 6px;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
    text-decoration: none;
    display: block;
    margin: 10px auto;
    transition: background-color 0.3s ease, transform 0.2s ease;
    text-align: center;
}

        .abutton:hover {
            background-color: #555;
            transform: scale(1.02);
        }

        .abutton:active {
            background-color: #222;
            transform: scale(0.98);
        }

        .abutton:focus {
            outline: none;
            box-shadow: 0 0 0 3px rgba(51, 51, 51, 0.3);
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <a href="#">Student Management</a>
        <div>
            <a href="${pageContext.request.contextPath}/login">Login</a>
            <a href="${pageContext.request.contextPath}/Signup">Signup</a>
        </div>
    </div>

    <!-- Main Section -->
    <div class="container">
        <h1>Welcome</h1>
        <p>Manage your students easily and securely.<br>Click below to get started.</p>

        <a href="${pageContext.request.contextPath}/login" class="abutton">Login</a>
        <a href="${pageContext.request.contextPath}/Signup" class="abutton">Sign Up</a>
    </div>

</body>
</html>
