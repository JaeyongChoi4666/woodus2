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
        <link rel="stylesheet" href="/resources/assets/libs/flatpickr/flatpickr.min.css"/>
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
                const contribution_id = url.searchParams.get("id");

                if (contribution_id !== null) {
                    $("#contribution_header").text("기업사회공헌 삭제");
                    $("#Add").hide();
                    $("#Delete").show();
                    $("#addImg").hide();
                    $("#deleteImg").show();

                } else {
                    $("#contribution_header").text("기업사회공헌 추가");
                    $("#Delete").hide();
                    $("#Add").show();
                    $("#deleteImg").hide();
                    $("#addImg").show();
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
                                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                                    <h4 class="mb-sm-0 font-size-18" id="contribution_header"></h4>
                                </div>

                                <div class="row">
                                    <div class="col-12">
                                        <div class="card">
                                            <div class="card-header">
                                                <div>
                                                    <input class="form-control" type="text" id="title" placeholder="기업사회공헌 제목"/>
                                                </div>
                                            </div>

                                            <div class="card-body">
                                                <div>
                                                    <input class="form-control mb-3" type="text" id="subtitle" placeholder="30자 이내 요약"/>
                                                </div>
                                                <div id="deleteImg">
                                                    <div id="contribution_img" class="text-center"></div>
                                                </div>
                                                <div id="addImg">
                                                    <form id="imgForm">
                                                        <input type="hidden" id="addedId">
                                                        <div class="fallback">
                                                            <input name="contribution_image" id="contribution_image" type="file" accept="image/*"/>
                                                        </div>
                                                    </form>
                                                </div>

                                                <div class="text-center mt-4" id="Add">
                                                    <button type="button" class="btn btn-soft-primary waves-effect waves-light" id="btnSave">저장하기</button>
                                                </div>
                                                <div class="text-center mt-4" id="Delete">
                                                    <button type="button" class="btn btn-soft-danger waves-effect waves-light" id="btnDelete">삭제하기</button>
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

        <!-- Add Contribution -->
        <script>
            $("#btnSave").on("click", function () {
                if (!confirm("저장하시겠습니까?")) return;

                $.ajax({
                    url: "http://localhost:3000/api/contribution",
                    method: "POST",
                    data: {
                        title        : $("#title").val(),
                        subtitle     : $("#subtitle").val(),
                    },
                    success: function (response) {
                        $("#addedId").val(response[0].id);
                        var id = response[0].id;

                        var form = $('#imgForm')[0];
                        var formData = new FormData(form);
                        formData.append('id', new Blob([JSON.stringify(id)], {type: "application/json"}));

                        $.ajax({
                            url: "http://localhost:3000/api/images/registerContribution",
                            method: "POST",
                            async:false,
                            processData:false,
                            contentType:false,
                            cache:false,
                            data : formData,
                            success: function (response) {
                                alert("저장 완료 되었습니다.");
                                window.location = "http://localhost:3000/admin/listContribution";
                            },
                            error: function (xhr, status, error) {
                                console.log("AJAX 요청 실패:", status, error);
                            },
                        });
                    },
                    error: function (xhr, status, error) {
                        console.log("AJAX 요청 실패:", status, error);
                    },
                });
            });
        </script>
        

        <!-- Delete Contribution -->
        <script>
            // 불러오기
            $(document).ready(function () {
                const urlStr = window.location.href;
                const url = new URL(urlStr);
                const urlParams = url.searchParams;
                const contribution_id = urlParams.get("id");

                if(contribution_id != null){
                    $.ajax({
                        url: "http://woodus.net/api/contribution/" + contribution_id,
                        method: "GET",
                        success: function (response) {
                            const fields = [
                                "title",
                                "subtitle",
                            ];
                            fields.forEach((field) =>
                                $("#" + field).val(response[0][field])
                            );
                            var str = "<img src='http://woodus.net/api/images/"+response[0].thumbnail_id +"'style='height:300px'>"
                            $("#contribution_img").append(str);

                        },
                        error: function (xhr, status, error) {
                            console.error("AJAX 요청 실패:", status, error);
                        },
                    });
                }
            });

            //삭제 버튼 눌렀을 때
            $("#btnDelete").on("click", function () {
                if (!confirm("삭제 하시겠습니까?")) return;
                const urlStr = window.location.href;
                const url = new URL(urlStr);
                const urlParams = url.searchParams;
                const contribution_id = urlParams.get("id");
                
                $.ajax({
                    url: "http://localhost:3000/api/contribution/removeContribution",
                    method: "POST",
                    data: {
                        id : contribution_id,
                    },
                    success: function (response) {
                        alert("삭제 되었습니다.");
                        window.location = "http://localhost:3000/admin/listContribution";
                    },
                    error: function (xhr, status, error) {
                        console.log("AJAX 요청 실패:", status, error);
                        
                        
                    },
                });
            });

        </script>
    </body>
</html>
