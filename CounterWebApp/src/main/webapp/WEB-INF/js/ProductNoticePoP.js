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
    objDialogWH.left = document.documentElement.clientWidth - left - parseInt(objDialogWH.w) - parseInt(GetAttrWidth($(obj))) - conspan;

    if (left > document.documentElement.clientWidth - left - parseInt(GetAttrWidth($(obj)))) {
        objDialogWH.left = left - objDialogWH.w - objImgWH.w + conspan + broderWidth + 1 + autoWidth - 3;
        objImgWH.left = left - objImgWH.w + conspan + broderWidth * 2 + autoWidth - 3;

        $("#detail").html(htmlContent);
        $("#imgICO").css("background-position", "0 25px");
    } else {
		objImgWH.left = newObj.left + parseInt(GetAttrWidth($(obj))) - conspan + autoWidth;

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
	objwh.w = parseInt(GetAttrWidth(obj));
    objwh.h = parseInt(GetAttrHeight(obj));
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
function Point(iX,iY) {
    this.x = iX;
    this.y = iY;
}
//obj应该是一个jQuery对象
//解决IE8.css("width")为Nan的问题
function GetAttrWidth(obj) {
	return parseInt(obj.css("width")) ? obj.css("width") : obj.width();
}

function GetAttrHeight(obj) {
	return parseInt(obj.css("height")) ? obj.css("height") : obj.height();
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

        case "prouctCode":
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
    s += "<p class=\"jJ04\">商品描述：" + productInfo.CommentsNumber + "　共有 <strong>" + productInfo.Comments + "</strong> 条评论</p>";
    return s;
}
function IsIE() {
    if (isFirefox = navigator.userAgent.indexOf("MSIE") > 0)
        return true;
    return false;
}
function initProductsPop() {
    var productIds = "";

    $("[pop]").each(function() {
        productIds += $(this).attr("pop") + ",";
    });
    if (productIds != "") {
        $.ajax({
            async: true, cache: false, type: "post", dataType: "json",
            url: "/public/ProductPop.ashx",
            data: "productIds=" + productIds,
            success: function(productInfos) {
            if (typeof productInfos != 'undefined' && productInfos != "" && productInfos != null) {
                    for (var i = 0; i < productInfos.length; i++) {
                        var ProductCode = productInfos[i].ProductCode;
                        var ProductName = productInfos[i].ProductName;
                        var sprice = productInfos[i].sprice;
                        var VPrice = productInfos[i].VPrice;
                        var Price = productInfos[i].Price;
                        var Colligation = productInfos[i].Colligation;
                        var acount = productInfos[i].acount;
                        var mainpath = productInfos[i].mainpath;
                        var SalesFlag = productInfos[i].SalesFlag;
                        var popHtml = "<div class=\"productInfo\" style=\"display: none;\"><span class=\"ProductName\">" +
                        ProductName + "</span><span class=\"prouctCode\">" + ProductCode + "</span><span class=\"sprice\">" +
                        sprice + "</span><span class=\"vprice\">" + VPrice + "</span><span class=\"price\">" + Price +
                        "</span><span class=\"commentsNumber\">" + Colligation + "</span><span class=\"comments\">" +
                        acount + "</span><span class=\"pic\">" + mainpath + "</span><span class=\"salesFlag\">" + SalesFlag +
                        "</span></div>";
                        $("[pop=" + ProductCode + "]").parents("li").append(popHtml);
                    }
                }
            }
        });
    }
}

function initProductPop(procode) {
    if (procode != "") {
        $.ajax({
            async: true, cache: false, type: "post", dataType: "json",
            url: "/public/ProductPop.ashx",
            data: "productIds=" + procode,
            success: function(productInfos) {
            if (typeof productInfos != 'undefined' && productInfos != "" && productInfos != null) {
                    for (var i = 0; i < productInfos.length; i++) {
                        var ProductCode = productInfos[i].ProductCode;
                        var ProductName = productInfos[i].ProductName;
                        var sprice = productInfos[i].sprice;
                        var VPrice = productInfos[i].VPrice;
                        var Price = productInfos[i].Price;
                        var Colligation = productInfos[i].Colligation;
                        var acount = productInfos[i].acount;
                        var mainpath = productInfos[i].mainpath;
                        var SalesFlag = productInfos[i].SalesFlag;

                        var popHtml = "<div class=\"productInfo\" style=\"display: none;\"><span class=\"ProductName\">" +
                        ProductName + "</span><span class=\"prouctCode\">" + ProductCode + "</span><span class=\"sprice\">" +
                        sprice + "</span><span class=\"vprice\">" + VPrice + "</span><span class=\"price\">" + Price +
                        "</span><span class=\"commentsNumber\">" + Colligation + "</span><span class=\"comments\">" +
                        acount + "</span><span class=\"pic\">" + mainpath + "</span><span class=\"salesFlag\">" + SalesFlag +
                        "</span></div>";
                        $("[pop=" + ProductCode + "]").parents("li").find(".productInfo").replaceWith(popHtml);
                    }
                }
            }
        });
    }
}
function bindPop(obj) {
    var id = $(obj).find("img[pop]").attr("pop");
    if ($(obj).find(".productInfo").length > 0)
        SetObj(obj);
    else if (id != "") {
		//First I init the objdml, then if mouseleave the objmdl will be null, then the div would't be show.
		//解决泡泡弹出后部消失的bug
		objdml = obj;
        $.ajax({
            async: true, cache: false, type: "post", dataType: "json",
            url: "/public/ProductPop.ashx",
            data: "productIds=" + id,
            success: function(productInfos) {
                if (typeof productInfos != 'undefined' && productInfos != "" && productInfos!=null) {
                    for (var i = 0; i < productInfos.length; i++) {
                        var ProductCode = productInfos[i].ProductCode;
                        var ProductName = productInfos[i].ProductName;
                        var sprice = productInfos[i].sprice;
                        var VPrice = productInfos[i].VPrice;
                        var Price = productInfos[i].Price;
                        var Colligation = productInfos[i].Colligation;
                        var acount = productInfos[i].acount;
                        var mainpath = productInfos[i].mainpath;
                        var SalesFlag = productInfos[i].SalesFlag;

                        var popHtml = "<div class=\"productInfo\" style=\"display: none;\"><span class=\"ProductName\">" +
                        ProductName + "</span><span class=\"prouctCode\">" + ProductCode + "</span><span class=\"sprice\">" +
                        sprice + "</span><span class=\"vprice\">" + VPrice + "</span><span class=\"price\">" + Price +
                        "</span><span class=\"commentsNumber\">" + Colligation + "</span><span class=\"comments\">" +
                        acount + "</span><span class=\"pic\">" + mainpath + "</span><span class=\"salesFlag\">" + SalesFlag +
                        "</span></div>";
                        $(obj).append(popHtml);
                        //SetObj(obj);
                        setTimeout("ShowProductInfo()", 500);
                    }
                }
            }
        });
    }
}

//-------------------------changeChannelHoverByUrl start
$(function() {
	var url = String(document.location.href).toLowerCase();

	$("#Head .Lnavlist>ul a").each(function(idx, item) {
		var href = String($(item).attr("href")).toLowerCase();

		var pClass = $(item).parent().attr("class");
		var index = pClass.substr(4);

		if (url.indexOf(href) > -1 && index != "10") {
			$(item).css('background', 'url(images/nav' + index + '_L2.gif) no-repeat');
		}
	});
});
//-------------------------changeChannelHoverByUrl end