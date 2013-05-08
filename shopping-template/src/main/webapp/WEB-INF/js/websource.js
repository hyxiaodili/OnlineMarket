function ClickSourceVancl(){

}

ClickSourceVancl.prototype.url = location.href;
ClickSourceVancl.prototype.refUrl = "";
ClickSourceVancl.prototype.clickwwwname = "http://click.vancl.com/";
ClickSourceVancl.prototype.refUrl = document.referrer;

ClickSourceVancl.prototype.webclickInit = function() {
    var req = null;
    try { req = new XMLHttpRequest(); } catch (e) { }
    if (!req) try { req = new ActiveXObject("Msxml2.XMLHTTP"); } catch (e) { }
    if (!req) try { req = new ActiveXObject("Microsoft.XMLHTTP"); } catch (e) { }
   // var req = window.ActiveXObject ? new ActiveXObject("Microsoft.XMLHTTP") : new XMLHttpRequest();
    req.onreadystatechange = function() {
        if (req.readyState == 4) {// 4 = "loaded"
            if (req.status == 200) {// 200 = OK
            }
            else {
            }
        }
    };

    return req;
}


ClickSourceVancl.prototype.natureSearch = function(refUrlNature, clickwwwname) {
/* //document.write("<script src='" + clickwwwname + "/websource/websourceurl.aspx?SourceUrl=" + refUrlNature + "&referer=" + refUrl + "'><\/script>");
var requestUrl = clickwwwname + "websource/websourceurl.aspx?SourceUrl=" + refUrlNature + "&referer=" + refUrl;
req.open("get", requestUrl, true);
req.send(null);
alert("natureSearch");*/
    var requestUrl = clickwwwname + "websource/websourceurl.aspx?SourceUrl=" + refUrlNature;
    var cvancl = document.createElement('script');
    cvancl.src = requestUrl;
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(cvancl, s);
}

ClickSourceVancl.prototype.writeTrueCookie = function(clickwwwname) {
    var cvancl = document.createElement('script');
    cvancl.src = clickwwwname + "websource/websource.aspx";
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(cvancl, s);
}

ClickSourceVancl.prototype.getCookie = function(name) {
    var cookieValue = "";
    var search = name + "=";
    if (document.cookie.length > 0) {
        offset = document.cookie.indexOf(search);
        if (offset != -1) {
            offset += search.length;
            end = document.cookie.indexOf(";", offset);
            if (end == -1) end = document.cookie.length;
            cookieValue = unescape(document.cookie.substring(offset, end))
        }
    }
    return cookieValue;
}


ClickSourceVancl.prototype.get_param = function(param_name) {
    var query = location.search.substring(1);
    var pairs = query.split('&');
    for (var i = 0; i < pairs.length; i++) {
        var pos = pairs[i].indexOf('=');
        if (pos == -1) continue;
        var argname = pairs[i].substring(0, pos);
        if (argname.toLowerCase() == param_name.toLowerCase()) {
            var value = pairs[i].substring(pos + 1);
            value = decodeURIComponent(value);
            return value;
        }
    }
    return null;
}

ClickSourceVancl.prototype.setCookie = function(cookieName, cookieValue, DayValue) {
    var expire = "";
    var day_value = 1;
    if (DayValue != null) {
        day_value = DayValue;
    }
    expire = new Date((new Date()).getTime() + day_value * 86400000);
    expire = "; expires=" + expire.toGMTString();
    document.cookie = cookieName + "=" + escape(cookieValue) + ";domain=vancl.com;path=/" + expire;
}


ClickSourceVancl.prototype.excuteFunction = function(/*ClickSourceVancl*/clickSourceVanclObj) {
    try {
        var source = clickSourceVanclObj.get_param('source');
        /**如果目标url包含source*/
        if (source != null && source != "") {
            var visited = clickSourceVanclObj.getCookie('union_visited');
            var isnew;
            if (visited == '1') {
                isnew = 0;
            } else {
                clickSourceVanclObj.setCookie('union_visited', '1', 1);
                isnew = 1;
            }
            var sourceInfo = clickSourceVanclObj.get_param("sourcesuninfo");
            if (sourceInfo == null) {
                sourceInfo = "";
            }
            /*不能用ajax,因为后续的记录需要这个记录留下的cookie,采用ajax会因为网络延时等产生问题*/
            var requestUrl = clickSourceVanclObj.clickwwwname + "websource/websource.aspx?source=" + source + "&sourceInfo=" + sourceInfo + "&referer=" + escape(clickSourceVanclObj.refUrl) + "&hrefurl=" + escape(clickSourceVanclObj.url) + "&isnew=" + isnew;
            var cvancl = document.createElement('script');
            cvancl.src = requestUrl;
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(cvancl, s);
        } else {
            /**自然搜索*/
            var refUrl = clickSourceVanclObj.refUrl;
            if (refUrl != null && refUrl != "") {
                if (refUrl.indexOf("vancl.com") < 0) {
                    clickSourceVanclObj.natureSearch(escape(refUrl), clickSourceVanclObj.clickwwwname);
                } else {
                    var tempCookie = clickSourceVanclObj.getCookie("WebSourceTemp");
                    if (tempCookie != "") {
                        clickSourceVanclObj.writeTrueCookie(clickSourceVanclObj.clickwwwname);
                    }
                }
            }
        }

    } catch (e) { }
}

var clickSourceVanclObj = new ClickSourceVancl();
clickSourceVanclObj.excuteFunction(clickSourceVanclObj);


