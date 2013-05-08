
//autocomplete选项
var options = {
    delay: 10,
    minChars: 1,
    max: 10,
    width: 338,
    matchContains: false,
    selectFirst: false, //add by jingjunjie
    formatItem: function(row, i, max) {//显示出来的项格式
        return "<span class=\"ks-suggest-key\">" + row.name + "</span>" + "<span class=\"ks-suggest-result\">约" + row.count + "条</span>";
    },
    formatMatch: function(row, i, max) {
        return row.name; //用户输入的内容在哪些数据项里面搜索
    },
    highlight: null
};

var options1 = {
    delay: 10,
    minChars: 1,
    max: 10,
    width: 281,
    matchContains: false,
    selectFirst: false, //add by jingjunjie
    formatItem: function(row, i, max) {//显示出来的项格式
        return "<span class=\"ks-suggest-key\">" + row.name + "</span>" + "<span class=\"ks-suggest-result\">约" + row.count + "条</span>";
    },
    formatMatch: function(row, i, max) {
        return row.name; //用户输入的内容在哪些数据项里面搜索
    },
    highlight: null
};

$(function() {
    $("img[original]").lazyload();
    $(".productwrapper.border").mouseover(function() { $(this).attr("id", "hoverLi") }).mouseout(function() { $(this).attr("id", "") });
    $(".searchselect").bind("click", function(event) { $("#divsort").find("ul").hide(); event.stopPropagation(); $(this).find("ul").show(); });
    $(".styleorder input[type='radio']").bind("change", function() {
        var selectedvalue = $(".styleorder input[name='nameradio']:checked").val();
        if (selectedvalue == 0) {
            var url = $(".styleorder input[type='radio'][value='0']").attr("directurl");
            window.location.href = url;
            return false;
        }
        else {
            var url = $(".styleorder input[type='radio'][value='1']").attr("directurl");
            window.location.href = url;
            return false;
        }
    });

    $(".orderimg img[method='price']").bind("click", function() {
        var nexturl = $(this).attr("nexturl");
        if (nexturl.length > 0) {
            window.location.href = nexturl;
            return false;
        }
    });

    $(document).bind("click", function() {
        var divsort = $("#divsort");
        var element = $(this);
        if (divsort.find("*").index(element) == -1) {
            divsort.find("ul").hide();
        }
    });
    $(".productwrapper").productWrapper();

    $("#btnSearch").bind('click', function(e) {
        btnSearchSubmit();
    }).bind('keypress', function(e) {
    if (e.keyCode == 13) { btnSearchSubmit(); }
    });

    $("#k").bind("focus", function(e) {
        if ($("#k").val() == default_value || $.trim($("#k").val()) == default_value) {
            $("#k").val("");
        }
    }).bind("blur", function(e) {
        if ($.trim($("#k").val()) == "") {
            $("#k").val(default_value);
        }
    });

    $("#k").autocomplete("http://s.vancl.com/ajax/AjaxKeyword.ashx?rn=" + Math.random(), options);
    $("#skey").autocomplete("http://s.vancl.com/ajax/AjaxKeyword.ashx?rn=" + Math.random(), options1);



});

var default_value = "请输入关键字";
function btnSearchSubmit() {

    if ($("#k").val() == default_value || $.trim($("#k").val()) == default_value) {
        $("#k").val("");
    }
    if ($("#k").val() == "") {
        window.location.href = "/search.aspx";
    }
    else {
        window.location.href = "/search.aspx?k=" + encodeURIComponent($("#k").val());
    }
}


function setTab(name, cursel, n) {
    for (i = 1; i <= n; i++) {
        var menu = document.getElementById(name + i);
        var con = document.getElementById("con_" + name + "_" + i);
        menu.className = i == cursel ? "hover" : "";
        con.style.display = i == cursel ? "block" : "none";
    }
}


/*  Vancl Product List (1.0.0beta)
------------------------------------*/
(function($) {

    $.fn.productWrapper = function() {
        $(this).each(function() {
            var wrapper = $(this);
            //            $('img.productPhoto', this).bind('mouseenter', function() { })
            //                                       .bind('mouseleave', function() { /* worker */ });
            $("a.changecolor", this).bind("click", function() {
                var d = $(this).attr("d");
                if (d == "0")
                    ImgTextChangeProductColor(wrapper, $("span", this).eq(0).text());
                else if (d == "1")
                    ListChangeProductColor(wrapper, $("span", this).eq(0).text());
            });

            $('.pic img:first', wrapper).bind('mouseleave', function() { PushObj(); })
                                .bind('mouseenter', function() {
                                    var pic = $(this).parents('.pic')[0];
                                    SetObj(pic);
                                });
        });
    }

    function ImgTextChangeProductColor(wrapper, productCode) {
        $.getJSON("/ajax/producthandler.ashx?ProductCode=" + productCode,
	function(data) {
	    var productInfo = data;
	    productInfo.VPrice = productInfo.VPrice.replace(".00", "");
	    productInfo.Price = productInfo.Price.replace(".00", "");
	    productInfo.SPrice = productInfo.SPrice.replace(".00", "");

	    wrapper.find(".pic a").eq(0).attr("href", productInfo.ProductInfoUrl);
	    wrapper.find(".pic a img").eq(0).attr("src", productInfo.PhotoPath.replace("lists", "lists170"));
	    wrapper.find(".productName a").eq(0).attr("href", productInfo.ProductInfoUrl).html(productInfo.ProductName);
	    wrapper.find(".price .sc").eq(0).html("售价￥" + productInfo.Price);
	    wrapper.find(".price strong del").eq(0).html("￥" + productInfo.VPrice);
	    wrapper.find(".productInfo .ProductName").eq(0).html(productInfo.ProductName);
	    wrapper.find(".productInfo .prouctCode").eq(0).html(productInfo.ProductCode);
	    wrapper.find(".productInfo .sprice").eq(0).html(productInfo.SPrice);
	    wrapper.find(".productInfo .vprice").eq(0).html(productInfo.VPrice);
	    wrapper.find(".productInfo .price").eq(0).html(productInfo.Price);
	    //	    item.find(".productInfo .commentsNumber").eq(0).html(GetStartStr(productInfo.Asoverall));
	    //	    item.find(".productInfo .comments").eq(0).html(productInfo.AssessCount);
	    wrapper.find(".productInfo .pic").eq(0).html(productInfo.MidPhoto);
	    wrapper.find(".productInfo .salesFlag").eq(0).html(productInfo.SalesFlag);
	    wrapper.find("dl dd").each(function(i) {
	        if ($(this).attr("id") == "color_" + productCode) {
	            if (i % 5 == 4) {
	                $(this).attr("class", "currentColor2");
	                $(this).find("a").blur();
	            }
	            else {
	                $(this).attr("class", "currentColor");
	                $(this).find("a").blur();
	            }
	        }
	        else {
	            if (i % 5 == 4) {
	                $(this).attr("class", "otherColor2");
	            }
	            else {
	                $(this).attr("class", "otherColor");
	            }
	        }
	    });
	    wrapper.find(".pic .teshui").remove();
	    wrapper.find(".pic .qianggou").remove();
	    wrapper.find(".pic .duanma").remove();
	    wrapper.find(".pic .newview").remove();
	    wrapper.find(".pic .qingcang").remove();

	    if (productInfo.SalesFlag == "1") {
	        wrapper.find(".pic").eq(0).append("<div class=\"teshui\">" + productInfo.SPrice.replace(".00", "") + "</div> ");
	    }
	    else if (productInfo.SalesFlag == "2") {
	        wrapper.find(".pic").eq(0).append("<div class=\"qianggou\">" + productInfo.SPrice.replace(".00", "") + "</div> ");
	    }
	    else if (productInfo.SalesFlag == "3") {
	        wrapper.find(".pic").eq(0).append("<div class=\"qingcang\">" + productInfo.SPrice.replace(".00", "") + "</div> ");
	    }
	    else if (productInfo.IsDuanma == "True") {
	        wrapper.find(".pic").eq(0).append("<div class=\"duanma\"></div>");
	    }

	    if (productInfo.IsNew == "1")
	        wrapper.find(".pic").eq(0).append("<div class=\"newview\"></div>");


	});
    }

    function ListChangeProductColor(wrapper, productCode) {
        $.getJSON("/ajax/producthandler.ashx?ProductCode=" + productCode,
	function(data) {
	    var productInfo = data;
	    productInfo.VPrice = productInfo.VPrice.replace(".00", "");
	    productInfo.Price = productInfo.Price.replace(".00", "");
	    productInfo.SPrice = productInfo.SPrice.replace(".00", "");
	    wrapper.find(".pic a").eq(0).attr("href", productInfo.ProductInfoUrl);
	    wrapper.find(".pic a img").eq(0).attr("src", productInfo.PhotoPath.replace("lists", "lists170"));
	    wrapper.find(".productName a").eq(0).attr("href", productInfo.ProductInfoUrl);
	    wrapper.find(".productName a h2").eq(0).html(productInfo.ProductName);

	    var strPrice = "";
	    //      if (dataType == 1)
	    //	        productInfo.SalesFlag = 0;
	    switch (productInfo.SalesFlag) {
	        case "1":
	            strPrice = "特惠价：￥" + productInfo.SPrice;
	            break;
	        case "2":
	            strPrice = "抢购价：￥" + productInfo.SPrice;
	            break;
	        case "3":
	            strPrice = "清仓价：￥" + productInfo.SPrice;
	            break;
	        default:
	            strPrice = "售价：￥" + productInfo.Price;
	            break;

	    }
	    wrapper.find(".fontyj del").eq(0).html("￥" + productInfo.VPrice);
	    wrapper.find(".fonthj").eq(0).html(strPrice);
	    if (productInfo.SPrice != productInfo.Price && productInfo.SalesFlag != "0")
	        wrapper.find(".fontsj").html("售价：￥" + productInfo.Price.replace(".00", ""));
	    else
	        wrapper.find(".fontsj").html("");
	    //wrapper.find(".starImg").html(GetStartStr(productInfo.Asoverall));

	    //wrapper.find("#bCommentCount").html(productInfo.AssessCount);
	    var urlTJ = "/product/SendFriend.aspx?objUrl=" + productInfo.PhotoPath + "&objPrice=" + productInfo.Price + "&objName=" + escape(productInfo.ProductName) + "&objID=" + productCode + "&objVPrice=" + productInfo.VPrice + "&objSprice=" + productInfo.SPrice;
	    wrapper.find("#aTJ").attr("href", urlTJ);
	    var urlZC = "/Usercenter/UserFavorite.aspx?AddCart=" + productCode;
	    wrapper.find("#aZC").attr("href", urlTJ);

	    wrapper.find(".productInfo .ProductName").eq(0).html(productInfo.ProductName);
	    wrapper.find(".productInfo .prouctCode").eq(0).html(productInfo.ProductCode);
	    wrapper.find(".productInfo .sprice").eq(0).html(productInfo.SPrice);
	    wrapper.find(".productInfo .vprice").eq(0).html(productInfo.VPrice);
	    wrapper.find(".productInfo .price").eq(0).html(productInfo.Price);
	    //wrapper.find(".productInfo .commentsNumber").eq(0).html(GetStartStr(productInfo.Asoverall));
	    //wrapper.find(".productInfo .comments").eq(0).html(productInfo.AssessCount);
	    wrapper.find(".productInfo .pic").eq(0).html(productInfo.MidPhoto);

	    wrapper.find(".productInfo .salesFlag").eq(0).html(productInfo.SalesFlag);
	    //item.find("#divProp").eq(0).html(productInfo.Prop);

	    wrapper.find(".StyleColor dd").each(function() {
	        $(this).removeClass("currentColor");
	        $(this).removeClass("otherColor");
	        if ($(this).attr("id") == "color_" + productCode) {
	            $(this).attr("class", "currentColor");
	            $(this).find("a").blur();
	        }
	        else {
	            $(this).attr("class", "otherColor");
	        }
	    });

	    wrapper.find(".pic .teshui").remove();
	    wrapper.find(".pic .qianggou").remove();
	    wrapper.find(".pic .duanma").remove();
	    wrapper.find(".pic .newview").remove();
	    wrapper.find(".pic .qingcang").remove();

	    if (productInfo.SalesFlag == "1") {
	        wrapper.find(".pic").eq(0).append("<div class=\"teshui\">" + productInfo.SPrice.replace(".00", "") + "</div> ");
	    }
	    else if (productInfo.SalesFlag == "2") {
	        wrapper.find(".pic").eq(0).append("<div class=\"qianggou\">" + productInfo.SPrice.replace(".00", "") + "</div> ");
	    }
	    else if (productInfo.SalesFlag == "3") {
	        wrapper.find(".pic").eq(0).append("<div class=\"qingcang\">" + productInfo.SPrice.replace(".00", "") + "</div> ");
	    }
	    else if (productInfo.IsDuanma == "True") {
	        wrapper.find(".pic").eq(0).append("<div class=\"duanma\"></div>");
	    }

	    if (productInfo.IsNew == "1")
	        wrapper.find(".pic").eq(0).append("<div class=\"newview\"></div>");



	});
    }


    function GetStartStr(amount) {
        var str = "";
        var num = parseInt(amount);
        var deci = amount - num;
        for (var i = 0; i < 5; i++) {
            if (i < num) {
                str += "<img src=\"http://images.vancl.com/NewVancl/Common/s1.gif\"/>";
            }
            else if (deci < 0.25 && i == num) {
                str += "<img src=\"http://images.vancl.com/NewVancl/Common/s0.gif\"/>";
            }
            else if (deci >= 0.25 && deci <= 0.75 && i == num) {
                str += "<img src=\"http://images.vancl.com/NewVancl/Common/s05.gif\"/>";
            }
            else if (deci > 0.75 && i == num) {
                str += "<img src=\"http://images.vancl.com/NewVancl/Common/s1.gif\"/>";
            }
            else {
                str += "<img src=\"http://images.vancl.com/NewVancl/Common/s0.gif\"/>";
            }
        }
        return str;
    }
})(jQuery);


/*------------------------------------弹出层js（原ProductNoticePop.js)-------------------------------------- */


// JScript 文件
//----------------------浮动窗口开始--------------------------------
function ShowDetail(obj, htmlContent) {
    var conspan = 0; //插入图片的深度
    var htmlContent = htmlContent;
    var newObj = GetWH($(obj));
    newObj.left = GetLeftOrTop(obj, "left");
    newObj.top = GetLeftOrTop(obj, "top");
    var objImgWH = GetWH($("#imgICO"));
    var objDialogWH = GetWH($("#detail"));
    var left = newObj.left;
    var broderWidth = 1;
    var scrollTop = document.documentElement.scrollTop + document.body.scrollTop;
    var autoWidth = 0;

    objDialogWH.top = parseInt(document.documentElement.clientHeight) - (newObj.top - scrollTop) - objDialogWH.h;
    if (objDialogWH.top < 0) {
        objDialogWH.top = newObj.top + objDialogWH.top - 3;
        if (objDialogWH.top < 0) objDialogWH.top = scrollTop;
    } else {
        objDialogWH.top = newObj.top;
    }
    objImgWH.top = newObj.top + 30;
    objDialogWH.left = document.documentElement.clientWidth - left - parseInt(objDialogWH.w) - parseInt($(obj).css("width")) - conspan;

    if (left > document.documentElement.clientWidth - left - parseInt($(obj).css("width"))) {
        objDialogWH.left = left - objDialogWH.w - objImgWH.w + conspan + broderWidth + 1 + autoWidth - 3;
        objImgWH.left = left - objImgWH.w + conspan + broderWidth * 2 + autoWidth - 3;

        $("#detail").html(htmlContent);
        $("#imgICO").css("background-position", "0 25px");
    } else {
        objImgWH.left = newObj.left + parseInt($(obj).css("width")) - conspan + autoWidth;

        objDialogWH.left = objImgWH.left + objImgWH.w - broderWidth;
        $("#detail").html(htmlContent);
        $("#imgICO").css("background-position", "0 0");

    }
    $("#imgICO").css("left", objImgWH.left + "px");
    $("#imgICO").css("top", objImgWH.top - 25 + "px");

    $("#detail").css("left", objDialogWH.left + "px");

    $("#detail").css("top", objDialogWH.top - 25 + "px");

    if (objdml == null) {
        ShowDetailHide();
        return false;
    }
    $("#imgICO").show();
    $("#detail").show();
    $("#detail").bgiframe();
    if (objImgWH.top > (objDialogWH.top + objDialogWH.h - objImgWH.h))
        $("#imgICO").hide();
    //alert(document.getElementById("detail").outerHTML)
}
function ShowDetailHide() {
    $("#imgICO").hide(); ;
    $("#detail").hide();
}
function GetWH(obj) {
    var objwh = new ObjWH();
    objwh.w = parseInt(obj.css("width"));
    objwh.h = parseInt(obj.css("height"));
    return objwh;
}
function ObjWH() {
    this.top = 0;
    this.left = 0;
    this.w = 0;
    this.h = 0;
}
function GetLeftOrTop(obj, strName) {
    var num = 0;
    do {
        if (strName == "left") {
            num += obj.offsetLeft;
        }
        else {
            num += obj.offsetTop;
        }

        obj = obj.offsetParent;
    } while (!(obj == null || obj.tagName == "BODY"));
    return num;
}
function Point(iX, iY) {
    this.x = iX;
    this.y = iY;
}
//----------------------浮动窗口结束--------------------------------

function RegisterList() {

}
var objdml = null;
function SetObj(obj) {
    objdml = obj;
    setTimeout("ShowProductInfo()", 500);
}
function PushObj() {
    objdml = null;
    ShowDetailHide();
}
function ShowProductInfo() {
    if (objdml == null) {
        return false;
    }
    var obj = objdml;
    var productInfo = new ProductInfo();
    var productObj = "";
    var content = "";
    var imgWidth = 0;
    var imgHeight = 0;
    $($(obj).html()).each(function(i) {
        if ($(this).attr("class") == "productInfo") {
            productObj = $(this);
        }
    });
    if (productObj == "")
        return;
    $(productObj.html()).each(function() {
        //alert($(this).attr("class"));
        SetProductInfo($(this), productInfo);
    });

    $("#detail").attr("class", "fc03");
    content = "<div style=\"text-align:center\"><img src=\"http://images.vancl.com/logo/loading.gif\"/></div>";
    ShowDetail(obj, content);

    $("<img src=\"" + productInfo.ProductPic + "\">").load(function() {
        var img = new Image();
        img.src = productInfo.ProductPic;
        if (img.width == "570")//修改为570
        {
            $("#detail").attr("class", "fc");
            imgWidth = 300;
            imgHeight = 200;
        }
        else {
            $("#detail").attr("class", "fc02");
            imgWidth = 270;
            imgHeight = 310;
        }
        content = DetailStr(productInfo);
        ShowDetail(obj, content);
        $("#driftImg").LoadImage(true, imgWidth, 310, "<img src=\"http://images.vancl.com/logo/loading.gif\"/>");
    }
    );
    $("<img src=\"" + productInfo.ProductPic + "\">").error(function() {
        $("#detail").attr("class", "fc02");
        imgWidth = 270;
        imgHeight = 310;
        content = DetailStr(productInfo);
        //alert(content);
        ShowDetail(obj, content);
    });



}
function ShowDiv() {
    var s = "";
}
function SetProductInfo(obj, productInfo) {
    switch (obj.attr("class")) {

        case "productCode":
            productInfo.ProductCode = obj.html();
            break;
        case "ProductName":
            productInfo.ProductName = obj.html();
            break;
        case "price":
            productInfo.ProductPrice = obj.html();
            break;
        case "sprice":
            productInfo.ProductSPrice = obj.html();
            break;
        case "vprice":
            productInfo.ProductVPrice = obj.html();
            break;
        case "commentsNumber":
            productInfo.CommentsNumber = obj.html();
            break;
        case "comments":
            productInfo.Comments = obj.html();
            break;
        case "pic":
            productInfo.ProductPic = obj.html();
            break;
        case "salesFlag":
            productInfo.SalesFlag = obj.html();
            break;
        case "isPoint":
            productInfo.IsPoint = obj.html();
            break;
        case "pointPrice":
            productInfo.PointPrice = obj.html();
            break;
        case "points":
            productInfo.Points = obj.html();
            break;
    }
}
function ProductInfo() {
    this.ProductPic = "";
    this.ProductCode = "";
    this.ProductName = "";
    this.ProductPrice = "";
    this.ProductVPrice = "";
    this.ProductSPrice = "";
    this.PointPrice = "0";
    this.Points = "0";
    this.ProductImgUrl = "";
    this.CommentsNumber = "";
    this.Comments = "";
    this.SalesFlag = "0";
    this.IsPoint = "0";
}
function DetailStr(productInfo) {
    var s = "<p align=\"center\" class=\"jJ\"><img src=\"" + productInfo.ProductPic + "\" id=\"driftImg\"  /></p>";
    s += "<div class=\"sd\">" + productInfo.ProductName + "</div>";
    s += "<p class=\"jJ01\">产品编号：" + productInfo.ProductCode + "</p>";
    s += "<p class=\"jJ02\"><strong>";
    if (productInfo.IsPoint == "0") {
        switch (productInfo.SalesFlag) {
            case "0":
                s += "售价：￥" + productInfo.ProductPrice;
                break;
            case "1":
                s += "特惠价：￥" + productInfo.ProductSPrice;
                break;
            case "2":
                s += "抢购价：￥" + productInfo.ProductSPrice;
                break;
            case "3":
                s += "清仓价：￥" + productInfo.ProductSPrice;
                break;
        }
    }
    else {
        s += "积分换购价：￥" + productInfo.PointPrice + "+" + productInfo.Points;
    }
    s += "</strong></p>";
    s += "<p class=\"jJ03\">市场价：<del>￥" + productInfo.ProductVPrice + "</del>　<span>";

    if (productInfo.ProductPrice != productInfo.ProductSPrice || productInfo.IsPoint == "1")
        s += "售价：￥" + productInfo.ProductPrice;
    s += "</span></p>";
    s += "<p class=\"jJ04\">用户综合评分：" + productInfo.CommentsNumber + "　共有 <strong>" + productInfo.Comments + "</strong> 条评论</p>";
    return s;
}
function IsIE() {
    if (isFirefox = navigator.userAgent.indexOf("MSIE") > 0)
        return true;
    return false;
}      