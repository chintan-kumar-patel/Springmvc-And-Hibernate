<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: chintanpatel
  Date: 5/6/23
  Time: 10:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>List Of Employee</title>
    <link rel="stylesheet" href='<c:url value="/resources/css/bootstrap.min.css"/>'>
    <script type="text/javascript" href='<c:url value="/resources/js/bootstrap.bundle.min.js"/>'></script>
    <script type="text/javascript" href='<c:url value="/resources/js/bootstrap.min.js"/>'></script>
</head>
<body>
<div class="container mt-5">
    <div>
        <a href="/SpringmvcAndHibernate/employees/showEmployee" class="link-success fs-4 fw-bold">Add Employee</a>
    </div>
    <div class="fs-1 fw-bold mt-5">
        <h1>List Of Employee</h1>
    </div>
    <c:if test="${!empty employeeList}">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>FirstName</th>
                    <th>LastName</th>
                    <th>City</th>
                    <th>PostalCode</th>
                    <th>Gender</th>
                    <th>ProgrammingSkill</th>
                    <th>Mobile</th>
                    <th>BirthDate</th>
                    <th>UserName</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${employeeList}" var="employee">
                    <c:url var="editLink" value="/employees/manageEmployee">
                        <c:param name="employeeId" value="${employee.employeeId}"/>
                    </c:url>
                    <c:url var="deleteLink" value="/employees/deleteEmployee">
                        <c:param name="employeeId" value="${employee.employeeId}"/>
                    </c:url>
                    <tr>
                        <td>${employee.firstName}</td>
                        <td>${employee.lastName}</td>
                        <td>${employee.city}</td>
                        <td>${employee.postalCode}</td>
                        <td>${employee.gender}</td>
                        <td>
                            <c:forEach items="${employee.programmingSkill}" var="current">
                                [<c:out value="${current}"/>]
                            </c:forEach>
                        </td>
                        <td>${employee.mobile}</td>
                        <td><fmt:formatDate value="${employee.birthDate}" pattern="dd/MM/yyyy"/></td>
                        <td>${employee.userName}</td>
                        <td>
                            <a href="${editLink}" class="link-success">Edit</a>
                            &nbsp;|&nbsp;
                            <a href="${deleteLink}" class="link-danger">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>
</div>
</body>
</html>
