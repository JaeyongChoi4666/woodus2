$(document).ready(function () {
    $.ajax({
        url: "http://woodus.net/api/notice/list",
        method: "GET",
        success: function (response) {
            for (var i = 0; i < response.length; i++) {
                const list = response;
                var str =
                    '<tr class="board_item_list" id="boardList">' +
                    '<td class="th-num">' +
                    list[i].id +
                    "</td>" +
                    '<th class="board_title">' +
                    '<a href="/community/detail?notice_id=' +
                    list[i].id +
                    '">' +
                    list[i].title +
                    "</a>" +
                    "</th>" +
                    '<th class="board_date" style="text-align:center;">' +
                    list[i].regdate +
                    "</th>" +
                    "</tr>";
                $("#boardList").append(str);
            }
        },
        error: function (xhr, status, error) {
            console.error("AJAX 요청 실패:", status, error);
        },
    });
});
