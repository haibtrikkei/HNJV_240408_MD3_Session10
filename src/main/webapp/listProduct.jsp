<%--
  Created by IntelliJ IDEA.
  User: bthai
  Date: 7/24/2024
  Time: 2:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
<head>
  <title>List Product!</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
  <div class="container">
    <h1>LIST PRODUCT</h1>
    <h3 class="text-success">${success}</h3>

    <table class="table table-bordered">
      <tr>
        <th>Product Id</th>
        <th>Product Name</th>
        <th>Producer</th>
        <th>Year making</th>
        <th>Expire date</th>
        <th>Quantity</th>
        <th>Price</th>
      </tr>

      <c:forEach items="${list}" var="p">
        <tr>
          <td>${p.id}</td>
          <td>${p.name}</td>
          <td>${p.producer}</td>
          <td>${p.yearMaking}</td>
          <td><fmt:formatDate value="${p.expireDate}" pattern="dd/MM/yyyy"/> </td>
          <td>${p.quantity}</td>
          <td><fmt:formatNumber value="${p.price}"/> </td>
        </tr>
      </c:forEach>
    </table>

    <a href="insertProduct.jsp">Add New Product</a>
  </div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>
</html>