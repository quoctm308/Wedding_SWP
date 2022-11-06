<%--
  Created by IntelliJ IDEA.
  User: tranm
  Date: 10/28/2022
  Time: 8:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
    <link rel="apple-touch-icon" href="../../../app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="../../../app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600"
          rel="stylesheet">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="../../../app-assets/vendors/css/vendors.min.css">
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/colors.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/components.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/themes/dark-layout.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/themes/bordered-layout.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/themes/semi-dark-layout.css">

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/core/menu/menu-types/vertical-menu.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/plugins/forms/form-validation.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/pages/page-auth.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="../../../assets/css/style.css">
    <!-- END: Custom CSS-->
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">Trang quản lý</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="adminManageCustomer.jsp">Người dùng</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="adminManageStaff.jsp">Nhân viên</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Sản phẩm</a>
            </li>
        </ul>
    </div>
    <span class="navbar-text mr-3">
                Welcome, admin
    </span>
    <div class="mr-1">
        <button class="btn btn-danger">Đăng xuất</button>
    </div>
</nav>
<div class="container mt-5">
    <div class="col-md-12 text-center mb-3">
        <%--        <c:if action="${search}">--%>
        <%--            <h2>ket qua tim kiem</h2>--%>
        <%--        </c:if>--%>
        <%--        <c:if action !="${search}">--%>
        <%--            <h2>Danh sách người dùng</h2>--%>
        <%--        </c:if>--%>
        <h2>${action.equals("search") ? "ket qua tim kiem" : "Danh sách người dùng"}</h2>

    </div>
    <div class="row justify-content-center align-items-center">
        <form action="SearchUserServlet" method="post" class="form-inline">
            <input class="form-control" name="fullname" type="search" placeholder="Điền vào tên người dùng.."
                   aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
    </div>
    <table class="table">
        <thead class="thead-dark">
        <tr>
            <th>Id</th>
            <th>Username</th>
            <th>Fullname</th>
            <th>Email</th>
            <th>Tel</th>
            <th>Confirm Email</th>
            <th>Role</th>
            <th class="text-center">action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="i">
            <tr>
                <td>${i.getId()}</td>
                <td>${i.getUserName()}</td>
                <td>${i.getFullName()}</td>
                <td>${i.getEmail()}</td>
                <td>${i.getTel()}</td>
                <td>${i.isEmail()}</td>
                <td>${i.getRole()}</td>
                <td>
                    <a role="button" class="btn btn-info" href="update?sid=${i.getId()}">Update</a>
                    <a role="button" class="btn btn-danger" href="DeleteControl?sid=${i.getId()}">Delete</a>
                </td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
</div>

<%--Khu vực chứa script--%>
<script src="../../../app-assets/vendors/js/vendors.min.js"></script>
<script src="../../../app-assets/js/core/app-menu.js"></script>
<script src="../../../app-assets/js/core/app.js"></script>
<script src="../../../app-assets/js/scripts/forms/form-tooltip-valid.js"></script>
<script>
    $(window).on('load', function () {
        if (feather) {
            feather.replace({
                width: 14,
                height: 14
            });
        }
    })
</script>
<%--Kết thúc script--%>
</body>
</html>
