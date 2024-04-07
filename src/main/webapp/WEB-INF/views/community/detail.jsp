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
    <link rel="stylesheet" href="/resources/common_html/board/board-list.css" type="text/css" />
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
            <div class="notice">
                <div>
                    <div class="page-title">
                        <div class="container">
                            <h3 class="FS-7" id="title"></h3>
                        </div>
                    </div>
                    <div
                            class="board_contents bg-light-green"
                            id="contents"
                    ></div>
                </div>
            </div>
            <div style="text-align: center" class="mt-5">
                <a
                        class="btn btn-secondary"
                        href="/community/index"
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
        const notice_id = urlParams.get("notice_id");

        $.ajax({
            url: "http://woodus.net/api/notice/" + notice_id,
            method: "GET",
            success: function (response) {
                console.log(response);
                $("#title").text(response[0].title);
                $("#contents").text(response[0].content);
            },
            error: function (xhr, status, error) {
                console.error("AJAX 요청 실패:", status, error);
            },
        });
    });
</script>
</body>
</html>
