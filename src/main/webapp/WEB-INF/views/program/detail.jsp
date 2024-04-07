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
            <div>프로그램 내용</div>
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
</body>
</html>
