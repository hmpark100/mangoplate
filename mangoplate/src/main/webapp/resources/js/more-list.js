$(window).on('load', function () {
    load('#more-list', '4');
    $("#js-btn-more .button").on("click", function () {
        load('#more-list', '4', '#js-btn-more');
    })
});
 
function load(id, cnt, btn) {
    var content_list = id + " .more-list:not(.active)";
    var content_length = $(content_list).length;
    var content_total_cnt;
    if (cnt < content_length) {
        content_total_cnt = cnt;
    } else {
        content_total_cnt = content_length;
        $('.button').hide()
    }
    $(content_list + ":lt(" + content_total_cnt + ")").addClass("active");
}