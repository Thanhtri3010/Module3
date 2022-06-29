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
<h1>Edit product</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/products">Back to product list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Product Name:</td>
                <td><input type="text" name="productName" id="productName" value="${requestScope["product"].getProductName()}"></td>
            </tr>
            <tr>
                <td>Product Price:</td>
                <td><input type="text" name="productPrice" id="productPrice" value="${requestScope["product"].getProductPrice()}"></td>
            </tr>
            <tr>
                <td>Product Description:</td>
                <td><input type="text" name="productDescription" id="productDescription" value="${requestScope["product"].getProductDescription()}">
                </td>
            </tr>
            <tr>
                <td>Producer: </td>
                <td><input type="text" name="producer" id="producer" value="${requestScope["product"].getProducer()}"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Update product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
