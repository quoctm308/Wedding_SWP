<%--
  Created by IntelliJ IDEA.
  User: tranm
  Date: 10/28/2022
  Time: 8:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <a class="navbar-brand" href="#">Trang qu???n l??</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="adminManageCustomer.jsp">Ng?????i d??ng</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="adminManageStaff.jsp">Nh??n vi??n</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="manageServices.jsp">D???ch v???</a>
            </li>
        </ul>
    </div>
    <span class="navbar-text mr-3">
                Welcome, admin
    </span>
    <div class="mr-1">
        <button class="btn btn-danger">????ng xu???t</button>
    </div>
</nav>
<div class="container mt-5">
    <div class="col-md-12 text-center mb-3">
        <h2>Qu???n l?? d???ch v???</h2>
    </div>
    <div class="row justify-content-center align-items-center">
        <form class="form-inline">
            <input class="form-control" type="search" placeholder="??i???n v??o d???ch v???" aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
    </div>
    <div class="table-responsive">
        <table class="table table-hover">
            <thead>
            <tr class="align-content-center">
                <th>T??n</th>
                <th>Ph??n lo???i</th>
                <th>Gi??</th>
                <th>???nh</th>
                <th>T??nh tr???ng</th>
                <th>M?? t???</th>
                <th>H??nh ?????ng</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>
                    <%--                T??N S???N PH???M ??? ????Y--%>
                    <span class="font-weight-bold">V??y c?????i</span>
                </td>
                <td>
                    <%--                PH??N LO???I GI???A S???N PH???M & D???CH V??? ??? ????Y--%>
                    S???n ph???m
                </td>
                <td>
                    <%--                GI?? S???N PH???M N???M ??? ????Y    --%>
                    3000000 VND
                </td>
                <td>
                    <%--                ???NH D???CH V???/ S???N PH???M ??? ????Y--%>
                    <img
                            src="https://aodaitailoc.com/wp-content/uploads/2022/08/Thiet-ke-vay-cuoi-cong-chua-xoe-cua-Xoai-Non.jpg"
                            width="200px" height="200px" style="object-fit: cover"/></td>
                <td>
                    <%--                STATUS C???A D???CH V??? ??? ????Y--%>
                    Ch??a ???????c thu??
                </td>
                <td>
                    <%--                M?? T??? C???A D???CH V???/S???N PH???M ??? ????Y--%>
                    <p style="width: 200px;
                       overflow: hidden;
                       text-overflow: ellipsis;
                       line-height: 25px;
                       -webkit-line-clamp:5;
                       height: 75px;
                       display: -webkit-box;
                       -webkit-box-orient: vertical;">
                        Mini collection v??y c?????i mang t??n A Pearly White Pure l???y c???m h???ng t??? s???c tr???ng ng???c trai thu???n
                        khi???t. B??? s??u t???p l?? t???ng h???p c???a nh???ng m???u v??y c?? b???n nh???t trong m???i d??ng v??y c?? t???i
                        WEDDINGBOOK.
                        Nh??? nh??ng nh?? ng???c trai nh??ng v???n mang n??t quy???n r??, nh???ng thi???t k??? n??y l?? g???i ?? gi??p l??m n???i
                        b???t v???
                        n??? t??nh v?? tinh t??? c???a c?? d??u.
                    </p>
                </td>
                <td>
                    <%--                H??NH ?????NG CHO S???N PH???M/D???CH V??? ??? ????Y--%>
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-outline-primary waves-effect" data-toggle="modal"
                            data-target="#inlineForm">
                        S???a
                    </button>
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-secondary waves-effect" data-toggle="modal"
                            data-target="#">
                        X??a
                    </button>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
<%--MODAL UPDATE D???CH V??? ??? ????Y--%>
<div class="form-modal-ex">
    <!-- Modal -->
    <div class="modal fade text-left" id="inlineForm" tabindex="-1" aria-labelledby="myModalLabel33"
         style="display: none;" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel33">C???p nh???t d???ch v???/s???n ph???m</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">??</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form class="form form-horizontal">
                        <div class="row">
                            <div class="col-12">
                                <div class="form-group row">
                                    <div class="col-sm-3 col-form-label">
                                        <label for="productName">T??n s???n ph???m</label>
                                    </div>
                                    <div class="col-sm-9">
                                        <input type="text" id="productName" class="form-control" name="productName"
                                               placeholder="Nh???p v??o t??n s???n ph???m" value="V??y c?????i">
                                    </div>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group row">
                                    <div class="col-sm-3">
                                        <label for="category">Ph??n lo???i</label>
                                    </div>
                                    <div class="col-sm-9" id="category">
                                        <div class="form-check-inline">
                                            <input class="form-check-input" type="radio" name="service"
                                                   id="service1">
                                            <label class="form-check-label" for="service1">
                                                D???ch v???
                                            </label>
                                        </div>
                                        <div class="form-check-inline">
                                            <input class="form-check-input" type="radio" name="service"
                                                   id="service2">
                                            <label class="form-check-label" for="service2">
                                                S???n ph???m
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group row">
                                    <div class="col-sm-3 col-form-label">
                                        <label for="price">Gi?? ti???n</label>
                                    </div>
                                    <div class="col-sm-9">
                                        <input type="text" id="price" class="form-control" name="price"
                                               placeholder="????n gi??">
                                    </div>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group row">
                                    <div class="col-sm-3 col-form-label">
                                        <label>???nh s???n ph???m</label>
                                    </div>
                                    <div class="col-sm-9">
                                        <div class="media mb-2">
                                            <img src="../../../app-assets/images/avatars/7.png" alt="users avatar"
                                                 class="user-avatar users-avatar-shadow rounded mr-2 my-25 cursor-pointer"
                                                 height="90" width="90">
                                            <div class="media-body mt-50">
                                                <div class="col-12 d-flex mt-1 px-0">
                                                    <label class="btn btn-secondary mr-75 mb-0 waves-effect waves-float waves-light"
                                                           for="change-picture">
                                                        <span class="d-none d-sm-block">Thay ?????i</span>
                                                        <input class="form-control" type="file" id="change-picture"
                                                               hidden="" accept="image/png, image/jpeg, image/jpg">
                                                        <span class="d-block d-sm-none">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
                                                             viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                             stroke-width="2" stroke-linecap="round"
                                                             stroke-linejoin="round" class="feather feather-edit mr-0"><path
                                                                d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path><path
                                                                d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path></svg>
                                                    </span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group row">
                                    <div class="col-sm-3">
                                        <label for="category">T??nh tr???ng</label>
                                    </div>
                                    <div class="col-sm-9" id="status">
                                        <div class="form-check-inline">
                                            <input class="form-check-input" type="radio" name="status"
                                                   id="status1">
                                            <label class="form-check-label" for="status1">
                                                Ch??a ???????c thu??
                                            </label>
                                        </div>
                                        <div class="form-check-inline">
                                            <input class="form-check-input" type="radio" name="status"
                                                   id="status2">
                                            <label class="form-check-label" for="status2">
                                                ???? ???????c thu??
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-9 offset-sm-3">
                                <button type="reset" class="btn btn-primary mr-1 waves-effect waves-float waves-light">
                                    L??u
                                </button>
                                <button type="reset" class="btn btn-secondary waves-effect">?????t l???i</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<%--K???T TH??C MODAL UPDATE D???CH V???--%>

<jsp:include page="view/script.jsp"/>


<%--Khu v???c ch???a script--%>
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
<%--K???t th??c script--%>

</body>
</html>
