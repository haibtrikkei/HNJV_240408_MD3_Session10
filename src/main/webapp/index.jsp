<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<%--    <jsp:forward page="employee_form.jsp"></jsp:forward>--%>

    <%
        response.sendRedirect("employee_form.jsp");
    %>
</body>
</html>