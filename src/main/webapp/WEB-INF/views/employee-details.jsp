<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: chintanpatel
  Date: 5/6/23
  Time: 10:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Manage Employee</title>
    <link rel="stylesheet" href='<c:url value="/resources/css/bootstrap.min.css"/>'>
    <script type="text/javascript" href='<c:url value="/resources/js/bootstrap.bundle.min.js"/>'></script>
    <script type="text/javascript" href='<c:url value="/resources/js/bootstrap.min.js"/>'></script>
</head>
<body>
<div class="container mt-5">
    <div class="fs-1 fw-bold">
        <h1>Manage Employee</h1>
    </div>
    <form:form action="/SpringmvcAndHibernate/employees/saveOrUpdateEmployee" method="post" modelAttribute="employee" cssClass="row g-3">
        <form:hidden path="employeeId"/>
        <div class="col-md-4 mt-5">
            <form:label path="firstName" cssClass="form-label fw-semibold">FirstName</form:label>
            <form:input path="firstName" cssClass="form-control"/>
            <form:errors path="firstName" cssStyle="color: red"/>
        </div>
        <div class="col-md-4 mt-5">
            <form:label path="middleName" cssClass="form-label fw-semibold">MiddleName</form:label>
            <form:input path="middleName" cssClass="form-control"/>
            <form:errors path="middleName" cssStyle="color: red"/>
        </div>
        <div class="col-md-4 mt-5">
            <form:label path="lastName" cssClass="form-label fw-semibold">LastName</form:label>
            <form:input path="lastName" cssClass="form-control"/>
            <form:errors path="lastName" cssStyle="color: red"/>
        </div>
        <div class="col-12">
            <form:label path="address" cssClass="form-label fw-semibold">Address</form:label>
            <form:textarea path="address" cssClass="form-control" cols="38" rows="6"/>
            <form:errors path="address" cssStyle="color: red"/>
        </div>
        <div class="col-md-6">
            <form:label path="city" cssClass="form-label fw-semibold">City</form:label>
            <form:input path="city" cssClass="form-control"/>
            <form:errors path="city" cssStyle="color: red"/>
        </div>
        <div class="col-md-6">
            <form:label path="postalCode" cssClass="form-label fw-semibold">PostalCode</form:label>
            <form:input path="postalCode" cssClass="form-control"/>
            <form:errors path="postalCode" cssStyle="color: red"/>
        </div>
        <div class="col-md-6">
            <form:label path="gender" cssClass="form-label fw-semibold">Gender</form:label>
            <div class="col-md-6">
                <div class="form-check form-check-inline">
                    <form:radiobutton path="gender" cssClass="form-check-input" value="Male"/>
                    <form:label path="gender" cssClass="form-check-label">Male</form:label>
                </div>
                <div class="form-check form-check-inline">
                    <form:radiobutton path="gender" cssClass="form-check-input" value="Female"/>
                    <form:label path="gender" cssClass="form-check-label">Female</form:label>
                </div>
            </div>
            <form:errors path="gender" cssStyle="color: red"/>
        </div>
        <div class="col-md-6">
            <form:label path="programmingSkill" cssClass="form-label fw-semibold">Programming Skill</form:label>
            <div>
                <div class="form-check form-check-inline">
                    <form:checkbox path="programmingSkill" cssClass="form-check-input" value="Java"/>
                    <form:label path="programmingSkill" cssClass="form-check-label">Java</form:label>
                </div>
                <div class="form-check form-check-inline">
                    <form:checkbox path="programmingSkill" cssClass="form-check-input" value="C++"/>
                    <form:label path="programmingSkill" cssClass="form-check-label">C++</form:label>
                </div>
                <div class="form-check form-check-inline">
                    <form:checkbox path="programmingSkill" cssClass="form-check-input" value="HTML"/>
                    <form:label path="programmingSkill" cssClass="form-check-label">HTML</form:label>
                </div>
                <div class="form-check form-check-inline">
                    <form:checkbox path="programmingSkill" cssClass="form-check-input" value="Python"/>
                    <form:label path="programmingSkill" cssClass="form-check-label">Python</form:label>
                </div>
                <div class="form-check form-check-inline">
                    <form:checkbox path="programmingSkill" cssClass="form-check-input" value="CSS"/>
                    <form:label path="programmingSkill" cssClass="form-check-label">CSS</form:label>
                </div>
            </div>
            <form:errors path="programmingSkill" cssStyle="color: red"/>
        </div>
        <div class="col-md-4">
            <form:label path="email" cssClass="form-label fw-semibold">E-Mail</form:label>
            <form:input path="email" cssClass="form-control"/>
            <form:errors path="email" cssStyle="color: red"/>
        </div>
        <div class="col-md-4">
            <form:label path="mobile" cssClass="form-label fw-semibold">Mobile</form:label>
            <form:input path="mobile" cssClass="form-control"/>
            <form:errors path="mobile" cssStyle="color: red"/>
        </div>
        <div class="col-md-4">
            <form:label path="birthDate" cssClass="form-label fw-semibold">BirthDate</form:label>
            <form:input path="birthDate" cssClass="form-control"/>
            <form:errors path="birthDate" cssStyle="color: red"/>
        </div>
        <div class="col-md-4">
            <form:label path="userName" cssClass="form-label fw-semibold">UserName</form:label>
            <form:input path="userName" cssClass="form-control"/>
            <form:errors path="userName" cssStyle="color: red"/>
        </div>
        <div class="col-md-4">
            <form:label path="password" cssClass="form-label fw-semibold">Password</form:label>
            <form:password showPassword="true" path="password" cssClass="form-control"/>
            <form:errors path="password" cssStyle="color: red"/>
        </div>
        <div class="col-md-4">
            <form:label path="confirmPassword" cssClass="form-label fw-semibold">Confirm Password</form:label>
            <form:password showPassword="true" path="confirmPassword" cssClass="form-control"/>
            <form:errors path="confirmPassword" cssStyle="color: red"/>
        </div>
        <div class="col-12 d-grid gap-2">
            <button type="submit" class="btn btn-success">Submit</button>
        </div>
    </form:form>
</div>
</body>
</html>
