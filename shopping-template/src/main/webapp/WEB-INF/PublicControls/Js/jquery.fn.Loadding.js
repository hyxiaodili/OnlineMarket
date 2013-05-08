// JScript 文件
LoaddingShow = function(msg, json) {
    var obj = document.getElementById("jq_loaddingifr");
    if (obj == null) {
        var width = 120;
        var height = 18;
        var top = document.documentElement.scrollTop + ($(window).height() - height) / 2;
        var left = ($(window).width() - width) / 2;
        var wh = document.documentElement.scrollHeight - 20;
        $("<iframe id='jq_loaddingifr' style='z-index:1;filter:mask();overflow:hidden;border:0px;margin:0; padding:0;top:" + top + "px;left:" + left + "px;position:absolute;width:" + width + "px;height:" + height + "px;' scrolling='auto' frameborder='0' src='javascript:false'></iframe>").appendTo("body");
        var jqCover = $("<div id='jq_loaddingdiv'>" + msg + "</div>");
        var _css = { "background-color": "#7a7f89", "position": "absolute", "overflow": "hidden", "-moz-opacity": "0.75", "filter": "alpha(opacity=75)", "z-index": "2", "opacity": "0.75", "top": "0px", "left": "0px", "width": width + "px", "height": height + "px", "top": top, "left": left, "border": "1px solid #999999", "text-align": "center", "padding-top": "5px", "padding-bottom": "5px", "font-size": "12px", "display": "none", "color": "#fff" };

        if (json != null)
            _css = $.extend(_css, json);
        jqCover.css(_css);
        jqCover.appendTo("body");
        jqCover.show();
        //jqOver.show();
    }
    else {
        $('#jq_loaddingdiv').html(msg);
    }

}
LoaddingClose = function() {
    $('#jq_loaddingifr').remove();
    $('#jq_loaddingdiv').remove();
}