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
        <script src="/js/jquery-3.7.0.min.js"></script>
        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico" />

        <!-- choices css -->
        <link
            href="assets/libs/choices.js/public/assets/styles/choices.min.css"
            rel="stylesheet"
            type="text/css"
        />

        <!-- color picker css -->
        <link
            rel="stylesheet"
            href="assets/libs/@simonwep/pickr/themes/classic.min.css"
        />
        <!-- 'classic' theme -->
        <link
            rel="stylesheet"
            href="assets/libs/@simonwep/pickr/themes/monolith.min.css"
        />
        <!-- 'monolith' theme -->
        <link
            rel="stylesheet"
            href="assets/libs/@simonwep/pickr/themes/nano.min.css"
        />
        <!-- 'nano' theme -->

        <!-- datepicker css -->
        <link rel="stylesheet" href="assets/libs/flatpickr/flatpickr.min.css" />

        <!-- preloader css -->
        <link
            rel="stylesheet"
            href="assets/css/preloader.min.css"
            type="text/css"
        />

        <!-- Bootstrap Css -->
        <link
            href="assets/css/bootstrap.min.css"
            id="bootstrap-style"
            rel="stylesheet"
            type="text/css"
        />
        <!-- Icons Css -->
        <link
            href="assets/css/icons.min.css"
            rel="stylesheet"
            type="text/css"
        />
        <!-- App Css-->
        <link
            href="assets/css/app.min.css"
            id="app-style"
            rel="stylesheet"
            type="text/css"
        />
    </head>
    <body>
        <!-- Begin page -->
        <div id="layout-wrapper">
            <!-- ========== Left Sidebar Start ========== -->
            <div id="Submenu">
                <script>
                    $("#Submenu").load("/admin/common_html/menu.html");
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
                                    <h4 class="mb-sm-0 font-size-18">
                                        프로그램 추가
                                    </h4>
                                </div>

                                <div class="row">
                                    <div class="col-12">
                                        <div class="card">
                                            <div class="card-header">
                                                <h4 class="card-title">
                                                    프로그램 추가하기
                                                </h4>
                                            </div>
                                            <div class="card-body p-4">
                                                <form
                                                    id="addProgram"
                                                    enctype="multipart/form-data"
                                                >
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <div>
                                                                <div
                                                                    class="mb-3"
                                                                >
                                                                    <label
                                                                        for="example-text-input"
                                                                        class="form-label"
                                                                        >프로그램
                                                                        명</label
                                                                    >
                                                                    <input
                                                                        class="form-control"
                                                                        type="text"
                                                                        id="name"
                                                                    />
                                                                </div>
                                                                <div
                                                                    class="mb-3"
                                                                >
                                                                    <label
                                                                        for="example-text-input"
                                                                        class="form-label"
                                                                        >수강료</label
                                                                    >
                                                                    <input
                                                                        class="form-control"
                                                                        type="number"
                                                                        id="fee"
                                                                    />
                                                                </div>
                                                                <div
                                                                    class="mb-3"
                                                                >
                                                                    <label
                                                                        for="num_people"
                                                                        class="form-label"
                                                                        >수강인원</label
                                                                    >
                                                                    <input
                                                                        class="form-control"
                                                                        type="number"
                                                                        id="num_people"
                                                                    />
                                                                </div>
                                                                <div
                                                                    class="mb-3"
                                                                >
                                                                    <label
                                                                        for="example-date-input"
                                                                        class="form-label"
                                                                        >시작일</label
                                                                    >
                                                                    <input
                                                                        class="form-control"
                                                                        type="date"
                                                                        id="start_date"
                                                                    />
                                                                </div>
                                                                <div
                                                                    class="mb-3"
                                                                >
                                                                    <label
                                                                        for="example-date-input"
                                                                        class="form-label"
                                                                        >종료일</label
                                                                    >
                                                                    <input
                                                                        class="form-control"
                                                                        type="date"
                                                                        id="end_date"
                                                                    />
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-6">
                                                            <div
                                                                class="mt-3 mt-lg-0"
                                                            >
                                                                <div
                                                                    class="mb-3"
                                                                >
                                                                    <label
                                                                        class="form-label"
                                                                        >시작시간</label
                                                                    >
                                                                    <input
                                                                        type="time"
                                                                        class="form-control flatpickr-input"
                                                                        id="start_time"
                                                                    />
                                                                </div>
                                                                <div
                                                                    class="mb-3"
                                                                >
                                                                    <label
                                                                        for="example-time-input"
                                                                        class="form-label"
                                                                        >종료시간</label
                                                                    >
                                                                    <input
                                                                        type="time"
                                                                        class="form-control"
                                                                        id="end_time"
                                                                    />
                                                                </div>
                                                                <div
                                                                    class="mb-3"
                                                                >
                                                                    <label
                                                                        for="example-text-input"
                                                                        class="form-label"
                                                                        >교육장소</label
                                                                    >
                                                                    <input
                                                                        class="form-control"
                                                                        type="text"
                                                                        id="place"
                                                                    />
                                                                </div>
                                                                <div
                                                                    class="mb-3"
                                                                >
                                                                    <label
                                                                        class="form-label"
                                                                        >프로그램
                                                                        종류</label
                                                                    >
                                                                    <select
                                                                        class="form-select"
                                                                        id="type"
                                                                    >
                                                                        <option
                                                                            id="edu"
                                                                        >
                                                                            교육
                                                                        </option>
                                                                        <option
                                                                            id="exp"
                                                                        >
                                                                            체험
                                                                        </option>
                                                                    </select>
                                                                </div>
                                                                <div>
                                                                    <label
                                                                        class="form-label"
                                                                        >강의
                                                                        요일</label
                                                                    >
                                                                    <div
                                                                        class="d-flex align-items-center justify-content-between"
                                                                    >
                                                                        <div
                                                                            class="form-check mb-3"
                                                                        >
                                                                            <input
                                                                                class="form-check-input"
                                                                                type="checkbox"
                                                                                id="mon"
                                                                            />
                                                                            <label
                                                                                class="form-check-label"
                                                                                for="mon"
                                                                            >
                                                                                월요일
                                                                            </label>
                                                                        </div>
                                                                        <div
                                                                            class="form-check mb-3"
                                                                        >
                                                                            <input
                                                                                class="form-check-input"
                                                                                type="checkbox"
                                                                                id="tue"
                                                                            />
                                                                            <label
                                                                                class="form-check-label"
                                                                                for="tue"
                                                                            >
                                                                                화요일
                                                                            </label>
                                                                        </div>
                                                                        <div
                                                                            class="form-check mb-3"
                                                                        >
                                                                            <input
                                                                                class="form-check-input"
                                                                                type="checkbox"
                                                                                id="wed"
                                                                            />
                                                                            <label
                                                                                class="form-check-label"
                                                                                for="wed"
                                                                            >
                                                                                수요일
                                                                            </label>
                                                                        </div>
                                                                        <div
                                                                            class="form-check mb-3"
                                                                        >
                                                                            <input
                                                                                class="form-check-input"
                                                                                type="checkbox"
                                                                                id="thu"
                                                                            />
                                                                            <label
                                                                                class="form-check-label"
                                                                                for="thu"
                                                                            >
                                                                                목요일
                                                                            </label>
                                                                        </div>
                                                                        <div
                                                                            class="form-check mb-3"
                                                                        >
                                                                            <input
                                                                                class="form-check-input"
                                                                                type="checkbox"
                                                                                id="fri"
                                                                            />
                                                                            <label
                                                                                class="form-check-label"
                                                                                for="fri"
                                                                            >
                                                                                금요일
                                                                            </label>
                                                                        </div>
                                                                        <div
                                                                            class="form-check mb-3"
                                                                        >
                                                                            <input
                                                                                class="form-check-input"
                                                                                type="checkbox"
                                                                                id="sat"
                                                                            />
                                                                            <label
                                                                                class="form-check-label"
                                                                                for="sat"
                                                                            >
                                                                                토요일
                                                                            </label>
                                                                        </div>
                                                                        <div
                                                                            class="form-check mb-3"
                                                                        >
                                                                            <input
                                                                                class="form-check-input"
                                                                                type="checkbox"
                                                                                id="sun"
                                                                            />
                                                                            <label
                                                                                class="form-check-label"
                                                                                for="sun"
                                                                            >
                                                                                일요일
                                                                            </label>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mt-3 mt-lg-0">
                                                        <div class="mb-3">
                                                            <label
                                                                class="form-label"
                                                                >교육내용</label
                                                            >
                                                            <textarea
                                                                rows="5"
                                                                cols="35"
                                                                class="form-control flatpickr-input"
                                                                id="summary"
                                                            ></textarea>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label
                                                                class="form-label"
                                                                >전달사항</label
                                                            >
                                                            <textarea
                                                                rows="3"
                                                                cols="35"
                                                                class="form-control flatpickr-input"
                                                                id="notice"
                                                            ></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <div class="mb-3">
                                                                <label
                                                                    for="list_image"
                                                                >
                                                                    리스트사진
                                                                </label>
                                                                <input
                                                                    type="file"
                                                                    id="list_image"
                                                                    name="list_image"
                                                                    accept="image/*"
                                                                    onchange="loadFile(this)"
                                                                />
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <div class="mb-3">
                                                                <label
                                                                    for="detail_image"
                                                                >
                                                                    상세보기
                                                                    사진
                                                                </label>
                                                                <input
                                                                    type="file"
                                                                    id="detail_image"
                                                                    name="detail_image"
                                                                    accept="image/*"
                                                                    onchange="loadFile(this)"
                                                                />
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <button
                                                        type="button"
                                                        class="btn btn-soft-primary waves-effect waves-light"
                                                        id="btnSave"
                                                    >
                                                        저장하기
                                                    </button>
                                                </form>
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
        <script src="assets/libs/jquery/jquery-3.7.1.js"></script>
        <!-- <script src="assets/libs/jquery/jquery.min.js"></script> -->
        <script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/libs/metismenu/metisMenu.min.js"></script>
        <script src="assets/libs/simplebar/simplebar.min.js"></script>
        <script src="assets/libs/node-waves/waves.min.js"></script>
        <script src="assets/libs/feather-icons/feather.min.js"></script>
        <!-- pace js -->
        <script src="assets/libs/pace-js/pace.min.js"></script>

        <!-- apexcharts -->
        <script src="assets/libs/apexcharts/apexcharts.min.js"></script>

        <!-- Plugins js-->
        <script src="assets/libs/admin-resources/jquery.vectormap/jquery-jvectormap-1.2.2.min.js"></script>
        <script src="assets/libs/admin-resources/jquery.vectormap/maps/jquery-jvectormap-world-mill-en.js"></script>
        <!-- dashboard init -->
        <script src="assets/js/pages/dashboard.init.js"></script>

        <!-- Required datatable js -->
        <script src="assets/libs/datatables.net/js/jquery.dataTables.min.js"></script>
        <script src="assets/libs/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>

        <script src="assets/js/app.js"></script>

        <!-- bootstrap JS -->
        <script
            src="/js/bootstrap.bundle.min.js"
            type="text/javascript"
        ></script>
        <script src="/js/mobile/home.js" type="text/javascript"></script>
        <script>
            $("#btnSave").on("click", function () {
                if (!confirm("저장하시겠습니까?")) return;
                var rawData = $("#addProgram").serialize();
                console.log(rawData);
                $.ajax({
                    url: "http://woodus.net/api/course/present",
                    method: "POST",
                    data: rawData,
                    dataType: "json",
                    success: function (response) {
                        alert("저장 완료 되었습니다.");
                    },
                    error: function (xhr, status, error) {
                        console.error("AJAX 요청 실패:", status, error);
                    },
                });
            });
        </script>
    </body>
</html>
