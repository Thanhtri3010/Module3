<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 28/06/2022
  Time: 20:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Delete product</h1>
<p>
    <a href="/products">Back to product list</a>
</p>
<form method="post">
    <h3>Are you sure?</h3>
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Product Name: </td>
                <td>${requestScope["product"].getProductName()}</td>
            </tr>
            <tr>
                <td>Product Price: </td>
                <td>${requestScope["product"].getProductPrice()}</td>
            </tr>
            <tr>
                <td>Product Description: </td>
                <td>${requestScope["product"].getProductDescription()}</td>
            </tr>
            <tr>
                <td>Producer: </td>
                <td>${requestScope["product"].getProducer()}</td>
            </tr>
            <tr>
                <td><input type="submit" value="Delete product"></td>
                <td><a href="/products">Back to product list</a></td>
            </tr>
        </table>
    </fieldset>
</body>
</html>
