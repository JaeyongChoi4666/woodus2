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
        <div class="woodus-C" style="min-height: 1000px">
            <div
                    id="program_id"
                    class="FS-10 FB text-center mb-5 br"
            ></div>
            <div>
                <div class="row" id="course_card"></div>
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
<script src="/resources/js/bootstrap.bundle.min.js" type="text/javascript"></script>
<script src="/resources/js/mobile/home.js" type="text/javascript"></script>
<script>
    $(document).ready(function () {
        const urlStr = window.location.href;
        const url = new URL(urlStr);
        const urlParams = url.searchParams;
        const program_type = urlParams.get("type");

        if (program_type == "edu") {
            $("#program_id").text("교육 프로그램");
        } else if (program_type == "exp") {
            $("#program_id").text("체험 프로그램");
        }

        $.ajax({
            url: "http://woodus.net/api/course/present",
            method: "GET",
            success: function (response) {
                const list = response.filter(
                    (item) => item.type == program_type
                );

                for (var i = 0; i < list.length; i++) {
                    var str =
                        '<div class="col-sm-6 col-lg-4" align="center">' +
                        '<div class="card mb-3"  style="max-width:350px" align="left">' +
                        '<img src="http://woodus.net/api/images/' +
                        list[i].thumbnail_id +
                        '" class="card-img-top" style="height:300px">' +
                        '<div class="card-body">' +
                        '<div class="card-text">' +
                        '<div class="FS-6 FB" id="course_name">' +
                        list[i].name +
                        "</div>" +
                        '<div id="course_date">교육기간 ' +
                        list[i].start_date +
                        " ~ " +
                        list[i].end_date +
                        "</div>" +
                        '<div id="course_time">교육시간 ' +
                        list[i].start_time +
                        " ~ " +
                        list[i].end_time +
                        " </div>" +
                        '<div id="course_people" style="margin-bottom:1em">모집정원 ' +
                        list[i].num_people +
                        "</div>" +
                        '<a href="detail?id=' +
                        list[i].id +
                        "&program_type=" +
                        program_type +
                        '" class="btn bg-light-green" >자세히 보기</a>' +
                        "</div>" +
                        "</div>" +
                        "</div>" +
                        "</div>";
                    $("#course_card").append(str);
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
