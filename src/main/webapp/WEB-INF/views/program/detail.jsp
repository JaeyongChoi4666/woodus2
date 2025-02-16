<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>우드어스</title>
    <!-- bootstrap -->
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css" />
    <!-- jquery -->
    <script src="/resources/js/jquery-3.7.0.min.js"></script>
    <!-- css -->
    <link rel="stylesheet" href="/resources/css/interface.css" type="text/css" />
    <link rel="stylesheet" href="/resources/css/background.css" type="text/css" />
    <link rel="stylesheet" href="/resources/css/font.css" type="text/css" />
    <link rel="stylesheet" href="/resources/css/button.css" type="text/css" />
</head>
<body>
<div class="woodus-A">
    <!-- navbar -->
    <div id="menu">
        <script>
            $("#menu").load("/resources/common_html/menu.html");
        </script>
    </div>

    <!-- contents -->
    <div class="woodus-B">
        <div class="woodus-C">
            <div class="FS-10 FB text-center mb-5 br">
                프로그램 상세보기
            </div>
            <div id="image" style="text-align: center"></div>
            <div class="mt-4">
                <div id="name" class="FS-8 FB"></div>
                <div
                        style="
                                padding: 1rem;
                                border-radius: 10px;
                                background-color: #eeeeee;
                            "
                        class="mb-3 mt-3"
                >
                    <div class="FS-3 mb-2 FB">프로그램 내용</div>
                    <div id="summary"></div>
                </div>
                <div
                        style="
                                padding: 1rem;
                                border-radius: 10px;
                                background-color: #eeeeee;
                            "
                        class="mb-3"
                >
                    <div class="FS-3 mb-2 FB">수강기간</div>
                    <div id="date"></div>
                </div>
                <div
                        style="
                                padding: 1rem;
                                border-radius: 10px;
                                background-color: #eeeeee;
                            "
                        class="mb-3"
                >
                    <div class="FS-3 mb-2 FB">요일 및 시간</div>
                    <div id="week">토요일 10:00 ~ 12:00</div>
                </div>
                <div
                        style="
                                padding: 1rem;
                                border-radius: 10px;
                                background-color: #eeeeee;
                            "
                        class="mb-3"
                >
                    <div class="FS-3 mb-2 FB">장소</div>
                    <div id="place"></div>
                </div>
                <div
                        style="
                                padding: 1rem;
                                border-radius: 10px;
                                background-color: #eeeeee;
                            "
                        class="mb-3"
                >
                    <div class="FS-3 mb-2 FB">수강인원</div>
                    <div id="num_people"></div>
                </div>
                <div
                        style="
                                padding: 1rem;
                                border-radius: 10px;
                                background-color: #eeeeee;
                            "
                        class="mb-3"
                >
                    <div class="FS-3 mb-2 FB">수강료</div>
                    <div id="fee"></div>
                </div>
                <div
                        style="
                                padding: 1rem;
                                border-radius: 10px;
                                background-color: #eeeeee;
                            "
                        class="mb-3"
                >
                    <div class="FS-3 mb-2 FB">참고사항</div>
                    <div id="notice"></div>
                </div>
            </div>
            <div style="text-align: center">
                <a
                        id="toListBtn"
                        class="btn btn-secondary"
                        href="http://woodus.net/prgram/index"
                >목록으로</a
                >
            </div>
        </div>
    </div>
</div>

<!-- footer -->
<div id="footer">
    <script>
        $("#footer").load("/resources/common_html/footer.html");
    </script>
</div>
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
        const course_id = urlParams.get("id");
        const program_type = urlParams.get("program_type");

        $("#toListBtn").attr("href", "/program/index?type=" + program_type )
        $.ajax({
            url: "http://woodus.net/api/course/" + course_id,
            method: "GET",
            success: function (response) {
                var img =
                    '<img src="http://woodus.net/api/images/' +
                    response[0].thumbnail_id +
                    '">';
                $("#image").append(img);

                var date =
                    response[0].start_date +
                    " ~ " +
                    response[0].end_date;
                $("#date").append(date);

                const week = response[0].week;
                const arrDays = Array.from(week);
                var strDays = "";

                const weekday = [
                    " 월요일",
                    " 화요일",
                    " 수요일",
                    " 목요일",
                    " 금요일",
                    " 토요일",
                    " 일요일",
                ];

                arrDays.forEach((day, index) => {
                    if (day === "1") {
                        strDays += weekday[index] + ",";
                    }
                });
                
                var days =
                    strDays.substr(0, strDays.length - 1) +
                    " " +
                    response[0].start_time +
                    " ~ " +
                    response[0].end_time;

                $("#title").text(response[0].name);
                $("#name").text(response[0].name);
                $("#summary").text(response[0].summary);
                $("#week").text(days);
                $("#place").text(response[0].place);
                $("#num_people").text(response[0].num_people + " 명");
                $("#fee").text(response[0].fee + " 원");
                $("#notice").text(response[0].notice);
            },
            error: function (xhr, status, error) {
                console.error("AJAX 요청 실패:", status, error);
            },
        });
    });
</script>
</body>
</html>
