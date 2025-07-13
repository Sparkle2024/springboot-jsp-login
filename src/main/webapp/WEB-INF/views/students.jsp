<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            padding: 20px;
        }

        table {
            margin: auto;
            border-collapse: collapse;
            width: 80%;
        }

        th, td {
            padding: 10px;
            border: 1px solid #ccc;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        form.inline {
            display: inline;
        }

        .add-form {
            margin-bottom: 20px;
        }

        input[type="text"], input[type="email"], input[type="number"] {
            padding: 5px;
            width: 150px;
            margin-right: 10px;
        }

        button {
            padding: 6px 12px;
            background: #2196F3;
            color: white;
            border: none;
        }

        .delete-button {
            background-color: red;
        }
    </style>
</head>
<body>

    <h2>Student Management</h2>

    <!-- Add Student Form -->
    <form method="post" action="/students/add" class="add-form">
        <input type="text" name="name" placeholder="Name" required />
        <input type="email" name="email" placeholder="Email" required />
        <input type="number" step="0.1" name="percentage" placeholder="Percentage" required />
        <button type="submit">Add Student</button>
    </form>

    <!-- Table of Students -->
    <table>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Percentage</th>
            <th>Action</th>
        </tr>
        <c:forEach var="student" items="${students}">
            <tr>
                <td>${student.name}</td>
                <td>${student.email}</td>
                <td>${student.percentage}</td>
                <td>
                    <form method="post" action="/students/delete/${student.id}" class="inline">
                        <button type="submit" class="delete-button">Delete</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>
