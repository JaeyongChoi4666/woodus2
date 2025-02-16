<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>우드어스_관리자</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description"/>
        <meta content="Themesbrand" name="author" />
        <!-- jquery -->
        <script src="/resources/js/jquery-3.7.0.min.js"></script>
        <!-- App favicon -->
<%--        <link rel="shortcut icon" href="/resources/assets/images/favicon.ico" />--%>
        <!-- choices css -->
        <link href="/resources/assets/libs/choices.js/public/assets/styles/choices.min.css" rel="stylesheet" type="text/css"/>
        <!-- color picker css -->
        <link rel="stylesheet" href="/resources/assets/libs/@simonwep/pickr/themes/classic.min.css"/>
        <!-- 'classic' theme -->
        <link rel="stylesheet" href="/resources/assets/libs/@simonwep/pickr/themes/monolith.min.css"/>
        <!-- 'monolith' theme -->
        <link rel="stylesheet" href="/resources/assets/libs/@simonwep/pickr/themes/nano.min.css"/>
        <!-- 'nano' theme -->

        <!-- datepicker css -->
        <link rel="stylesheet" href="/resources/assets/libs/flatpickr/flatpickr.min.css" />
        <!-- preloader css -->
        <link rel="stylesheet" href="/resources/assets/css/preloader.min.css" type="text/css"/>
        <!-- Bootstrap Css -->
        <link href="/resources/assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css"/>
        <!-- Icons Css -->
        <link href="/resources/assets/css/icons.min.css" rel="stylesheet" type="text/css"/>
        <!-- App Css-->
        <link href="/resources/assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css"/>

        <script>
            $(document).ready(function() {
            const url = new URL(window.location.href);
            const notice_id = url.searchParams.get("id");

            console.log(notice_id);

            if (notice_id !== null) {
                $("#notice_header").text("공지사항 수정 / 삭제");
            } else {
                $("#notice_header").text("공지사항 추가");
            }
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
                                <div
                                    class="page-title-box d-sm-flex align-items-center justify-content-between"
                                >
                                    <h4 id="notice_header" class="mb-sm-0 font-size-18">
                                        <!-- 공지사항 수정 / 삭제 -->
                                    </h4>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="card">
                                            <div class="card-header">
                                                <div>
                                                    <input
                                                        class="form-control"
                                                        type="text"
                                                        id="title"
                                                        placeholder="공지사항 제목"
                                                    />
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div
                                                    id="ckeditor-classic"
                                                ></div>
                                                <div class="mt-3">
                                                    <button
                                                        type="button"
                                                        class="btn btn-soft-primary waves-effect waves-light"
                                                        id="btnSave"
                                                    >
                                                        저장하기
                                                    </button>
                                                    <button
                                                        type="button"
                                                        class="btn btn-soft-danger waves-effect waves-light mx-3"
                                                        id="btnSave"
                                                    >
                                                        삭제하기
                                                    </button>
                                                </div>
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

        <!-- ckeditor -->
        <script src="/resourses/assets/libs/@ckeditor/ckeditor5-build-classic/build/ckeditor.js"></script>

        <!-- init js -->
        <script src="/resourses/assets/js/pages/form-editor.init.js"></script>

        <!-- JAVASCRIPT -->
        <script src="/resourses/assets/libs/jquery/jquery.min.js"></script>
        <script src="/resourses/assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="/resourses/assets/libs/metismenu/metisMenu.min.js"></script>
        <script src="/resourses/assets/libs/simplebar/simplebar.min.js"></script>
        <script src="/resourses/assets/libs/node-waves/waves.min.js"></script>
        <script src="/resourses/assets/libs/feather-icons/feather.min.js"></script>
        <!-- pace js -->
        <script src="/resourses/assets/libs/pace-js/pace.min.js"></script>

        <!-- apexcharts -->
        <script src="/resourses/assets/libs/apexcharts/apexcharts.min.js"></script>

        <!-- Plugins js-->
        <script src="/resourses/assets/libs/admin-resources/jquery.vectormap/jquery-jvectormap-1.2.2.min.js"></script>
        <script src="/resourses/assets/libs/admin-resources/jquery.vectormap/maps/jquery-jvectormap-world-mill-en.js"></script>
        <!-- dashboard init -->
        <script src="/resourses/assets/js/pages/dashboard.init.js"></script>

        <!-- Required datatable js -->
        <script src="/resourses/assets/libs/datatables.net/js/jquery.dataTables.min.js"></script>
        <script src="/resourses/assets/libs/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>

<%--        <script src="/resources/assets/js/app.js"></script>--%>

        <!-- bootstrap JS -->
        <script
            src="/resources/js/bootstrap.bundle.min.js"
            type="text/javascript"
        ></script>
        <script src="/resources/js/mobile/home.js" type="text/javascript"></script>

        <script>
            $(document).ready(function () {
                const urlStr = window.location.href;
                const url = new URL(urlStr);
                const urlParams = url.searchParams;
                const notice_id = urlParams.get("id");
                $.ajax({
                    url: "http://woodus.net/api/notice/" + notice_id,
                    method: "GET",
                    success: function (response) {
                        const fields = [
                            "title",
                        ];
                        fields.forEach((field) =>
                            $("#" + field).val(response[0][field])
                        );
                        editor.setData(response[0].content);
                        
                    },
                    error: function (xhr, status, error) {
                        console.error("AJAX 요청 실패:", status, error);
                    },
                });
            });
            
        </script>

        <script>
            $("#btnSave").on("click", function () {
                if (!confirm("수정하시겠습니까?")) return;
                const urlStr = window.location.href;
                const url = new URL(urlStr);
                const urlParams = url.searchParams;
                const notice_id = urlParams.get("id");
                var content = editor.getData();
                
                $.ajax({
                    url: "http://localhost:3000/api/modifyNotice",
                    method: "POST",
                    data: {
                        id           : notice_id,
                        title        : $("#title").val(),
                        content      : content,
                    },
                    success: function (response) {
                        alert("수정되었습니다.");
                    },
                    error: function (xhr, status, error) {
                        console.log("AJAX 요청 실패:", status, error);
                        
                        
                    },
                });
            });
        </script>

        <script>
            $("#btnSave").on("click", function () {
                if (!confirm("삭제하시겠습니까?")) return;
                const urlStr = window.location.href;
                const url = new URL(urlStr);
                const urlParams = url.searchParams;
                const notice_id = urlParams.get("id");
                var content = editor.getData();
                
                $.ajax({
                    url: "http://localhost:3000/api/removeNotice",
                    method: "POST",
                    data: {
                        id           : notice_id,
                    },
                    success: function (response) {
                        alert("삭제되었습니다.");
                    },
                    error: function (xhr, status, error) {
                        console.log("AJAX 요청 실패:", status, error);
                        
                        
                    },
                });
            });
        </script>
    </body>
</html>
