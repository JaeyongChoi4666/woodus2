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
            <section class="notice">
                <div class="page-title">
                    <div class="container">
                        <h3>공지사항</h3>
                    </div>
                </div>

                <div id="board-list">
                    <div class="container">
                        <table class="board-table">
                            <thead>
                            <tr>
                                <th scope="col" class="th-num">
                                    번호
                                </th>
                                <th scope="col" class="th-title">
                                    제목
                                </th>
                                <th scope="col" class="th-date">
                                    등록일
                                </th>
                            </tr>
                            </thead>
                            <tbody id="boardList"></tbody>
                        </table>
                    </div>
                </div>
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
<script src="/resources/js/bootstrap.bundle.min.js" type="text/javascript"></script>
<script src="/resources/js/mobile/home.js" type="text/javascript"></script>
<script src="/resources/js/page/notice.js" type="text/javascript"></script>
</body>
</html>
