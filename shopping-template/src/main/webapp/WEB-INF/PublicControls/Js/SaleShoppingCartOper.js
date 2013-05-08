//格式化价格
function FormatDouble(s) {
    var len = 2;
    var returnValue = 0;
    var newStr = String(s);
    if (newStr.indexOf(".") > 0) {
        returnValue = Math.round(s * Math.pow(10, len)) / Math.pow(10, len);
        var dindex = String(returnValue).indexOf(".");
        dindex = String(returnValue).length - dindex;
        if (dindex == 2)
            returnValue = String(returnValue) + "0";
    }
    else {
        returnValue = s + ".00";
    }
    return returnValue;
}
var changeSuccess = true;
//删除单品
DeleteProduct = function(sku, thisCount) {
    if (changeSuccess) {
        var productCount = 0;
        var isAllInt = true;
        for (var i = 0; i < $("input[@id=OrderAmount_" + sku + "]").length; i++) {
            var item = $("input[@id=OrderAmount_" + sku + "]").eq(i);
            if (IsInt($(item).val())) {
                var count = parseInt($(item).val());
                productCount += count;
            }
            else {
                isAllInt = false; break;
            }
        }
        if (isAllInt) {
            productCount = productCount - thisCount;
            if (productCount < 0) productCount = 0;
            Vancl_ajax({
                async: true, cache: false, type: "get", dataType: "text",
                url: "/Product/xmldata/EditProductCount.aspx?ClothesCode=" + sku + "&ProductCount=" + productCount,
                data: "",
                beforeSend: function() { LoaddingShow("正在处理..."); },
                success: function(xml) {
                    cart.Init();
                },
                error: function(XMLHttpRequest) { alert("服务器内部错误！"); },
                complete: function(XMLHttpRequest) { LoaddingClose(); }
            });
        }
    }
}
//修改单品数量
EditProductCount = function(sku, Amount, obj) {
    var productCount = 0;
    var isAllInt = true;
    var thisCount = $(obj).val();

    for (var i = 0; i < $("input[@id=OrderAmount_" + sku + "]").length; i++) {
        var item = $("input[@id=OrderAmount_" + sku + "]").eq(i);
        if (IsInt($(item).val())) {
            var count = parseInt($(item).val());
            productCount += count;
        }
        else {
            isAllInt = false; changeSuccess = true; break;
        }
    }

    if (isAllInt) {
        if (productCount < 0) productCount = 0;
        //alert("/Product/xmldata/CheckShoppingCart.ashx?ClothesCode=" + sku + "&num=" + productCount);
        Vancl_ajax({
            async: false, cache: false, type: "get",
            url: "/Product/xmldata/CheckShoppingCart.ashx?ClothesCode=" + sku + "&num=" + productCount,
            data: "",
            datatype: "xml",
            contentType: "text/xml",
            beforeSend: function() { LoaddingShow("正在处理..."); },
            success: function(data) {
                if (typeof (data) == 'object') {
                    var b = $(data).find("Limit").text();
                    if (b != "0") {
                        alert("活动期间，指定产品单张订单限购" + b + "件");
                        obj.value = Amount;
                        changeSuccess = true;
                        return;
                    }

                    Vancl_ajax({
                        async: false, cache: false, type: "get", dataType: "text",
                        url: "/Product/xmldata/EditProductCount.aspx?ClothesCode=" + sku + "&ProductCount=" + productCount,
                        data: "",
                        beforeSend: function() { LoaddingShow("正在处理..."); },
                        success: function(xml) {
                            cart.Init();
                        },
                        error: function(XMLHttpRequest) { alert("服务器内部错误！"); },
                        complete: function(XMLHttpRequest) { LoaddingClose(); changeSuccess = true; }
                    });
                }
            },
            error: function(XMLHttpRequest) { alert("服务器内部错误！"); },
            complete: function(XMLHttpRequest) { LoaddingClose(); }
        });

    }
    return false;

}

//修改积分换购单品数量
EditPointProductCount = function(sku, Amount, obj) {
    var thisCount = $(obj).val();
    var productCount = 0;
    var isAllInt = true;
    for (var i = 0; i < $("input[@id=PointOrderAmount_" + sku + "]").length; i++) {
        var item = $("input[@id=PointOrderAmount_" + sku + "]").eq(i);
        if (IsInt($(item).val())) {
            var count = parseInt($(item).val());
            productCount += count;
        }
        else {
            isAllInt = false; changeSuccess = true; break;
        }
    }

    if (isAllInt) {
        if (productCount < 0) productCount = 0;
        $.ajax({
            async: false, cache: false, type: "get", dataType: "text",
            url: "/Product/xmldata/EditPointProductCount.aspx?ClothesCode=" + sku + "&ProductCount=" + productCount,
            data: "",
            beforeSend: function() { LoaddingShow("正在处理..."); },
            success: function(xml) {
                cart.Init();
            },
            error: function(XMLHttpRequest) { alert("服务器内部错误！"); },
            complete: function(XMLHttpRequest) { LoaddingClose(); changeSuccess = true; }
        });
    }
    return false;
}
//删除积分换购单品
DeletePointProduct = function(sku, thisCount) {
    if (changeSuccess) {
        var productCount = 0;
        var isAllInt = true;
        for (var i = 0; i < $("input[@id=PointOrderAmount_" + sku + "]").length; i++) {
            var item = $("input[@id=PointOrderAmount_" + sku + "]").eq(i);
            if (IsInt($(item).val())) {
                var count = parseInt($(item).val());
                productCount += count;
            }
            else {
                isAllInt = false; break;
            }
        }
        if (isAllInt) {
            productCount = productCount - thisCount;
            if (productCount < 0) productCount = 0;
            $.ajax({
                async: true, cache: false, type: "get", dataType: "text",
                url: "/Product/xmldata/EditPointProductCount.aspx?ClothesCode=" + sku + "&ProductCount=" + productCount,
                data: "",
                beforeSend: function() { LoaddingShow("正在处理..."); },
                success: function(xml) {
                    cart.Init();
                },
                error: function(XMLHttpRequest) { alert("服务器内部错误！"); },
                complete: function(XMLHttpRequest) { LoaddingClose(); }
            });
        }
    }
}
//删除套装
DeleteSuit = function(suitCode, intRow) {

    $.ajax({
        async: true, cache: false, type: "get", dataType: "text",
        url: "/Product/xmldata/DeleteSuit.aspx?SuitCode=" + suitCode + "&IntRow=" + intRow,
        data: "",
        beforeSend: function() { LoaddingShow("正在处理..."); },
        success: function(xml) {
            cart.Init();
        },
        error: function(XMLHttpRequest) { alert("服务器内部错误！"); },
        complete: function(XMLHttpRequest) { LoaddingClose(); }
    });
}
//修改套装
function EditSelfSuit(SuitCode, intRow, Cookie) {
    setSelfSuit_ToCookie(SuitCode, Cookie);
    location.href = WebSite + "/Product/SelfSuit.aspx?Edit_InRow=" + intRow + "&SuitID=" + SuitCode + "";
}
//设置已选的自选套装，参数：套装编号，写入的数据。Data规则：商品ID|商品数量$商品ID|商品数量
function setSelfSuit_ToCookie(selfSuitCode, data) {
    setCookie("SelfSuit_" + selfSuitCode, data, 365);
}
//清空购物车
function ClearShoppingCar() {
    if (!changeSuccess) {
        setTimeout("ClearShoppingCar();", 10);
    }
    else {
        Vancl_ajax({
            type: "POST",
            url: "/Product/xmldata/non_save.aspx?clear=clear",
            data: "",
            beforeSend: function() { LoaddingShow("正在处理..."); },
            datatype: "html",
            success: function(msg) { location = location; },
            error: function(msg) { alert("操作失败，请重试") }
        });
    }
}
//结算
function ShoppingCarPay() {
    var isSuccess = PresentIsSelected();
    if (Cart.UserPoints > -1) {
        var needPoints = Cart.ShoppingCarPoint - Cart.UserPoints;
        if (needPoints > 0) {
            PointErrorConctrol(Cart.UserPoints, Cart.ShoppingCarPoint);
            return;
        }
    }
    var count = $("#spTotalCount").html();
    if (count == "0") {
        return;
    }
    setTimeout("GoCompelte();", 10);

}

function GoCompelte() {
    if (changeSuccess) {
        if (PresentIsSelected() == true)
            location = toUrl;
    }
    else {
        setTimeout("GoCompelte();", 100);
    }

}


//删除最后一个逗号
GetNewStr = function(str) {
    if (str.length > 0) {
        str = str.substr(0, str.length - 1);
    }
    return str;
}
//隐藏请选择尺码的提示框
function Divcloes(obj) {
    document.getElementById(obj).style.display = "none";
}
function IsInt(str) {
    var r = /^[0-9]*[1-9][0-9]*$///正整数 
    return r.test(str); //str为你要判断的字符 执行返回结果 true 或 false
}
//验证赠品是否选择
function PresentIsSelected() {
    var isSuccess = true;
    var rulesList = $("#mustPresentList").find("tr[@alt=Rules]");
    if ($(rulesList).length > 0) {
        for (var i = 0; i < $(rulesList).length; i++) {
            var sku = $(rulesList).eq(i).find(".selProductSize").val();
            if (sku == "") {
                $(rulesList).eq(i).find("div[@alt=notice]").show();
                isSuccess = false;
                break;
            }
        }
    }
    var rulesList = $("#notMustPresentList").find("tr[@alt=Rules]");
    if ($(rulesList).length > 0) {
        for (var i = 0; i < $(rulesList).length; i++) {
            var sku = $(rulesList).eq(i).find(".selProductSize").val();
            if (sku == "") {
                $(rulesList).eq(i).find("div[@alt=notice]").show();
                isSuccess = false;
                break;
            }
        }
    }
    return isSuccess;
}

// Vancl_ajax
// IE8 6001.18702版本可能会出现用户无法修改购物车商品数量，故用Vancl_ajax替代$.ajax
function Vancl_ajax(options) {
    var type = options.type || "GET";
    var url = options.url || "";
    var data = options.data || "";
    var dataType = options.dataType || options.datatype || "";
    var beforeSend = options.beforeSend || {};
    var success = options.success || {};
    var error = options.error || {};
    var complete = options.complete || {};
    var cache = options.cache || false;

    // 去除cache
    if (!cache) {
        url = url += (url.indexOf("?") == -1 ? "?" : "&") + "timestamp=" + new Date().getTime();
    }

    var xhr = false;
    if (window.XMLHttpRequest) { //Mozilla 
        xhr = new XMLHttpRequest();
        if (xhr.overrideMimeType) {
            xhr.overrideMimeType("text/xml");
        }
    } else if (window.ActiveXObject) { //IE
        try {
            xhr = new ActiveXObject("Msxml2.XMLHTTP");
        } catch (e) {
            try {
                xhr = new ActiveXObject("Microsoft.XMLHTTP");
            } catch (e) { }
        }
    }

    if (!xhr) {
        window.alert("Can't create XMLHttpRequest");
        return false;
    }
    if (dataType.toLowerCase() == "text") {
        //xhr.onreadystatechange = processTextResponse;
        xhr.onreadystatechange = function() { processTextResponse(xhr, success, error, complete); };
    } else if (dataType.toLowerCase() == "xml") {
        //xhr.onreadystatechange = processXMLResponse;
        xhr.onreadystatechange = function() { processXMLResponse(xhr, success, error, complete); };
    } else {
        //datatype默认为text
        xhr.onreadystatechange = function() { processTextResponse(xhr, success, error, complete); };
    }
    type = type.toUpperCase();
    if (type == "GET") {
        xhr.open(type, url, true);
    } else if (type == "POST") {
        xhr.open(type, url, true);
        xhr.setRequestHeader("content-Type", "application/x-www-form-urlencoded");
    } else {
        //默认get
        xhr.open(type, url, true);
    }
    beforeSend();
    xhr.send(data);
}

function processTextResponse(xhr, success, error, complete) {
    if (xhr.readyState == 4) {
        if (xhr.status == 200) {
            success(xhr.responseText);
        }
        else {
            error(xhr.responseText);
        }
        complete(xhr.responseText);
    }
}

function processXMLResponse(xhr, success, error, complete) {
    if (xhr.readyState == 4) {
        if (xhr.status == 200) {
            success(xhr.responseXML);
        }
        else {
            error(xhr.responseXML);
        }
        complete(xhr.responseXML);
    }
}
