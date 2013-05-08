$(document).ready(function() {
    $("a.track,li.track").each(function() {
        if (!$.data(this, 'events') || $.data(this, 'events').mousedown === undefined) {
            $(this).mousedown(function() {
                trackurl($(this).attr("name"), this);
            });
        }
    });
});
function trackurl(areaid, obj) {
    var sb = [];
    sb.push("/track.aspx?ref=");
    sb.push(escape(window.document.referrer));
    sb.push("&areaid=");
    sb.push(areaid);
    var url = sb.join("");
    if ($.browser.mozilla) {
        $.ajax({
            type: "GET",
            url: url,
            async: false
        });
    }
    else {
        $.ajax({
            type: "GET",
            url: url
        });
    }
}