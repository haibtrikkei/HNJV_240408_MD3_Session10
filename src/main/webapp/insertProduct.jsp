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
  <title>Add New Product!</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
  <div class="container">
    <h1>ADD NEW PRODUCT</h1>
    <form action="product-process" method="post">
      <table class="table table-bordered">
        <tr>
          <td>Product Id:</td>
          <td><input type="text" name="proId"></td>
        </tr>
        <tr>
          <td>Product Name:</td>
          <td><input type="text" name="proName"></td>
        </tr>
        <tr>
          <td>Producer:</td>
          <td><input type="text" name="producer"></td>
        </tr>
        <tr>
          <td>Year making:</td>
          <td><input type="number" name="yearMaking"></td>
        </tr>
        <tr>
          <td>Expire date:</td>
          <td><input type="date" name="expireDate"></td>
        </tr>
        <tr>
          <td>Quantity:</td>
          <td><input type="number" name="quantity"></td>
        </tr>
        <tr>
          <td>Price:</td>
          <td><input type="number" name="price"></td>
        </tr>
        <tr>
          <td></td>
          <td><input type="submit" name="action" value="Add">
          <input type="reset" value="Clear"/> </td>
        </tr>
      </table>
    </form>

    <a href="index.jsp">Back</a>
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