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
    <link rel="stylesheet" href="/resources/css/community.css" type="text/css" />
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
            <section class="notice">
                <div class="page-title">
                    <div class="container">
                        <h3>기업사회공헌</h3>
                    </div>
                </div>
                <div>
                    <div class="row" id="contribution_card"></div>
                </div>

                <nav aria-label="Page navigation example">
                    <ul class="pagination justify-content-center" id="pagenation"></ul>
                </nav>

            </section>
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
    var currentPage = ${param.page};

    $(document).ready(function () {
        $.ajax({
            url: "http://woodus.net/api/contribution/callMaxId",
            method: "GET",
            success: function (response) {
                var totalPages = Math.ceil(response / 9);  //한페이지당 9개씩 표시
                var startPage = 1;
                if (currentPage > 5) {
                    startPage = currentPage - 5;
                }
                var endPage = startPage + 9;
                if (endPage > totalPages) {
                    endPage = totalPages;
                    startPage = totalPages - 9;
                }
                if (startPage < 1) {
                    startPage = 1;
                }

                var str =
                    '<li class="page-item">' +
                        '<a class="page-link"><<</a>' +
                    '</li>'
                for (var i = startPage; i < endPage+1; i++) {
                    str += '<li class="page-item"><a class="page-link" href="/contribution/index?page=' + i + '">' + i + '</a></li>'
                }
                str +=
                    '<li class="page-item">' +
                        '<a class="page-link" href="#">>></a>' +
                    '</li>'
                $("#pagenation").append(str);

                $.ajax({
                    url: "http://woodus.net/api/contribution/page/"+currentPage,
                    method: "GET",
                    success: function (response) {
                        for (var i = 0; i < response.length; i++) {
                            const list = response;
                            console.log(list[i]);
                            var str =
                                '<div class="col-sm-4" align="center">' +
                                '<div class="card mb-3"  style="max-width:350px" align="left">' +
                                '<img src="http://woodus.net/api/images/' +
                                list[i].thumbnail_id +
                                '" class="card-img-top" style="height:300px">' +
                                '<div class="card-body">' +
                                '<div class="card-text">' +
                                '<div class="FS-6 FB" id="course_name">' +
                                list[i].title +
                                "</div>" +
                                list[i].subtitle +
                                "</div>" +
                                "</div>" +
                                "</div>";
                            $("#contribution_card").append(str);
                        }
                    },
                    error: function (xhr, status, error) {
                        console.error("AJAX 요청 실패:", status, error);
                    },
                });
            }
        });


    });
</script>
</body>
</html>
