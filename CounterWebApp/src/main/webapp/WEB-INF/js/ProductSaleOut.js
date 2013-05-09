
function setPicPop() {
    $(".pic").bind("mouseleave", function() { $(this).parent().attr("style", ""); PushObj(); }).bind("mouseenter", function() {
        $(this).parent().attr("style", "background:#f1f1f1;");
        SetObj(this);
    });
}
function setWordPop() {
    $(".productName02").bind("mouseleave", function() { $(this).parent().attr("style", ""); PushObj(); }).bind("mouseenter", function() {
        $(this).parent().attr("style", "background:#f1f1f1;");
        SetObj(this);
    });
    $(".productName01").bind("mouseleave", function() { $(this).parent().attr("style", ""); PushObj(); }).bind("mouseenter", function() {
        $(this).parent().attr("style", "background:#f1f1f1;");
        SetObj(this);
    });
    $(".productName03").bind("mouseleave", function() { $(this).parent().attr("style", ""); PushObj(); }).bind("mouseenter", function() {
        $(this).parent().attr("style", "background:#f1f1f1;");
        SetObj(this);
    });
}
$(function() {
    bindImgMouseOver();
});
function bindImgMouseOver() {
    $(".today-li").mouseover(function() { $(this).attr("id", "today-list-li") }).mouseout(function() { $(this).attr("id", "") });
}
function changeCategoryRadio(url) {
    window.location = url;
}
function setTab(url) {

    window.location = url;
}
function closeAll(objId) {
    $('#Image_List_' + objId).show("fast");
    $('#lookAllHide_' + objId).show("slow");
    $('#lookallCon_' + objId).html("");
    $("#h3lookall" + objId).show();
    $("#h3lookall" + objId).prev("div").hide();
}
function lookAll(objId) {
    var loadData = getPagInfo(objId);
    if (loadData == undefined)
        return;
    $("#Image_List_" + objId).hide();
    $("#h3lookall"+objId).prev("div").show();
    $("#h3lookall" + objId).hide();
    var url = "/Product/ProductSaleOutLookAll.aspx #box";
    $.ajaxSetup({ cache: false });
    $("#lookallCon_" + objId).load(url, loadData, function() { $(this).fadeIn("slow"); setPicPop(); bindNotify(); $(".pic").click(function() { bindBrowsedBox($(this)); }); changePageLink(objId); bindImgMouseOver(); });
}

function getPagInfo(objId) {
    var pageInfo = $("#lookallpara_" + objId);
    if (pageInfo.length == 0)
        return;
    var loadData = {
        date: $(pageInfo).find(".date").html(),
        fc: $(pageInfo).find(".fc").html(),
        sc: $(pageInfo).find(".sc").html(),
        nc: $(pageInfo).find(".nc").html(),
        iv: $(pageInfo).find(".iv").html(),
        page: $(pageInfo).find(".page").html(),
        recordCount: $(pageInfo).find(".recordCount").html(),
        key: $(pageInfo).find(".key").html(),
        op: $(pageInfo).find(".op").html()
    }
    return loadData;
}
function changePageLink(objId) {
    var currentPage = $("#page_" + objId).find("strong").html();
    $("#page_" + objId).find("a").each(function() {
        $(this).attr("href", "#top" + objId);
        $(this).click(function() {
            var loadData = getPagInfo(objId);
            if (loadData == undefined)
                return;
            if ($(this).find("img").length == 0) {
                loadData.page = $(this).html();
            }
            else {
                if ($(this).find("img").attr("src") == "http://images.vancl.com/NewVancl/ProductComment/zfxj.jpg") {
                    loadData.page = eval(currentPage) - 1;
                } else if ($(this).find("img").attr("src") == "http://images.vancl.com/NewVancl/ProductComment/yfxj.jpg") {
                    loadData.page = eval(currentPage) + 1;
                }
            }
            var url = "/Product/ProductSaleOutLookAll.aspx #box";
            $.ajaxSetup({ cache: false });
            $("#lookallCon_" + objId).load(url, loadData, function() { $(this).fadeIn("slow"); setPicPop(); bindNotify(); $(".pic").click(function() { bindBrowsedBox($(this)); }); changePageLink(objId); bindImgMouseOver(); });
        });
    });
}

function addBookmark(title, url) {
    try {
        if ((typeof window.sidebar == 'object') && (typeof window.sidebar.addPanel == 'function')) {
            window.sidebar.addPanel(title, url, "");
        }
        else//IE
        {
            window.external.AddFavorite(url, title);
        }
    } catch (e) {
        alert('加入收藏失败，请手动添加');
    }
}
function getTitile() {
    kdocTitle = document.title;
    if (kdocTitle == null) {
        var t_titles = document.getElementByTagName("title")
        if (t_titles && t_titles.length > 0) {
            kdocTitle = t_titles[0];
        } else {
            kdocTitle = "";
        }
    }
    return kdocTitle;
}
function onSubmit() {

    var searchval = $("#searchVal").val();
    if (searchval == "" || searchval == "请输入关键词") {
        alert("请输入关键字");
        return;
    }
    $("#searchVal").val(searchval.replace(">", "").replace("<", ""));
    var form = $("#SearchForm");
    form.submit();
}
function OnEnter(field) {
    if (field.value == field.defaultValue)
    { field.value = ""; }
}
function OnExit(field) {
    if (field.value == "")
    { field.value = field.defaultValue; }
}
//浏览过的商品
function bindBrowsedBox($obj) {
    if ($obj) {
        var $productInfo = $obj.find(".productInfo");
        if ($productInfo) {
            var code = $productInfo.find(".prouctCode").html();
            if ($("#liulanBox .content ul li[code=" + code + "]").length > 0) return;

            var imgurl = $productInfo.find(".small").html();
            var price = $productInfo.find(".realPrice").html();
            var shortName = $productInfo.find(".shortName").html();

            var href = $obj.find("a").eq(0).attr("href");
            var view = "<li code=\"" + code + "\"><a class=\"track\" name=\"proNoticeBrowsed\" href=\"" + href +
                        "\" target=\"_blank\" ><img style=\"height:68px;width:68px;\" src=\"" + imgurl +
                        "\" /></a><p class=\"productName\"><a class=\"track\" name=\"proNoticeBrowsed\" href=\"" + href +
                        "\" target=\"_blank\" >" + shortName +
                        "</a></p><p class=\"price\">售价：￥" + price + "</p></li>";
            $("#liulanBox .listAreaContent ul").prepend(view).parents(".listAreaContent").animate({ left: 0 }, "slow");
            var codes = $.cookie("saleoutCodes");
            if (codes != undefined && codes.length > 0)
                codes = codes + "," + code;
            else codes = code;
            $.cookie("saleoutCodes", codes);
        }
        if ($("#liulanBox .listAreaContent ul li").length <= 5)
            $("#liulanBox .right a").hide();
        else
            $("#liulanBox .right a").show();
        $("#liulanBox .left a").hide();
    }
    else {
        var codes = $.cookie("saleoutCodes");
        if (codes != undefined && codes.length > 0) {
            $.ajax({
                async: true, cache: false, type: "post", dataType: "json",
                url: "/public/ProductPop.ashx",
                data: "productIds=" + codes,
                success: function(productInfos) {
                    if (typeof productInfos != 'undefined' && productInfos != "") {
                        codes = codes.split(',');
                        for (var j = 0; j < codes.length; j++) {
                            for (var i = 0; i < productInfos.length; i++) {
                                var ProductCode = productInfos[i].ProductCode;
                                if (ProductCode != codes[j]) continue;
                                var productURL = productInfos[i].productURL;
                                var imgURL = productInfos[i].imgURL;
                                var realPrice = productInfos[i].realPrice;
                                var shortName = productInfos[i].shortName;

                                var view = "<li code=\"" + ProductCode + "\"><a class=\"track\" name=\"proNoticeBrowsed\" href=\"" + productURL +
                                    "\" target=\"_blank\" ><img style=\"height:68px;width:68px;\" src=\"" + imgURL +
                                    "\" /></a><p class=\"productName\"><a class=\"track\" name=\"proNoticeBrowsed\" href=\"" + productURL +
                                    "\" target=\"_blank\" >" + shortName +
                                    "</a></p><p class=\"price\">售价：￥" + realPrice + "</p></li>";
                                $("#liulanBox .content ul").prepend(view);
                            }
                        }
                        if ($("#liulanBox .listAreaContent ul li").length <= 5)
                            $("#liulanBox .right a").hide();
                        else
                            $("#liulanBox .right a").show();
                        $("#liulanBox .left a").hide();
                    }
                }
            });
        }
        else {
            $("#liulanBox .right a,#liulanBox .left a").hide();
            $("#liulanBox .content").hide();
        }
    }

}

//商品预定验证输入
function confirmNofity(obj) {
    var email = $("#txtMail").val();
    var mobile = $("#txtPhone").val();
    if (!/^[\w-]+(\.[\w-]+)*@[\w-]+(\.(\w)+)*(\.(\w){2,3})$/.test(email)) {
        email = '';
    }
    if (!/^((13|15|18)+\d{9})$/.test(mobile)) {
        mobile = '';
    }
    if (!email && !mobile) {
        $("#mobileMsg").html("手机格式错误").attr("style", "color:#a10000");
        $("#mailMsg").html("邮箱格式错误").attr("style", "color:#a10000");
    }
    else {
        $.cookie("txtMail", email);
        $.cookie("txtPhone", mobile);
        var code = $(obj).attr("code");
        var url = "/Product/ProductSaleOutNotify.aspx?f=0&oper=1&productCode=" + code + "&email=" + email + "&mobile=" + mobile + "&r=" + Math.random();
        $.fn.colorbox({
            href: url, transition: 'none',
            onComplete: function() {
                $("#cboxClose").hide();
                var height = $("#cboxContent").height() - $("#cboxLoadedContent").height();
                $("#cboxWrapper").height($("#cboxWrapper").height() - height);
                $("#cboxMiddleLeft").height($("#cboxMiddleLeft").height() - height);
                $("#cboxMiddleRight").height($("#cboxMiddleRight").height() - height);
                $("#cboxContent").height($("#cboxContent").height() - height);
                if ($("#successed").length > 0)
                    $("button[code=" + code + "]").attr("oper", "0").html("取消商品预定");
            }
        });
    }
}
//绑定预定模态窗口
function bindNotify() {
    $(".today-li button").unbind("click").click(function() {
        var oper = $(this).attr("oper");
        var code = $(this).attr("code");
        var url = "/Product/ProductSaleOutNotify.aspx?f=0&oper=" + oper + "&productCode=" + code + "&r=" + Math.random();
        $(this).colorbox({
            href: url, transition: 'none',
            onComplete: function() {
                $("#cboxClose").hide();
                var height = $("#cboxContent").height() - $("#cboxLoadedContent").height();
                $("#cboxWrapper").height($("#cboxWrapper").height() - height);
                $("#cboxMiddleLeft").height($("#cboxMiddleLeft").height() - height);
                $("#cboxMiddleRight").height($("#cboxMiddleRight").height() - height);
                $("#cboxContent").height($("#cboxContent").height() - height);
                if ($("#cancled").length > 0)
                    $("button[code=" + code + "]").attr("oper", "1").html("补货及时通知我");
                if ($("#notifyInput").length > 0) {
                    if ($.cookie("txtMail") != null)
                        $("#txtMail").val($.cookie("txtMail"));
                    if ($.cookie("txtPhone") != null)
                        $("#txtPhone").val($.cookie("txtPhone"));
                }
            }
        });
    });
}
function closeColorBox() {
    $.fn.colorbox.close();
}
$(function() {
    bindNotify();
    $(window).scroll(function() {
        $("#float").stop(true, false).animate({ top: 400 + $(document).scrollTop() }, 500);
    });
    bindBrowsedBox();
    var option = "";
    $("#FirstCategory ").find("span").each(function(i) {
        option = "<option value=\"";
        option += $(this).attr("id").substring(3);
        option += "\" ";
        if ($(this).attr("style") != undefined) {
            option += "selected=\"selected\"";
        }
        option += ">"
        option += $(this).html();
        option += "</option>";
        $(option).appendTo("#OP_SearchOption");
    });
    //半透明
    $("#liulanBox").hover(function() {
        $(this).stop(true, false).fadeTo('normal', 1);
    }, function() {
        $(this).stop(true, false).fadeTo('normal', 0.6);
    }).trigger("mouseleave");
    //收起
    $("#liulanBox .shouqi").click(function() {
        $("#liulanBox .content").slideUp();
    });
    //展开
    $("#liulanBox .zhankai").click(function() {
        $("#liulanBox .content").slideDown();
    });
    //清除
    $("#liulanBox .qingchu").click(function() {
        $.cookie("saleoutCodes", "");
        $("#liulanBox .content ul li").remove();
        $("#liulanBox .right a,#liulanBox .left a").hide();
        $(".shouqi").click();

    });
    $("#liulanBox .btnClose").click(function() { $("#liulanBox").unbind().hide(); });
    var start = 1;
    //向左
    $("#liulanBox .left a").click(function() {
        var $show = $("#liulanBox .listAreaContent");
        var width = $show.find("li").width() + 4;
        var len = $show.find("li").length;
        if (!$show.is(":animated")) {
            $show.animate({ left: '+=' + width }, "slow");
            start--;
            if (start == 1)
                $("#liulanBox .left a").hide();
            if (start + 4 != len)
                $("#liulanBox .right a").show();
        }
    });
    //往右
    $("#liulanBox .right a").click(function() {
        var $show = $("#liulanBox .listAreaContent");
        var width = $show.find("li").width() + 4;
        var len = $show.find("li").length;
        if (!$show.is(":animated")) {
            $show.animate({ left: '-=' + width }, "slow");
            start++;
            if (start + 4 == len)
                $("#liulanBox .right a").hide();
            if (start != 1)
                $("#liulanBox .left a").show();
        }
    });
    //点击增加
    $(".productName01,.productName02,.productName03,.pic").click(function() {
        bindBrowsedBox($(this));
    });
    setWordPop();
    setPicPop();
});