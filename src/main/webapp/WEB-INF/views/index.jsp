<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
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
    <!-- home.css -->
    <link rel="stylesheet" href="/resources/css/home.css" type="text/css" />
</head>
<body>
<div class="woodus-A">
    <!-- navbar -->
    <div id="menu">
        <script>
            $("#menu").load("/resources/common_html/menu.html");
        </script>
    </div>

    <!-- carousel -->
    <!-- <div id="carousel">
        <script>
            $("#carousel").load("/common_html/carousel.html");
        </script>
    </div> -->

    <!-- 2nd 대안 -->
    <div>
        <div class="row main_text">
            <div class="col-6" id="text_back" style="margin: auto">
                <div style="margin-left: 2rem">
                    <div class="main_name FB FS-8">WOODUS의 마음</div>
                    <div class="FS-6 FM">
                        우리의 손길을 거쳐 버려진 가치들이 되살아
                        납니다.
                    </div>
                    <div class="FS-6 FM">
                        목재들은 화분이 되고, 의자가 되고, 선반이 되어
                        세상으로 나옵니다.
                    </div>
                    <div class="FS-6 FM">
                        변화할 수 있는 것은 물건만이 아닙니다.
                    </div>
                    <div class="FS-6 FM">
                        우드어스 사회적협동조합은 새로운 생각과 새로운
                        가치부여로
                    </div>
                    <div class="FS-6 FM">세상을 바꿉니다.</div>
                </div>
            </div>
            <div class="col-6">
                <img src="/resources/images/tree.jpg" />
            </div>
        </div>
    </div>

    <div class="mt-5">
        <div class="FB text-center mb-4 FS-8">
            About <span class="br">WOODUS</span>
        </div>
        <div class="d-flex justify-content-evenly flex-wrap">
            <div class="card mb-3" style="width: 22rem">
                <img
                        src="/resources/images/home/cattray.png"
                        class="card-img-top"
                />
                <div class="card-body mt-3 mb-3 FS-6">
                    <p class="card-text text-center">
                        버려지는 자투리 목재로 <br />생활소품 만들기
                    </p>
                </div>
            </div>
            <div class="card mb-3" style="width: 22rem">
                <img
                        src="/resources/images/home/second.png"
                        class="card-img-top"
                />
                <div class="card-body mt-3 mb-3 FS-6">
                    <p class="card-text text-center">
                        가구제작기능사 & 도장기능사 <br />자격증 교육
                    </p>
                </div>
            </div>
            <div class="card mb-3" style="width: 22rem">
                <img
                        src="/resources/images/home/third.jpg"
                        class="card-img-top"
                />
                <div class="card-body mt-3 mb-3 FS-6">
                    <p class="card-text text-center">
                        폐가구 리폼 & 가구 수리 <br />맞춤형 가구 주문
                        제작
                    </p>
                </div>
            </div>
        </div>
    </div>

    <div class="mt-3 d-flex" id="imageContent">
        <div class="content3 wh text-center d-flex">
            <div class="FS-5">
                폐가구 리폼 & 업사이클 통한 사회적 가치 창출 프로젝트
            </div>
            <div class="FB mt-3 FS-8">가구 수리소</div>
            <button class="b1-button mt-5 FS-5">자세히보기</button>
        </div>
        <div class="content2 wh text-center d-flex">
            <div class="FS-5">건축 도장 기능사 & 가구 제작 기능사</div>
            <div class="FB mt-3 FS-8">기능사 자격증 교육</div>
            <button class="b1-button mt-5 FS-5">자세히보기</button>
        </div>
    </div>
</div>

<!-- footer -->
<div id="footer">
    <script>
        $("#footer").load("/common_html/footer.html");
    </script>
</div>
<!-- bootstrap JS -->
<script
        src="/resources/js/bootstrap.bundle.min.js"
        type="text/javascript"
></script>
<script src="/resources/js/mobile/home.js" type="text/javascript"></script>
</body>
</html>
