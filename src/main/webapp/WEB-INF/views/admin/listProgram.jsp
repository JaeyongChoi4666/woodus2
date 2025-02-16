<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>우드어스_관리자</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta
            content="Premium Multipurpose Admin & Dashboard Template"
            name="description"
        />
        <meta content="Themesbrand" name="author" />
        <!-- jquery -->
        <script src="/resources/js/jquery-3.7.0.min.js"></script>
        <!-- App favicon -->
        <%--
        <link rel="shortcut icon" href="/resources/assets/images/favicon.ico" />
        --%>

        <!-- choices css -->
        <link
            href="/resources/assets/libs/choices.js/public/assets/styles/choices.min.css"
            rel="stylesheet"
            type="text/css"
        />

        <!-- color picker css -->
        <link
            rel="stylesheet"
            href="/resources/assets/libs/@simonwep/pickr/themes/classic.min.css"
        />
        <!-- 'classic' theme -->
        <link
            rel="stylesheet"
            href="/resources/assets/libs/@simonwep/pickr/themes/monolith.min.css"
        />
        <!-- 'monolith' theme -->
        <link
            rel="stylesheet"
            href="/resources/assets/libs/@simonwep/pickr/themes/nano.min.css"
        />
        <!-- 'nano' theme -->

        <!-- datepicker css -->
        <link
            rel="stylesheet"
            href="/resources/assets/libs/flatpickr/flatpickr.min.css"
        />

        <!-- preloader css -->
        <link
            rel="stylesheet"
            href="/resources/assets/css/preloader.min.css"
            type="text/css"
        />

        <!-- Bootstrap Css -->
        <link
            href="/resources/assets/css/bootstrap.min.css"
            id="bootstrap-style"
            rel="stylesheet"
            type="text/css"
        />
        <!-- Icons Css -->
        <link
            href="/resources/assets/css/icons.min.css"
            rel="stylesheet"
            type="text/css"
        />
        <!-- App Css-->
        <link
            href="/resources/assets/css/app.min.css"
            id="app-style"
            rel="stylesheet"
            type="text/css"
        />
        <script>
            $(document).ready(function () {
                $.ajax({
                    url: "http://localhost:3000/api/course/present",
                    method: "GET",
                    async: false,
                    success: function (response) {
                        for (var i = 0; i < response.length; i++) {
                            const list = response;
                            var type = "체험";
                            if (list[i].type == "edu") {
                                type = "교육";
                            }
                            var str =
                                "<tr >" +
                                "<td style='text-align:center'>" +
                                (i + 1) +
                                "</td>" +
                                '<td><a href="detailProgram?id=' +
                                list[i].id +
                                '">' +
                                list[i].name +
                                "</a></td>" +
                                "<td>" +
                                type +
                                "</td>" +
                                "<td>" +
                                list[i].start_date +
                                " ~ " +
                                list[i].end_date +
                                "</td>" +
                                "<td>모집중</td>" +
                                "</tr>";
                            $("#program_list").append(str);
                        }
                    },
                    error: function (xhr, status, error) {
                        console.error("AJAX 요청 실패:", status, error);
                    },
                });
            });
        </script>
    </head>
    <body>
        <!-- Begin page -->
        <div id="layout-wrapper">
            <!-- ========== Left Sidebar Start ========== -->
            <div id="Submenu">
                <script>
                    $("#Submenu").load("/resources/admin/common_html/menu.html");
                </script>
            </div>
            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="main-content">
                <div class="page-content">
                    <div class="container-fluid">
                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                                    <h4 class="mb-sm-0 font-size-18">프로그램 수정/삭제</h4>
                                </div>

                                <div class="row">
                                    <div class="col-12">
                                        <div class="card">
                                            <div class="card-header">
                                                <h4 class="card-title">프로그램 목록</h4>
                                            </div>
                                            <div class="card-body">
                                                <table id="datatable" class="table table-bordered dt-responsive nowrap w-100">
                                                    <thead>
                                                        <tr>
                                                            <th style="
                                                                    width: 10px;
                                                                ">No.</th>
                                                            <th>프로그램명</th>
                                                            <th>프로그램종류</th>
                                                            <th>프로그램기간</th>
                                                            <th>모집여부</th>
                                                        </tr>
                                                    </thead>

                                                    <tbody id="program_list">
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end col -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- container-fluid -->
                </div>
                <!-- End Page-content -->
            </div>
            <!-- end main content-->
        </div>
        <!-- END layout-wrapper -->

        <!-- Datatable init js -->
        <script src="/resources/assets/js/pages/datatables.init.js"></script>

        <!-- JAVASCRIPT -->
        <script src="/resources/assets/libs/jquery/jquery.min.js"></script>
        <script src="/resources/assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="/resources/assets/libs/metismenu/metisMenu.min.js"></script>
        <script src="/resources/assets/libs/simplebar/simplebar.min.js"></script>
        <script src="/resources/assets/libs/node-waves/waves.min.js"></script>
        <script src="/resources/assets/libs/feather-icons/feather.min.js"></script>
        <!-- pace js -->
        <script src="/resources/assets/libs/pace-js/pace.min.js"></script>

        <!-- apexcharts -->
        <script src="/resources/assets/libs/apexcharts/apexcharts.min.js"></script>

        <!-- Plugins js-->
        <script src="/resources/assets/libs/admin-resources/jquery.vectormap/jquery-jvectormap-1.2.2.min.js"></script>
        <script src="/resources/assets/libs/admin-resources/jquery.vectormap/maps/jquery-jvectormap-world-mill-en.js"></script>
        <!-- dashboard init -->
        <script src="/resources/assets/js/pages/dashboard.init.js"></script>

        <!-- Required datatable js -->
        <script src="/resources/assets/libs/datatables.net/js/jquery.dataTables.min.js"></script>
        <script src="/resources/assets/libs/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>

        <script src="/resources/assets/js/app.js"></script>
    </body>
</html>
