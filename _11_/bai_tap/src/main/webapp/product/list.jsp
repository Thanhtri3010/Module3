<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 28/06/2022
  Time: 20:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Products</h1>
<p>
    <a href="/products?action=create">Create new product</a>
</p>
<form action="/products">
    <input type="text" name="nameSearch">
    <input type="submit" name="action" value="search">
</form>
<table border="1">
    <tr>
        <td>Product Name</td>
        <td>Product Price</td>
        <td>Product Description</td>
        <td>Producer</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${requestScope["products"]}' var="product">
        <tr>
            <td><a href="/products?action=view&id=${product.getId()}">${product.getProductName()}</a></td>
            <td>${product.getProductPrice()}</td>
            <td>${product.getProductDescription()}</td>
            <td>${product.getProducer()}</td>
            <td><a href="/products?action=edit&id=${product.getId()}">edit</a></td>
            <td><a href="/products?action=delete&id=${product.getId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
