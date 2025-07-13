<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SigUp Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }

        .navbar {
            background-color: #333;
            padding: 10px 20px;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .navbar-left {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-left:35px;
        }

        .navbar-left a {
            color: white;
            text-decoration: none;
            font-weight: bold;
            font-size: 20px;
            margin-right:270px;
        }

        .navbar-left input[type="text"] {
            padding: 6px 6px;
            border-radius: 12px;
            border: none;
            width: 450px;
            margin-top:17px;
           
       
        }

        .navbar-left button {
            background: transparent;
            border: none;
            cursor: pointer;
            padding: 6px 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 26px;
            border-radius: 6px;
            margin-left:-50px;
          
        }

        .navbar-left button img {
            width: 20px;
            height: 20px;
        }

        .navbar-right {
            display: flex;
            align-items: center;
         
        }

        .navbar-right a {
            color: white;
            text-decoration: none;
            font-weight: bold;
            margin-left: 20px;
            font-size: 16px;
             margin-right:50px;
        }

        h2 {
    text-align: center;
    margin-top: 40px;
    color: #333;
    font-size: 24px;
    font-weight: bold;
}
        
        form {
            background-color: white;
            width: 400px;
            margin: 30px auto;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="password"] {
            padding: 10px;
            width: 100%;
            margin-bottom: 20px;
            border-radius: 6px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #333;
            color: white;
            border: none;
            padding: 10px;
            width: 100%;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #555;
        }

        .error-message {
            color: red;
            text-align: center;
            margin-top: 10px;
        }
   .abutton {
  background-color: #333;
  color: #fff;
  border: none;
  padding: 10px;
  width: 100%;
  border-radius: 6px;
  font-size: 16px;
  cursor: pointer;
  transition: background-color 0.3s ease, transform 0.2s ease;
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

}
        
    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <div class="navbar-left">
            <a href="#">Student Management</a>
            <input type="text" placeholder="Search..." />
            <button type="button">
                <img src="https://cdn-icons-png.flaticon.com/512/622/622669.png" alt="Search" />
            </button>
        </div>
        <div class="navbar-right">
            <a href="/">Home</a>
            <a href="${pageContext.request.contextPath}/login">login</a>
        </div>
    </div>

    <!-- Login Section -->
    <h2>Signup</h2>

    <form id="form" method="post" action="/Signup">
        <label>Name:</label>
        <input type="text" name="name" required />
        
        
    <label>Email:</label>
    <input type="text" name="email" required />

        <label>Password:</label>
        <input type="password" name="password" required />
        
        <button class=abutton type="submit" >Signup</button>
<p style="text-align:center; margin-top: 15px;">
    Already have an account? <a href="${pageContext.request.contextPath}/login">login</a>
</p>
    </form>

    <c:if test="${not empty error}">
        <p class="error-message">${error}</p>
    </c:if>

<script>
    window.onload = function () {
        document.getElementById("form").reset();
    };
</script>
</body>
</html>
