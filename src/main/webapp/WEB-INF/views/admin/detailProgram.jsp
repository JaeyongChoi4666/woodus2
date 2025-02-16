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
                                    <h4 class="mb-sm-0 font-size-18">
                                        프로그램 수정
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
                                                <form action="#">
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
                                                                    class="d-flex justify-content-between"
                                                                >
                                                                    <div
                                                                        class="mb-3 w-100 me-2"
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
                                                                        class="mb-3 w-100 ms-2"
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
                                                                    class="mb-4"
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
                                                                <div
                                                                    class="mb-4"
                                                                >
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
                                                                <div>
                                                                    <label
                                                                        class="form-label"
                                                                        >모집여부</label
                                                                    >
                                                                    <div
                                                                        class="d-flex align-items-center"
                                                                    >
                                                                        <div
                                                                            class="form-check mb-3 me-3"
                                                                        >
                                                                            <input
                                                                                class="form-check-input"
                                                                                type="radio"
                                                                                id="recruitY"
                                                                                name="recruit"
                                                                            />
                                                                            <label
                                                                                class="form-check-label"
                                                                                for="recruitY"
                                                                            >
                                                                                모집중
                                                                            </label>
                                                                        </div>
                                                                        <div
                                                                            class="form-check mb-3 ms-3"
                                                                        >
                                                                            <input
                                                                                class="form-check-input"
                                                                                type="radio"
                                                                                id="recruitN"
                                                                                name="recruit"
                                                                            />
                                                                            <label
                                                                                class="form-check-label"
                                                                                for="recruitN"
                                                                            >
                                                                                모집
                                                                                종료
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
                                                    <div
                                                        class="d-flex flex-wrap gap-2"
                                                    >
                                                        <button
                                                            type="button"
                                                            class="btn btn-soft-primary waves-effect waves-light"
                                                        >
                                                            수정하기
                                                        </button>
                                                        <button
                                                            type="button"
                                                            class="btn btn-soft-danger waves-effect waves-light"
                                                        >
                                                            삭제하기
                                                        </button>
                                                    </div>
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

        <script>
            $(document).ready(function () {
                const urlStr = window.location.href;
                const url = new URL(urlStr);
                const urlParams = url.searchParams;
                const course_id = urlParams.get("id");

                $.ajax({
                    url: "http://woodus.net/api/course/" + course_id,
                    method: "GET",
                    success: function (response) {
                        const week = response[0].week;
                        const arrDays = Array.from(week);
                        const days = [
                            "mon",
                            "tue",
                            "wed",
                            "thu",
                            "fri",
                            "sat",
                            "sun",
                        ];

                        arrDays.forEach((day, index) => {
                            if (day === "1") {
                                $("#" + days[index]).prop("checked", true);
                            }
                        });

                        // 필드 값 설정
                        const fields = [
                            "name",
                            "fee",
                            "num_people",
                            "start_date",
                            "end_date",
                            "start_time",
                            "end_time",
                            "place",
                            "summary",
                            "notice",
                        ];
                        fields.forEach((field) =>
                            $("#" + field).val(response[0][field])
                        );

                        // 모집 여부 체크 (주석 해제 가능)
                        if (response[0].recruit === "Y") {
                            $("#recruitY").prop("checked", true);
                        } else {
                            $("#recruitN").prop("checked", true);
                        }
                    },
                    error: function (xhr, status, error) {
                        console.error("AJAX 요청 실패:", status, error);
                    },
                });
            });
        </script>
    </body>
</html>
