$(document).ready(function () {
    $.ajax({
        url: "http://woodus.net/api/course/present",
        method: "GET",
        success: function (response) {
            // console.log(response);
            const edu = response.filter((item) => item.type == "edu");
            console.log("edu", edu);
            const exp = response.filter((item) => item.type == "exp");
            console.log("exp", exp);

            for (var i = 0; i < exp.length; i++) {
                console.log(exp[i].name);
                var str =
                    '<div class="col-sm-6" align="center">' +
                    '<div class="card mb-3"  style="max-width:350px" align="left">' +
                    '<img src="http://woodus.net/api/images/' +
                    exp[i].thumbnail_id +
                    '" class="card-img-top" style="max-height:300px">' +
                    '<div class="card-body">' +
                    '<div class="card-text">' +
                    '<div class="FS-6 FB" id="course_name">' +
                    exp[i].name +
                    "</div>" +
                    '<div id="course_date">교육기간 ' +
                    exp[i].start_date +
                    " ~ " +
                    exp[i].end_date +
                    "</div>" +
                    '<div id="course_time">교육시간 ' +
                    exp[i].start_time +
                    " ~ " +
                    exp[i].end_time +
                    " </div>" +
                    '<div id="course_people" style="margin-bottom:1em">모집정원 ' +
                    exp[i].num_people +
                    "</div>" +
                    '<a href="#" class="btn bg-light-green" >자세히 보기</a>' +
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

    const loadImage = function (imageId) {
        $.ajax({
            url: "http://woodus.net/api/images/" + imageId,
            method: "GET",
            success: function (response) {},
        });
    };
});
