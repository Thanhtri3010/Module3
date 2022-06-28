<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 28/06/2022
  Time: 12:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">--%>
</head>
<body>
<h1 class="text-center">Danh Sách khách hàng</h1>
<table class="table">
    <tr>
        <th>Tên</th>
        <th>Ngày Sinh</th>
        <th>Địa Chỉ </th>
        <th>Ảnh</th>
    </tr>
    <c:forEach items="${clientList}" var="client">
        <tr>
            <td>${client.name}</td>
            <td>${client.birthday}</td>
            <td>${client.address}</td>
            <td><img width="40 40" src="${client.img}" alt=""> </td>
        </tr>
    </c:forEach>
</table>
</body>
<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>--%>
</html>
