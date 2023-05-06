<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: chintanpatel
  Date: 5/5/23
  Time: 2:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href='<c:url value="/resources/css/bootstrap.min.css"/>'>
    <script type="text/javascript" href='<c:url value="/resources/js/bootstrap.bundle.min.js"/>'></script>
    <script type="text/javascript" href='<c:url value="/resources/js/bootstrap.min.js"/>'></script>
</head>
<body>
<div class="container mt-5">
    <c:url value="/employees/getEmployee" var="employeeUrl"/>
    <a href="${employeeUrl}">Employee</a>
</div>
</body>
</html>
