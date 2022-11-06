<%--
  Created by IntelliJ IDEA.
  User: FPTSHOP
  Date: 10/25/2022
  Time: 9:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="view/header.jsp"/>
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="51">

<!-- Navbar Start -->
<jsp:include page="view/navbar.jsp"/>
<!-- Navbar End -->

<div class="tab-content" id="nav-tabContent">
    <div class="tab-pane fade show active p-3" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
        <div class="row justify-content-center align-items-center">
            <form class="form-inline">
                <input class="form-control" type="search" placeholder="Điền vào tên người dùng.." aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
        <div class="container-lg mt-5">
            <div class="row justify-content-center">
                <div class="col-lg">
                    <div>
                        <table class="table table-primary table-bordered border-light table-hover">
                            <thead class="table-light">
                            <tr class="text-center">
                                <td>UserName</td>
                                <td>Password</td>
                                <td>Fullname</td>
                                <td>Role</td>
                                <td colspan="2">Action</td>
                            </tr>
                            </thead>
                            <tbody>
                            <c:set var="u" value="${USERLIST}" scope="session"/>
                            <c:forEach items="${u}" var="ul">
                                <c:if test="${ul.user != NAME.user}">
                                    <tr>
                                        <td class="text-center">${ul.user}</td>

                                        <td class="text-center">${ul.password}</td>

                                        <td class="text-center"> ${ul.name}</td>

                                        <c:if test="${ul.role == true}">
                                            <td class="text-center">Admin</td>
                                        </c:if>
                                        <c:if test="${ul.role == false}">
                                            <td class="text-center">User</td>
                                        </c:if>

                                        <c:if test="${ul.status == true}">
                                            <td class="text-center">Active</td>
                                        </c:if>
                                        <c:if test="${ul.status == false}">
                                            <td class="text-center">Inactive</td>
                                        </c:if>

                                        <td class="text-center">
                                            <a class="btn btn-outline-primary" href="AdminUpdateAccount?user=${ul.user}">Update</a>
                                        </td>

                                        <td class="text-center">
                                            <a class="btn btn-outline-danger" href="AdminDeleteServlet?user=${ul.user}">Delete</a>
                                            <a class="btn btn-outline-success" href="AdminRecoverAccount?user=${ul.user}">Recover</a>
                                        </td>
                                    </tr>
                                </c:if>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="tab-pane fade p-3" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">

        <div class="container-lg mt-5">
            <div class="row justify-content-center">
                <div class="col-lg">
                    <div>
                        <table class="table table-primary table-bordered border-light table-hover">
                            <thead class="table-light">
                            <tr class="text-center">
                                <td>Product ID</td>
                                <td>Product Name</td>
                                <td>Quantity</td>
                                <td>Price</td>
                                <td>Image</td>
                                <td>UserCreate</td>
                                <td>DateCreate</td>
                                <td colspan="2">Action</td>
                            </tr>
                            </thead>
                            <tbody>
                            <c:set var="p" value="${PRODUCT}" scope="session"/>
                            <c:forEach items="${p}" var="product">
                                <tr>
                                    <td class="text-center">${product.PID}</td>
                                    <td class="text-center">${product.pName}</td>
                                    <td class="text-center"> ${product.quantity}</td>
                                    <td class="text-center">${product.price}</td>
                                    <td class="text-center"><img src="${product.image}" alt="image${product.pName}" style="width: 170px"/></td>
                                    <td class="text-center">${product.user}</td>
                                    <td class="text-center">${product.dateCreate}</td>

                                    <td class="text-center">
                                        <a class="btn btn-outline-primary" href="AdminUpdateProduct?PID=${product.PID}">Update</a>
                                    </td>

                                    <td class="text-center">
                                        <a class="btn btn-outline-danger" href="AdminDeleteProductServlet?PID=${product.PID}">Delete</a>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<!-- Footer Start -->
<jsp:include page="view/footer.jsp"/>
<!-- Footer End -->
<a href="#" class="btn btn-lg btn-outline-primary btn-lg-square back-to-top"><i class="fa fa-angle-double-up"></i></a>
<jsp:include page="view/script.jsp"/>
</body>

</html>
