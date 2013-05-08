﻿(function($) {
    $.fn.decorateIframe = function(options) {
        if ($.browser.msie && $.browser.version < 7) {
            var opts = $.extend({}, $.fn.decorateIframe.defaults, options);
            $(this).each(function() {
                var $myThis = $(this);
                //创建一个IFRAME
                var divIframe = $("<iframe />");
                divIframe.attr("id", opts.iframeId);
                divIframe.css({"position":"absolute","display": "block","z-index":opts.iframeZIndex,"top":0,"left":0});
                if (opts.width == 0) {
                    divIframe.css("width", $myThis.width() + parseInt($myThis.css("padding")) * 2 + "px");
                }
                if (opts.height == 0) {
                    divIframe.css("height", $myThis.height() + parseInt($myThis.css("padding")) * 2 + "px");
                }
                divIframe.css("filter", "mask(color=#fff)");
                $myThis.append(divIframe);
            });
        }
    }
    $.fn.decorateIframe.defaults = {
        iframeId: "decorateIframe1",
        iframeZIndex: -1,
        width: 0,
        height: 0
    }
})(jQuery);

var stockTimeout = null;
function stockIn() {
    if (stockTimeout != null) {
        window.clearTimeout(stockTimeout);
    }
    $(".addressWindows").show();
    $(".cityAdd").addClass("cityAddHover");

}

function stockOut() {
    stockTimeout = window.setTimeout(function() {
        $(".addressWindows").hide();
        $(".cityAdd").removeClass("cityAddHover");
    }, 50);
}

function checkStocking() {
    var closeCode = getCloseCode();
    if (closeCode != null) {
        var addr = $(".addressWindows a:contains('" + $.trim($("span.goodsAdd").text()) + "')");
        if (addr.length == 0) {
            return;
        }
        var housecode = addr.attr("name").replace("hs-", "");
        var url = [];
        url.push("/styles/stocking.mvc");
        url.push("?clothescode=" + closeCode);
        url.push("&housecode=" + housecode);
        $.get(url.join(""), function(data) {
            if (data == "True") {
                $("#stockinfo").text("最近库房有货");
            } else {
                $("#stockinfo").text("最近库房缺货, 预计从其他库房发出");
            }
        });
    }
    stockOut();
}

//获取CloseCode
function getCloseCode() {
    if ($(".selSize #onlickSelSize").length == 0) {
        return null;
    }
    return $(".selSize #onlickSelSize").attr("name")
}

var sizetitle = ""; //尺码或净含量

$(document).ready(function() {
    sizetitle = $.trim($("#selectedSize").text().split('：')[0]);
    $("#bigView").decorateIframe();
    var productcode = $("#productcode").text().split("：")[1];
    $("#addToShoppingCar").click(function() {
        //var closeCode = getCloseCode();
       /* if (closeCode == null) {
            //alert('请选择尺码');
            return false;
        }*/
        var url = [];
        url.push(WebSiteHttps);
        url.push("shopping.html");
        url.push("?ProductID=");
        url.push(closeCode);
        url.push("&num=");
        url.push($("#selectedAmount").val());
        if ($(this).parent().attr("href").length > 1) {
            url.push($(this).parent().attr("href").replace("#", "&"));
        }

        document.location.href = url.join("");

        return false;

    });


    $("img[original]").lazyload({
        placeholder: "images/color3.gif",
        event: "scroll"
    });

    var productcode = $("#pricearea .brandNumArea span:last").text().split("：")[1];
    var producttype = $("#pricearea").attr("name");
    var styleid = $("#styleinfo").attr("name");
    //切换花色
    $(".selColorArea .selColor li").click(function() {

        if ($(this).attr("id") != "onlickColor") {
            var $this = $(this);
            back2view();
            $(".selSize li").removeAttr("onclick");
            $("#loading")
            .css({
                "top": $(".bigImg").position().top,
                "height": $(".bigImg").height()
            }).show();
            $.get("/styles/AjaxChangeProduct.mvc?" + $(this).attr("name"), function(data) {

                //ajax
                $("#midimg").attr("src", $("#midimg", data).attr("src"));
                changeViewImg();
                $("#imageMenu").html($("#imageMenu", data).html());
                $("#loading").fadeOut("slow").hide(0);

                $("#pricearea").html($("#price", data).html());
                $(".selSizeArea").html($("#size", data).html());
                $("#SimilarPurchase").html($("#SimilarPurchase", data).html());

                var $color = $.trim($this.text());
                productcode = $("#productcode").text().split("：")[1];
                $(".selColorArea .selColor li").removeAttr("id");
                $this.attr("id", "onlickColor");
                $(".selColorArea .clothingColor strong").text($color);
                $("#selectedColor").text("颜色：" + $color);


                if ($("#onlickSelSize").length == 1) {
                    $("#selectedSize").text(sizetitle + "：" + $.trim($(".selSize #onlickSelSize").text()));
                    $(".selSizeArea h3 strong").text($.trim($(".selSize #onlickSelSize").text()));
                } else {
                    $(".selSizeArea h3 strong").text("未选择");
                    $("#selectedSize").text(sizetitle + "：未选择");
                }
                $("#selectedAmount").attr("value", '1');
                $(".goodsPrice p em").text($(".cuxiaoPrice span").text());
                $("#imageMenu").scrollTop(0).scrollLeft(0);
                checkMenuStatus();

                //放大查看
                $(".fangda a").attr("href", WebSite + "/Product/Pic.aspx?ProductCode=" + productcode + "&ProductName=" + encodeURI($.trim($("#pricearea h2").text())));

                //收藏
                $(".btnSC").attr("href", WebSite + "/Usercenter/UserFavorite.aspx?AddCart=" + productcode);

                //我要评论
                $("#pinglun").attr("href", $("#pinglun").attr("href").replace(/\d{7,8}/, productcode));
                var url = location.href.replace(/\d{7,8}/, productcode);
                setCookie("ShoppingBackUrl", url, 30);

                //库存信息
                var closeCode = getCloseCode();
                if (closeCode == null) {
                    $("#stockinfo").text("请先选择" + sizetitle);
                } else {
                    checkStocking();
                }
            });

        }
    });

    //点击到中图
    var midChangeHandler = null;
    $("#imageMenu li img").live("click", function() {
        if ($(this).attr("id") != "onlickImg") {
            midChange($(this).attr("src").replace("small", "mid"));
            $("#imageMenu li").removeAttr("id");
            $(this).parent().attr("id", "onlickImg");
        }
    }).live("mouseover", function() {
        if ($(this).attr("id") != "onlickImg") {
            window.clearTimeout(midChangeHandler);
            midChange($(this).attr("src").replace("small", "mid"));
            $(this).css({ "background": "none repeat scroll 0 0 #336699", "border": "1px solid #336699" });
        }
    }).live("mouseout", function() {
        if ($(this).attr("id") != "onlickImg") {
            $(this).removeAttr("style");
            midChangeHandler = window.setTimeout(function() { midChange($("#onlickImg img").attr("src").replace("small", "mid")); }, 1000);

        }
    });

    function midChange(src) {
        $("#midimg").attr("src", src).load(function() { changeViewImg(); });
    }

    //滑动左边小图
    $("#imageMenu").scrollTop(0).scrollLeft(0);

    var data = [];
    data["smallImgDown"] = {
        direction: 1,
        target: "last-child",
        visible: function() {
            return $("#imageMenu").scrollTop() + $("#imageMenu").height() == $("#imageMenu").attr("scrollHeight");

        },
        span: function($dom) {
            return $dom.position().top;
        },
        scrollSpan: function($dom) {
            return $dom.scrollTop();
        },
        animateParam: function(move) {
            return { scrollTop: move };
        }
    };
    data["smallImgUp"] =
    {
        direction: -1,
        target: "first",
        visible: function() {
            return $("#imageMenu").scrollTop() == 0;
        },
        span: function($dom) {
            return $dom.position().top;
        },
        scrollSpan: function($dom) {
            return $dom.scrollTop();
        },
        animateParam: function(move) {
            return { scrollTop: move };
        }
    };

    data["smallImgRight"] = {
        direction: 1,
        target: "last-child",
        visible: function() {
            return $("#imageMenu").scrollLeft() + $("#imageMenu").width() == $("#imageMenu").attr("scrollWidth");

        },
        span: function($dom) {
            return $dom.position().left;
        },
        scrollSpan: function($dom) {
            return $dom.scrollLeft();
        },
        animateParam: function(move) {
            return { scrollLeft: move };
        }
    };
    data["smallImgLeft"] =
    {
        direction: -1,
        target: "first",
        visible: function() {
            return $("#imageMenu").scrollLeft() == 0;
        },
        span: function($dom) {
            return $dom.position().left;
        },
        scrollSpan: function($dom) {
            return $dom.scrollLeft();
        },
        animateParam: function(move) {
            return { scrollLeft: move };
        }
    };

    //控制上下箭头
    $(".smallImgDown,.smallImgUp,.smallImgRight,.smallImgLeft").click(function() {
        var className = $(this).attr("class");
		//alert(className);
        if ($("." + className + " img").attr("src").indexOf(className + "02.gif")) {
            var mydata = data[className];
            var num = 0;
            while (mydata.span($("#imageMenu")) > mydata.span($("#imageMenu li").eq(num))) {
                num++;
            }

            num += 5 * mydata.direction;

            var $li = $("#imageMenu li").eq(num);
            if ($li.length == 0 || num < 0) {
                $li = $("#imageMenu li:" + mydata.target);
            }

            var move = mydata.scrollSpan($("#imageMenu")) + mydata.span($li) - mydata.span($("#imageMenu"));
            $("#imageMenu").animate(mydata.animateParam(move), 500, checkMenuStatus);
        }
    });

    function checkMenuStatus() {
        for (key in data) {
            var $img = $("." + key + " img");
            if ($img.length > 0) {
                if (data[key].visible()) {
                    if ($img.attr("src").indexOf(key + "01.gif") > -1) {
                        $img.attr("src", $img.attr("src").replace(key + "01.gif", key + "02.gif"));
                    }
                } else {
                    if ($img.attr("src").indexOf(key + "02.gif") > -1) {
                        $img.attr("src", $img.attr("src").replace(key + "02.gif", key + "01.gif"));
                    }
                }
            }
        }
    }

    //大视窗看图
    function mouseEnter(e) {
        if ($("#winSelector").css("display") == "none") {
            $("#winSelector,#bigView").show();
        }

        $("#winSelector").css(fixedPosition(e));
        e.stopPropagation();
        return false;
    }

    function mouseOut(e) {
        if ($("#winSelector").css("display") != "none") {
            $("#winSelector,#bigView").hide();
        }
        e.stopPropagation();
    }

    if (document.createTouch) {
        $("#midimg,#winSelector").bind("touchmove", mouseEnter).bind("touchend", mouseOut);
    } else {
        $("#midimg").mouseenter(mouseEnter); //中图事件
        $("#midimg,#winSelector").mousemove(mouseEnter).mouseout(mouseOut); //选择器事件
    }


    var $divWidth = $("#winSelector").width(); //选择器宽度
    var $divHeight = $("#winSelector").height(); //选择器高度
    var $imgWidth = $("#midimg").width(); //中图宽度
    var $imgHeight = $("#midimg").height(); //中图高度
    var $viewImgWidth = $viewImgHeight = $height = null; //IE加载后才能得到 大图宽度 大图高度 大图视窗高度



    function changeViewImg() {
        $("#bigView img").attr("src", $("#midimg").attr("src").replace("mid", "big"));
    }
    changeViewImg();

    $("#bigView").scrollTop(0);
    function fixedPosition(e) {
        if (e == null) {
            return;
        }
        var pageX = e.pageX;
        var pageY = e.pageY;

        if (document.createTouch) {
            pageX = event.touches[0].pageX;
            pageY = event.touches[0].pageY;
        }

        var $imgLeft = $("#midimg").offset().left; //中图左边距
        var $imgTop = $("#midimg").offset().top; //中图上边距
        X = pageX - $imgLeft - $divWidth / 2; //selector顶点坐标 X
        Y = pageY - $imgTop - $divHeight / 2; //selector顶点坐标 Y
        X = X < 0 ? 0 : X;
        Y = Y < 0 ? 0 : Y;
        X = X + $divWidth > $imgWidth ? $imgWidth - $divWidth : X;
        Y = Y + $divHeight > $imgHeight ? $imgHeight - $divHeight : Y;

        if ($viewImgWidth == null) {
            $viewImgWidth = $("#bigView img").outerWidth();
            $viewImgHeight = $("#bigView img").height();
            if ($viewImgWidth < 200 || $viewImgHeight < 200) {
                $viewImgWidth = $viewImgHeight = 800;
            }
            $height = $divHeight * $viewImgHeight / $imgHeight;
            $("#bigView").width($divWidth * $viewImgWidth / $imgWidth);
            $("#bigView").height($height);
        }

        var scrollX = X * $viewImgWidth / $imgWidth;
        var scrollY = Y * $viewImgHeight / $imgHeight;
        $("#bigView img").css({ "left": scrollX * -1, "top": scrollY * -1 });


        //确定上边距
        //用户视窗高度
        var viewH = document.documentElement.clientHeight == 0 ? document.body.clientHeight : document.documentElement.clientHeight;
        var top = ((viewH - $height) / 2) + $(document).scrollTop();
        top = top < 360 ? 360 : top;
        var left = 530;
        if ($(window).width() > $(document.body).width()) {
            //left = left - (($(window).width() - $(document.body).width()) / 2);
        }
        $("#bigView").css({ "top": top, "left": left });


        return { left: X, top: Y };
    }

    //售罄
    var saleoutWidth = 466;
    var saleoutHeight = 208;
    if (hasLogin() == false) {
        saleoutWidth = 451;
        saleoutHeight = 156;
    }
    $("#saleout").colorbox({ iframe: true, innerWidth: saleoutWidth, innerHeight: saleoutHeight,
        href: WebSite + "/Product/ProductSaleOutNotify.aspx?oper=1&productCode=" + productcode + "&r=" + Math.random()
    });

    function selectedAmount_click() {
        var number = parseFloat($("#selectedAmount").val());
        re = /\d/g;
        var text = $(".cuxiaoPrice span").text().replace(/[\d|\.]+/g, function($1) { return (parseFloat($1) * number).toFixed(2) });
        $(".goodsPrice em").text(text);
    }
    $("#selectedAmount").click(selectedAmount_click);
    selectedAmount_click();

    //分享
    $("#share").colorbox({ iframe: true, innerWidth: 450, innerHeight: 140 });
    iniVideoTip()
    $("#video").click(function() {
        trackurl("dp-Video-track", this);
        TipClose();
        if ($(this).css("background-image").indexOf("videoBtn.gif") > -1) {
            $(this).removeClass("videoBtn").addClass("videoBtn02");
            $("span:has(#share),span:has(.btnSC),#imageMenu,#midimg").hide();
            var vars = "args=" + $(this).attr("name") + "|" + encodeURI($.trim($("#pricearea h2").text())) + "|yes|no|yes|0|75";
            $(this).css("background-image", "url(http://images.vancl.com/Others/2010/8/20/fanhuiImg.gif)");
            html = [];
            html.push("<div id=\"videowindow\" style=\"position:absolute;background-color:White;\">")
            html.push("<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0\"");
            html.push("width=\"507\" height=\"495\" align=\"middle\">");
            html.push("<param name=\"allowScriptAccess\" value=\"sameDomain\" />");
            html.push("<param name=\"allowFullScreen\" value=\"true\" />");
            html.push("<param name=\"movie\" value=\"http://images.vancl.com/flv/vanclplayer.swf\" />");
            html.push("<param name=\"quality\" value=\"high\" />");
            html.push("<param name=\"bgcolor\" value=\"#ffffff\" />");
            html.push("<param name=\"flashvars\" value=\"" + vars + "\" />");
            html.push("<embed src=\"http://images.vancl.com/flv/vanclplayer.swf\" quality=\"high\" bgcolor=\"#ffffff\" width=\"507\"");
            html.push(" height=\"500\" align=\"middle\" allowscriptaccess=\"sameDomain\"");
            html.push(" allowfullscreen=\"true\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\"");
            html.push(" flashvars=\"" + vars + "\" />");
            html.push("</object>");
            html.push("</div>");
            var css = { "top": $(".selImg").position().top, "left": $(".selImg").position().left + 12 - ($(document).width() - $("body").width()) / 2 };
            if (!document.all) {
                css = { "top": $(".selImg").position().top - 2 };
            }
            $(html.join("")).appendTo("body").css(css);
        } else {
            back2view();
        }
        //videoBtn
        return false;
    });
    function back2view() {
        $("#video")
        .css("background-image", "url(http://images.vancl.com/Others/2010/8/20/videoBtn.gif)")
        .removeClass("videoBtn02").addClass("videoBtn");
        $("span:has(#share),span:has(.btnSC),#imageMenu,#midimg").show();
        $("#videowindow").remove();
    }
    //成为VIP
    $(".question a").hover(function() {
        var divIframe = $("#vipiframe");
        if (divIframe.length == 0) {
            var divIframe = $("<iframe />");
            divIframe.attr("id", "vipiframe").attr("frameborder", "0").appendTo("body");
        }
        divIframe.attr("src", $(this).attr("href"))
            .css({ "width": 340, "height": 125, "top": $(this).position().top + 20, "left": 650 })
            .show();
    }, function() { $("#vipiframe").hide() }).click(function() { return false; });

    //支付方式
    $(".payRight a").colorbox({ iframe: true, innerWidth: 500, innerHeight: 280 });

    //库存信息
    var closeCode = getCloseCode();
    if (closeCode == null) {
        $(".cityAdd").click(function() {
            alert("请选择尺码");
        });
    } else {
        //默认选择尺码
        $("#selectedSize").text("尺码：" + $.trim($(".selSize #onlickSelSize").text()));
        $(".selSizeArea h3 strong").text($.trim($(".selSize #onlickSelSize").text()));

        checkStocking();
        $(".cityAdd").hover(stockIn, stockOut);
        $(".addressWindows").hover(stockIn, stockOut);
    }
    $(".goodsAddArea").fadeIn("slow");
    if (window.localStorage) {
        var myprovince = window.localStorage["myprovince"];
        if (myprovince == null) {
            myprovince = "北京";
        }
        $("span.goodsAdd").text(myprovince);
    } else if (document.body.style.behavior != "undefined") {
        var o = document.getElementById("bigView");
        o.style.behavior = "url('#default#userData')"
        o.addBehavior("#default#userData");
        o.load("my");
        var myprovince = o.getAttribute("province");

        if (myprovince == null) {
            myprovince = "北京";
        }
        $("span.goodsAdd").text(myprovince);
    }

    $(".addressWindows a").click(function() {
        $("span.goodsAdd").text($(this).text());
        //写入
        if (window.localStorage) {
            window.localStorage["myprovince"] = $(this).text();
        } else if (document.body.style.behavior != "undefined") {
            var o = document.getElementById("bigView");
            o.setAttribute("province", $(this).text());
            o.save("my");
        }
        checkStocking();
        return false;
    });

    //图标
    $(".attricon img[title]").each(function() {
        $(this).attr("ref", $(this).attr("title")).removeAttr("title")
    })
    .hover(function(e) {
        var proudctBox = $(".proudctBox");
        if (proudctBox.length == 0) {
            html = []
            html.push("<div class=\"proudctBox\">");
            html.push("<div class=\"proudctConArea\">");
            html.push("<h2></h2>");
            html.push("<p></p>");
            html.push("<span class=\"blank5\"></span>");
            html.push("</div>");
            html.push("</div>");
            proudctBox = $(html.join(""));
            proudctBox.appendTo("body")
        }
        proudctBox.show()
        .css({ "top": e.pageY, "left": e.pageX - ($(document).width() - $("body").width()) / 2 })
        .find("p").text($(this).attr("ref"));

        proudctBox.find("h2").text($(this).attr("alt") + "功能说明：");
    }, function() {
        $(".proudctBox").hide();
    });
    //我最近看过
    if (window.localStorage && getCookie("VisitedCookies") == "") {
        var history = window.localStorage["VisitedCookies"];
        if (history == null) {
            history = [];
        } else {
            history = history.split('|||');
            //显示
            var str = [];
            str.push("<div class=\"sideBarCommon\" id=\"history\"><h3>我最近看过</h3>");
            str.push("<div class=\"sideBarCon02\"><ul>");
            var count = 0;
            $.each(history, function(i, item) {
                var info = item.split('|');
                if (count < 5 && info.length == 5 && info[0] != productcode) {
                    str.push("<li><a name=\"History-track-" + info[0] + "\" class=\"track\" target=\"_blank\" title=\"" + info[1] + "\"");
                    str.push("href=\"" + info[3] + "?ref=dp_History_0_" + info[0] + "\">");
                    str.push("<img style=\"margin-bottom: 5px; margin-left: 10px;\" alt=\"" + info[1] + "\" src=\"" + info[4] + "\"/></a>");
                    str.push("<p class=\"hotName\">");
                    str.push("<a target=\"_blank\" name=\"History-track-" + info[0] + "\" class=\"track\" title=\"" + info[1] + "\" href=\"" + info[3] + "?ref=dp_History_0_" + info[0] + "\">");
                    str.push(info[1] + "</a></p>");
                    str.push("<p class=\"hotPrice\">￥" + info[2] + "</p></li><span class=\"blank0\"></span>");
                    count++;
                }
            });
            str.push("</ul></div></div><span class=\"blank20\"></span>");
            $(".sideBarArea").append(str.join(""));
        }

        var item = [productcode,
        $.trim($("#pricearea h2").text()),
        $.trim($(".cuxiaoPrice strong").text()),
        window.location.pathname,
        $("#onlickImg img").attr("src")].join("|");
        if ($.inArray(item, history) == -1) {
            history.reverse();

            history.push(item);
            history.reverse();
            history = $.grep(history, function(n, i) {
                return i < 6;
            });
            window.localStorage["VisitedCookies"] = history.join('|||');
        }
    } else {
        var history = getCookie("VisitedCookies").split(',');
        if ($.inArray(productcode, history) == -1) {
            history.reverse();
            history.push(productcode);
            history.reverse();

            history = $.grep(history, function(n, i) { return i < 6; });
            setCookie("VisitedCookies", history.join(","), 30);
        }

        if (window.localStorage) {
            delCookie("VisitedCookies");
        }
    }
    //Feedback
    if (hasLogin() == false) {
        $('#pinglun').click(function() {
            if (confirm('此操作需要登录，您现在要登录吗？')) {
                location.href = WebSiteHttps + '/login/login.aspx?' + location.href;
            }
            return false;
        });
    } else {
        if ($('#pinglun').attr("name") == "allow") {
            $('#pinglun').colorbox({ iframe: true, innerWidth: 821, innerHeight: 500 });
        } else {
            $("#pinglun").click(function() {
                alert('只有购买过此商品的顾客且没有评论才可以打分和评论');
                return false;
            });
        }
    }
    function loadstyleassesses(pageindex) {
        window.location.hash = "feedback";
        $("#styleAssesseslist").html("<div style='text-align:center'><img src=\"http://images.vancl.com/logo/loading.gif\" /></div>");
        $.get("/styles/AjaxStyleAssesses.mvc?styleId=" + styleid + "&pageindex=" + pageindex, function(data) {
            $("#styleAssesseslist").html(data);
            $("#styleAssessesPager").pager({ pagenumber: pageindex, pagecount: Math.ceil($("#feedbackcount").text() / 5), buttonClickCallback: loadstyleassesses });
        });
    }

    $("#styleAssessesPager").pager({ pagenumber: 1, pagecount: Math.ceil($("#feedbackcount").text() / 5), buttonClickCallback: loadstyleassesses });

    //Quiz
    if (hasLogin() == false) {
        $('#tiwen').click(function() {
            if (confirm('此操作需要登录，您现在要登录吗？')) {
                location.href = WebSiteHttps + '/login/login.aspx?' + location.href;
            }
            return false;
        });
        $('.myAsk a').click(function() {
            if (confirm('此操作需要登录，您现在要登录吗？')) {
                location.href = WebSiteHttps + '/login/login.aspx?' + location.href;
            }
            return false;
        })
    } else {
        $('#tiwen').colorbox(
        {
            iframe: true,
            href: WebSite + '/styles/static.mvc?position=Ask',
            innerWidth: '821px',
            innerHeight: "380px"
        });

        $('.myAsk a').live('click', function() {
            $.fn.colorbox({ href: $(this).attr('href'), open: true,
                iframe: true,
                innerWidth: '821px', innerHeight: "470px"
            });
            return false;
        });
    }
    $(".area3Con:odd").addClass("area3ConBg");
    $("#stylequestionsPager").pager({ pagenumber: 1, pagecount: Math.ceil($("#quizcount").text() / 5), buttonClickCallback: loadstylequestions });

    function loadstylequestions(pageindex) {
        window.location.hash = "a3";
        $("#stylequestionslist").html("<div style='text-align:center'><img src=\"http://images.vancl.com/logo/loading.gif\" /></div>");
        $.get("/styles/AjaxStyleQuestions.mvc?styleId=" + styleid + "&pageindex=" + pageindex + "&orderType=" + $("#questionOrderType").val(), function(data) {
            $("#stylequestionslist").html(data);
            $("#stylequestionsPager").pager({ pagenumber: pageindex, pagecount: Math.ceil($("#quizcount").text() / 5), buttonClickCallback: loadstylequestions });
            $(".area3Con:odd").addClass("area3ConBg");
        });
    }
    $("#questionOrderType").change(function() {
        $("#stylequestionslist").html("<div style='text-align:center'><img src=\"http://images.vancl.com/logo/loading.gif\" /></div>");
        $.get("/styles/AjaxStyleQuestions.mvc?styleId=" + styleid + "&pageindex=1&orderType=" + $("#questionOrderType").val(), function(data) {
            $("#stylequestionslist").html(data);
            $("#stylequestionsPager").pager({ pagenumber: 1, pagecount: $("#quizcount").text(), buttonClickCallback: loadstylequestions });
            $(".area3Con:odd").addClass("area3ConBg");
        });
    });

    $(".sizeList table tr:first td").each(function(i) {
        $(this).addClass("col0" + (i + 1));
    });

    //ajax显示区域
    $(window).one("scroll", function() {
        var productcode = $("#productcode").text().split("：")[1];
        $.get("/styles/ajaxload.mvc?productcode=" + productcode + "&producttype=" + producttype + "&styleid=" + styleid, function(data) {
            $(".danpinRight").append(($("#promotion", data).html()));

            if ($("#history").length == 0) {
                $(".sideBarArea").append(($("#left", data).html()));
            } else {
                $($("#left", data).html()).insertBefore("#history");
            }
        });
        //尺码计算器
        iniColorBox();
    });

    setShoppingUrl();
    //go up
    //var viewW = document.documentElement.clientWidth == 0 ? document.body.clientWidth : document.documentElement.clientWidth;
    var viewH = document.documentElement.clientHeight == 0 ? document.body.clientHeight : document.documentElement.clientHeight;
    if (window.screen.width > $(document.body).width() + 100) {
        var goup = $("<div style=\"right: -50px; POSITION: absolute;\"><a href=\"#\"><img src=\"http://images.vancl.com/Others/2010/9/20/top.gif\" alt=\"top\" /></a></div>").hide();
        if (window.XMLHttpRequest) {
            goup.css({ "position": "fixed", "bottom": 5, "right": $(window).width() / 2 - $(document.body).width() / 2 - 100 });
        } else {
            if ($(window).scrollTop() > 0) {
                goup.css({ "top": $(window).scrollTop() + viewH - 100 }).show();
            }
        }

        $(window).scroll(function() {

            if ($(window).scrollTop() == 0) {
                goup.fadeOut();
            } else {
                goup.fadeIn();
                if (!window.XMLHttpRequest) {
                    goup.css({ "top": $(window).scrollTop() + viewH - 100 });
                }
            }
        });
        $("body").prepend(goup);
    }

});




function ChooseThisSize($this, SKU, maxNum) {
    $(".selSize li").removeAttr("id");
    $($this).attr("id", "onlickSelSize");
    maxNum = parseInt(maxNum);
    $("#selectedSize").text("尺码：" + $.trim($($this).text()));
    $(".selSizeArea h3 strong").text($.trim($($this).text()));
    var span = $("#selectedAmount option").length - maxNum;
    if (span > 0) {
        //减少option
        $("#selectedAmount option").eq(maxNum - 1).nextAll().remove();
    } else if (span < 0) {
        //增加option
        span = Math.abs(span);
        var array = new Array(span);
        $.map(array, function(n, i) {
            var val = parseInt($("#selectedAmount option:last-child").val()) + 1;
            $("#selectedAmount").append("<option value=\"" + val + "\">" + val + "</option>");
        });
    }
    checkStocking();
    $(".cityAdd").unbind();
    $(".cityAdd").hover(stockIn, stockOut);
    $(".addressWindows").hover(stockIn, stockOut);
}

var preUrlArr = [WebSite+'/views/styles/SizeCalculate/HWCompute.html'];
var sizeCalObj;
var preParam = {};
function iniColorBox() {
    var styleID = $("#styleinfo").attr("name");

    jQuery.get('/SizeCalculate/IniColorBox.mvc?styleID=' + styleID + "&ctrlType=ini&r=" + Math.random(),
            function(r) {
                if (r != "") {

                    //  eval("var k =" + r);
                    sizeCalObj = eval('(' + r + ')');
                    if (sizeCalObj.isHave) {

                        $("#SizeCalculate").css("display", "block");
                        $("#sizeCal_text").css("display", "block");
                        if (!sizeCalObj.tipShow) {
                            $("#sizeCal_tipClose").click(function() {
                                TipClose();
                                return false;
                            })

                            $("#sizeCal_tipBT").click(function() {
                                TipClose();
                            })

                            $("#neverShow").click(function() {
                                TipClose();
                                jQuery.getScript(WebSite+'/SizeCalculate/IniColorBox.mvc?ctrlType=setNeverShow&r=' + Math.random());
                            })
                        }
                        else {
                            TipClose();
                        }

                        if (sizeCalObj.start) {
                            $("#showSizeCalculate").attr("href", WebSite+"/views/Styles/SizeCalculate/" + sizeCalObj.start);
                        }
                        setSizeCalculate();
                    }
                    else {
                        $("#sizeCal_link").removeClass("sizeCal_linkShow").addClass("sizeCal_linkhide");
                    }
                }

            });


}
function iniVideoTip() {
    if ($("#video")) {
        ShowTip();
    }
    else {
        TipClose();
    }
}

function ShowTip() {
    var neverShow = getCookie("SizeCal_NeverTipShow")
    if (neverShow != "true") {
        $("#video_Tip").css("display", "block");
    }
    $("#sizeCal_tipClose").click(function() {
        TipClose();
        return false;
    });

    $("#sizeCal_tipBT").click(TipClose);

    $("#neverShow").click(function() {
        TipClose();
        jQuery.getScript(WebSite+'/SizeCalculate/IniColorBox.mvc?ctrlType=setNeverShow');
    });
}
function TipClose() {
    $("#sizeCal_Tip").hide();
    $("#SizeCalculate_Tip").removeClass("sizeCal_TipShow").addClass("sizeCal_Tiphide");
    $("#sizeCal_link").removeClass("sizeCal_linkShow").addClass("sizeCal_linkhide");
    $("#video_Tip").hide();
}

function setSizeCalculate() {
    $("#showSizeCalculate").colorbox({
        transition: 'none',
        innerWidth: '580px',
        innerHeight: '430px',
        iframe: true,
        overlayClose: false,
        close: '',
        onComplete: function() {
            $("#cboxWrapper").find("div").each(function() {
                if ($(this).attr("id")) {
                    $(this).hide();
                    $(this).css("overflow", "hidden");
                }
            })

            $("#cboxContent").css("display", "block");
            $("#cboxLoadedContent").css("display", "block");
            $("#cboxLoadedContent").css("overflow", "hidden");
            $("#cboxContent").css("overflow", "hidden");
            $("#cboxWrapper").css("overflow", "hidden");
        }
    })

}

function setTab(name, cursel, n) {
    for (i = 1; i <= n; i++) {
        var menu = document.getElementById(name + i);
        var con = document.getElementById("con_" + name + "_" + i);
        menu.className = i == cursel ? "hover" : "";
        con.style.display = i == cursel ? "block" : "none";
    }
}