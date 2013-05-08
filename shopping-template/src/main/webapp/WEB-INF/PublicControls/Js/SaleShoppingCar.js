var DEBUG = false;
//Conditional firebug console
var fnLog = function() { return function() { }; }
if (typeof console === "undefined") console = { log: fnLog("log") };
function _(arg) { console.log(arg); return arg; }

// Simple JavaScript Templating - local var in template are: p - content array, obj - context object, out - a function for write to current position of content list
// John Resig - http://ejohn.org/ - MIT Licensed
(function() { var d = {}; this.tmpl = function tmpl(a, b) { var c = !/\W/.test(a) ? d[a] = d[a] || tmpl(document.getElementById(a).innerHTML) : new Function("obj", "var p=[],out=function(){p.push.apply(p,arguments);};" + "with(obj){p.push('" + a.replace(/[\r\t\n]/g, " ").split("<#").join("\t").replace(/((^|#>)[^\t]*)'/g, "$1\r").replace(/\t=(.*?)#>/g, "',$1,'").split("\t").join("');").split("#>").join("p.push('").split("\r").join("\\'") + "');}return p.join('');"); return b ? c(b) : c } })();

function setShoppingCookie(c_name, value, expires, doEsc) {
    document.cookie = c_name + "=" + (doEsc ? escape(value) : value) +
((expires == null) ? ";" : ";expires=" + expires + ";") + "path=/;domain=.vancl.com;";
}
function getShoppingCookie(c_name, doEsc) {
    if (document.cookie.length > 0) {
        c_start = document.cookie.indexOf(c_name + "=");
        if (c_start != -1) {
            c_start = c_start + c_name.length + 1;
            c_end = document.cookie.indexOf(";", c_start);
            if (c_end == -1) c_end = document.cookie.length; value = document.cookie.substring(c_start, c_end);
            return doEsc ? unescape(value) : value;
        }
    }
    return "";
}
/////////////////////////////
// The above scripts is
// for general purpose and
// should be moved to a
// common place. And please
// keep the MIT license.
/////////////////////////////

//购物车
function Cart() {
    var COOKIE = {
        MUST: "PresentSelection",
        MUSTSKU: "MustHasSKU",
        NOTMUST: "OptSelection",
        NOTMUSTSKU: "NotMustHasSKU"
    }
    var _xml;
    var _presentsState = [];
    var show = function() {
        showPresents();
    }
    var _tmpls = {
        selectSize: tmpl("PresentSizeSelectTmpl"),
        inCartMust: tmpl("InCartMustPresentsTmpl"),
        inCartNotMust: tmpl("InCartNotMustPresentsTmpl"),
        notInCart: tmpl("NotInCartPresentsTmpl"),
        present: tmpl("PresentTmpl")
    }
   
    var showPresents = function() {
        var presentsData = _xml.find("Presents"); 
        var inCartData = presentsData.children("InCart"); 
        var inCartModel = {
            model: inCartData,
            normalPresents: _xml.find("Present[state=]"),
            optionalPresents: _xml.find("Present[state=sel]")
        };
         
        $("#mustPresentList").html(_tmpls.inCartMust(inCartModel));
        $("#notMustPresentList").html(_tmpls.inCartNotMust(inCartModel));
        var notInCartData = _xml.find("Present[state=opt]"); 
        if (notInCartData.length > 0) {
            $("#leavelNotMustPresentLsit").html(_tmpls.notInCart({
                presents: notInCartData
            }));
        }
        else {
            $("#leavelNotMustPresentLsit").html("");
        }
    }
    var setPresentState = function() {
        _presentsState = [];
        var presents = _xml.find("Present");
        presents.each(function(i, o) {
            o = $(o); 
            var index = o.attr("index"); 
            var sel = o.children("Selected"); 
            _presentsState[index] = { 
                model: o, 
                id: o.attr("id"),
                index: index,
                promoteeId: o.attr("promoteeId"),
				willPrent: o.attr("willPresent"),
				picBig: o.attr("picBig"),
                _productId: sel.attr("id"),
                _sku: sel.attr("sku"),
                _state: o.attr("state"),
				
                ProductId: function(id) {
                    if (typeof id !== "undefined") { 
                        this.model.children("Selected").attr("id", id);
                        return this._productId = id;
                    }
                    else { return this._productId; }
                },
                SKU: function(sku) {
                    if (typeof sku !== "undefined") { 
                        this.model.children("Selected").attr("sku", sku);
                        return this._sku = sku;
                    }
                    else { return this._sku; }
                },
                State: function(state) { 
                    if (typeof state !== "undefined") {  
                        this.model.attr("state", state);
                        return this._state = state;
                    }
                    else { return this._state; }
                }, 
                IsInCart: function() { return this._state !== "opt"; },
                IsOptional: function() { return this._state === "opt" || this._state === "sel"; 
                }
            };
        });
        console.log(_presentsState);
    }
    var writeCookie = function(cookieName, presentStates) { 
        var cookie = [];
        for (i in presentStates) {

            cookie.push((function(state) {
                return [state.SKU(),
						state.promoteeId,
						state.index,
						state.id,
						state.ProductId(),
						state.State()
				].join("_");
            })(presentStates[i]));
        }
        setShoppingCookie(cookieName, cookie.join(), _xml.find("Presents").attr("expires"));
    }
    var getPresentDOM = function(index) {
        return $("#Present" + index + ",#PresentInfo" + index);
    }
    var revertDeletedPresents = function() {
        _xml.find("Present[state=del]").each(function(i, o) {
            _presentsState[$(o).attr("index")].State("");
        });
        this.SaveCookie();
    }

    this.SaveCookie = function() {
        var cookies = {};
        cookies[COOKIE.MUST] = [];
        cookies[COOKIE.MUSTSKU] = [];
        cookies[COOKIE.NOTMUST] = [];
        cookies[COOKIE.NOTMUSTSKU] = [];
        $(_presentsState).each(function(i, o) {
            if (!o) return;
            if (o.IsInCart() && o.SKU()) {
                if (o.IsOptional()) {
                    cookies[COOKIE.NOTMUSTSKU].push(o);
                }
                else {
                    cookies[COOKIE.MUSTSKU].push(o);
                }
            }
            else {
                if (o.IsOptional()) {
                    cookies[COOKIE.NOTMUST].push(o);
                }
                else {
                    cookies[COOKIE.MUST].push(o);
                }
            }
        });
        for (cookieName in cookies) {
            writeCookie(cookieName, cookies[cookieName]);
        }
    }
    this.Init = function() {
        revertDeletedPresents.apply(this);
        this.LoadData();
    }
    this.LoadData = function() {     
        var cart = this; 
        $.ajax({ async: false, cache: false, type: "GET", dataType: "xml",
            url: "/Shopping/ShoppingXmlData.aspx",
            beforeSend: function() { LoaddingShow("正在处理..."); },
            success: function(xml) { 
				
                _xml = $(xml); 
                Cart.shoppingCarXml = xml;
                setPresentState();
                Cart.DealData();
                cart.SaveCookie(); 
                ShoppingCarHtml.Clear();
                show();
                Cart.ChangeTrBgColor();
            },
            error: function(XMLHttpRequest) { if (DEBUG) debugger; alert("服务器内部错误！"); },
            complete: function(XMLHttpRequest) { LoaddingClose(); LoadSetPesent() }
        });
    }
    //将特惠品添加到购物车
    this.AddPresentToCart = function(index) { 
        var state = _presentsState[index]; 
        //		if(!state.SKU()) { alert("请您先选择尺码！"); return; }
        state.State("sel");  
        this.SaveCookie();
        if (state.SKU())  this.LoadData(); 
        else showPresents(); 
    }
    //删除添加到购物车的赠品、特惠品
    this.DeletePresent = function(index) { 
        var dom = getPresentDOM(index);
        var state = _presentsState[index];
        var needReload = false;
//        state.ProductId("");
        if (state.State() === "sel") {
            state.State("opt");
            showPresents();
        }
        else {
            state.State("del");
            dom.remove();
        }
        if (state.SKU()) {
            state.SKU("");
            needReload = true;
        }
        this.SaveCookie();
        if (needReload) this.LoadData();
    }
    this.SeletePresent = function(index, productId) {  
        var state = _presentsState[index];
        state.ProductId(productId);
        if (state.SKU() && state.IsInCart()) { 
       
            this.SeletePresentSize(index, "");  
        }
        else {  
        
            this.SeletePresentSize(index, ""); 
            this.LoadData();
            /*			this.SaveCookie();
            $.ajax({
            async: true, cache: true, type: "GET", dataType: "xml",
            url: "/Shopping/ShoppingXmlData.aspx",
            data: "action=getSKU&productId="+productId,
            beforeSend: function() { LoaddingShow("正在处理..."); },
            success: function(xml) {
            var productData = $(xml).children("product");
            var present = $("#Present"+index);
            var sizeSelectBox = present.find("select").eq(1);
            sizeSelectBox.replaceWith(_tmpls.selectSize({index:index,sel:productData}));
            present.find("img").eq(0).attr("src", productData.attr("pic"));
            present.find(".price,.subtotal").text(_xml.find("Option[@id="+productId+"]").attr("price"));
            //TODO modify xml(can reuse <Selected> element) and rerender template(presentTmpl)
            },
            error: function(XMLHttpRequest) { if(DEBUG)debugger;alert("服务器内部错误！"); },
            complete: function(XMLHttpRequest) { LoaddingClose(); }
            });*/
        }
    }
    this.SeletePresentSize = function(index, sku) {  
        var state = _presentsState[index];
        state.SKU(sku); 
        if (state.IsOptional() && !state.IsInCart()) {  
            this.SaveCookie();
        }
        else {  
        //revertDeletedPresents.apply(this);
            this.SaveCookie();
            this.LoadData();
        }
    }
} //Cart

Cart.shoppingCarXml;
//处理数据
Cart.DealData = function() {
    Cart.DealCartInfo();
    Cart.DealProduct();
    Cart.DealPointProduct();
    Cart.DealOffProduct();
    Cart.DealSuit();
}
//处理购物车信息
Cart.UserPoints = 0;
Cart.ShoppingCarPoint = 0;
Cart.ShoppingCarGiftPoint = 0;
Cart.DealCartInfo = function() {
    var cartInfoXML = $(Cart.shoppingCarXml).find("CartInfo").eq(0);
    var totalAmount = parseFloat($(cartInfoXML).find("Amount").eq(0).text());
    var sumAmount = parseFloat($(cartInfoXML).find("sumAmount").eq(0).text());
    var totalCount = $(cartInfoXML).find("Count").eq(0).text();
    var discount = parseFloat($(cartInfoXML).find("Discount").eq(0).text());
    Cart.UserPoints = parseInt($(cartInfoXML).find("UserPoints").eq(0).text());
    Cart.ShoppingCarPoint = parseInt($(cartInfoXML).find("ShoppingCarPoints").eq(0).text());
    Cart.ShoppingCarGiftPoint = parseInt($(cartInfoXML).find("ShoppingCarGiftPoints").eq(0).text());
    var cartErrorInfo = $(cartInfoXML).find("CarErrorInfo").eq(0).text();
    var FreeFreightBalance = parseFloat($(cartInfoXML).find("FreeFreightBalance").eq(0).text());
    var Freight = parseFloat($(cartInfoXML).find("Freight").eq(0).text());
    if (cartErrorInfo != "") {
//        alert(cartErrorInfo);
        //location=location;
    }
    else {
		 
        if (discount > 0) { 
            $("#decspan").html("满减优惠：<span class=\"colSty tabSty02\">-￥</span><span class=\"colSty\" id=\"spDiscount\">0.00</span><br /><span class=\"fontSty01 \" ><b>产品金额总计(不含运费)：</b><span class=\"colSty\"><strong>￥</strong></span><strong><span class=\"colSty\" id=\"spRealTotalAmount\">0.00</span></strong></span><br /><span class=\"colSty9 tabSty02\" >合作活动满减优惠已均摊至小计中</span>");
//$("#decspan").html("活动优惠：<span class=\"colSty\">-￥</span><span class=\"colSty\" id=\"spDiscount\">0.00</span><br /><br />产品金额总计(不含运费)：<span class=\"colSty\">￥</span><span class=\"colSty\" id=\"spRealTotalAmount\">0.00</span><br />");
          //  $("#spTotalAmount").html(FormatDouble(sumAmount);)
            $("#spRealTotalAmount").html(FormatDouble(totalAmount));
            $("#spDiscount").html(FormatDouble(discount));
//            alert(totalAmount*userPointRate); 
            SetTransferTitle(FreeFreightBalance);//设置免运费提示
        }
        else {
            $("#decspan").html("产品金额总计(不含运费)：<span class=\"colSty tabSty02\">￥</span><span class=\"colSty\" id=\"spTotalAmount\">0.00</span>");
            $("#spTotalAmount").html(FormatDouble(sumAmount));   
             SetTransferTitle(FreeFreightBalance);
        }

        setShoppingCookie("ShoppingCarInfo", String(totalAmount) + "$" + String(totalCount), $(Cart.shoppingCarXml).find("Presents").attr("expires"));
        setShoppingCookie("ShoppingFreight", Freight, $(Cart.shoppingCarXml).find("Presents").attr("expires"));
        $("#spTotalCount").html(String(totalCount));
        $("#totalPoint").html(String(Cart.ShoppingCarPoint));
        $("#giftPoint").html(String(Cart.ShoppingCarGiftPoint));
        if (Cart.UserPoints > -1) {
            var needPoints = Cart.ShoppingCarPoint - Cart.UserPoints;
            if (needPoints > 0) {
                PointErrorConctrol(Cart.UserPoints, Cart.ShoppingCarPoint);
            } else { 
                ClosePointError();
            }
        }
        if (totalAmount == "0" && totalCount == "0") { 
            alert("您的购物车中没有商品！"); 
            backShoppingUrl("http://www.vancl.com"); 
        }
    }

} 
//处理产品数据(单品)
Cart.DealProduct = function() {

    var productXML = $(Cart.shoppingCarXml).find("ProductList").eq(0);
    for (var i = 0; i < $(productXML).find("ProductItem").length; i++) {
        var item = $(productXML).find("ProductItem").eq(i);
        var strAmountReadOnly = "";
        var productInfo = Cart.GetProductInfo(item);   
//        if (productInfo.SalesFlag == "2"&&productInfo.LimitFlag == "1") {
//            productInfo.ProductName += "（限时限量抢购）";
//        }
//        else
//        {
//            if (productInfo.LimitFlag == "1") {
//				productInfo.ProductName += "（限购品）";
//				//strAmountReadOnly = "disabled=\"disabled\" ";
//			}
//			if (productInfo.SalesFlag == "2") {
//				productInfo.ProductName += "（限时抢购）";
//			}
//        }

//       
//        //else 
//        if (productInfo.SalesFlag == "3") {
//            productInfo.ProductName += "（清仓品）";
//        }
        //var itemTotal=parseFloat(productInfo.oldPrice)*parseFloat(productInfo.Amount);
        
        var itemTotal = parseFloat(productInfo.Subtotal);
         
        var strRowspan = "";
        var strHeight = "";
        var promoteeRow = "";
        if (productInfo.PromoteeName != "") {
            var promoteeNames = productInfo.PromoteeName.split("#$");

            strHeight = "height=\"60\"";
            strRowspan = "rowspan=\"2\"";
            promoteeRow = "<tr id=\"trExplain\"><td height=\"34\" colspan=\"8\" align=\"left\"><div style=\"background:url(https://sslimg.vancl.com/NewVancl/New_Shopping/yhts.gif) no-repeat; width:855px; height:25px; line-height:25px;\" class=\"reusableColor4\">　" + promoteeNames + "</div></td></tr>>";
        }

        var str = "<tr>";
        str += "<td align=\"center\" class=\"tdSty01\" " + strRowspan + " valign=\"top\" ><div class=\"imgw\"><a href='" + productInfo.ProductInfoUrl + "' target='_blank'><img src='" + productInfo.ProductPhoto + "' width=\"48\" border='0' alt='"+productInfo.ProductName+"'></a></div></td>";
        var procN=productInfo.ProductName;
        var procName; 
        var lenL=220;
        if(procN.length>lenL)
        {  
            procName=procN.substring(0,lenL); 
            procName+="</br> "+procN.substring(lenL,procN.length);
        }
        else
        {
            procName=procN;
        }  
        str += "<td align=\"left\"valign=\"middle\" " + strHeight + "><a href='" + productInfo.ProductInfoUrl + "' target='_blank'><span class=\"STYLE5\">" + procName + "</span></a></td>";
        str += "<td align=\"center\"  ><span class=\"STYLE5\">" + productInfo.ProductSize + "</span></td>";
        str += "<td align=\"center\"><span id=\"GivenPoint\">" + productInfo.GivenPoint+ "</span></td>";
        str += "<td align=\"center\">￥<span id=\"" + productInfo.ClothesCode + "\">" + productInfo.oldPrice + "</span></td>"; 
        str += "<td align=\"center\">";


        str += "<input type='text' " + strAmountReadOnly + " name='OrderAmount_" + productInfo.ClothesCode + "' id='OrderAmount_" + productInfo.ClothesCode + "' maxlength='3'  onchange=\"changeSuccess=false;EditProductCount('" + productInfo.ClothesCode + "','"+productInfo.Amount +"',this)\" onkeypress=\" if((arguments[0] || window.event).keyCode==13){this.blur(); return false;}\"   style=\"width:20px;height:15px;color:#4B4B4B;\"   value='" + productInfo.Amount + "'>";
        str += "</td>";    
        
        str += "<td align=\"center\"><span id=\"vipDiscount\">" + productInfo.vipDiscount+ "</span></td>";
        str += "<td align=\"center\">￥<span id=\"Pdt_price" + productInfo.ClothesCode + "\">" + FormatDouble(itemTotal) + "</span></td>";
        str += "<td align=\"center\"><a   href=\"javascript:DeleteProduct('" + productInfo.ClothesCode + "'," + productInfo.Amount + ");\">删除</a></td>";
        str += "<td width=\"12px\"></td>";
        str += "</tr>";
        str += promoteeRow;
        ShoppingCarHtml.ProductHtml[ShoppingCarHtml.ProductHtml.length] = str;

    }
    $("#productList").html(ShoppingCarHtml.ProductHtml.join(""));
}
//单品数据实例
Cart.GetProductInfo = function(productItemXML) {
    var productInfo = new ProductInfo();
    productInfo.ProductCode = $(productItemXML).find("ProductCode").eq(0).text();
    productInfo.ClothesCode = $(productItemXML).find("ClothesCode").eq(0).text();
    productInfo.ProductInfoUrl = $(productItemXML).find("ProductInfoUrl").eq(0).text();
    productInfo.ProductPhoto = $(productItemXML).find("ProductPhoto").eq(0).text();
    productInfo.ProductName = $(productItemXML).find("ProductName").eq(0).text();
    productInfo.PromoteeName = $(productItemXML).find("PromoteeName").eq(0).text();
    productInfo.Amount = $(productItemXML).find("Amount").eq(0).text();
    productInfo.Price = $(productItemXML).find("Price").eq(0).text();
    productInfo.oldPrice = $(productItemXML).find("OldPrice").eq(0).text();
    productInfo.Subtotal = $(productItemXML).find("Subtotal").eq(0).text();
    productInfo.ProductSize = $(productItemXML).find("ProductSize").eq(0).text();
    productInfo.PromoteeID = $(productItemXML).find("PromoteeID").eq(0).text();
    productInfo.ProductCodesAndCateIds = $(productItemXML).find("ProductCodesAndCateIds").eq(0).text();
    productInfo.CateId = $(productItemXML).find("CateId").eq(0).text();
    productInfo.Points = $(productItemXML).find("Points").eq(0).text();
    productInfo.Limit = $(productItemXML).find("Limit").eq(0).text();
    productInfo.LimitFlag = $(productItemXML).find("LimitFlag").eq(0).text();
    productInfo.SalesFlag = $(productItemXML).find("SalesFlag").eq(0).text();     
    productInfo.vipDiscount=$(productItemXML).find("VIPdiscount").eq(0).text();
    productInfo.GivenPoint=$(productItemXML).find("GivenPoint").eq(0).text();
    
    if(productInfo.vipDiscount=="0.00"||productInfo.vipDiscount=="")
    productInfo.vipDiscount ="-" ; 
    return productInfo;
}
///下架商品处理
Cart.DealOffProduct = function() {
    var ostr = "";
    var sstr = "";
    var offproductXML = $(Cart.shoppingCarXml).find("OffProductList").eq(0);
    for (var i = 0; i < $(offproductXML).find("OffProductItem").length; i++) {
        var Offitem = $(offproductXML).find("OffProductItem").eq(i);

        ostr += "   <div class=\"NOproductLeft\" " + (i == $(offproductXML).find("OffProductItem").length - 1 ? "" : "style=border-bottom:none;") + ">";
        ostr += "       <div class=\"colArea\">";
        ostr += "        <span class=\"blank10\"></span>";
        ostr += "       <div class=\"productImg\"><a href=\"" + Offitem.find("ProductInfoUrl").text() + "\" target=\"_blank\"><img src=\"" + Offitem.find("ProductPhoto").text() + "\" /></a></div>";
        ostr += "       <div class=\"productName\"><a href=\"" + Offitem.find("ProductInfoUrl").text() + "\">" + Offitem.find("ProductName").text() + "</a></div>";
        ostr += "       <div class=\"productSize\">" + Offitem.find("ProductSize").text() + "</div>";
        ostr += "         <span class=\"blank10\"></span>";
        ostr += "       </div>";
        ostr += "   </div>";

    }
    if (ostr != "") {

        sstr += "<span class=\"blank15\"></span>";
        sstr += "<span class=\"blank15\"></span>";
        sstr += "<div><img src=\"https://sslimg.vancl.com/Newvancl/shopping/NObuyTag.jpg\" onclick=\"$(this).hide('slow');\" target=\"_blank\"></div>";
        sstr += "<span class=\"blank15\"></span>";
        sstr += "<div class=\"NOpuoductArea\">";
        sstr += ostr;
        sstr += "</div>";

    }
    $("#OffProductList").html(sstr);

}
//处理积分换购产品数据
Cart.DealPointProduct = function() {

    var productXML = $(Cart.shoppingCarXml).find("PointProductList").eq(0);
    for (var i = 0; i < $(productXML).find("ProductItem").length; i++) {
        var item = $(productXML).find("ProductItem").eq(i);
        var strAmountReadOnly = "";
        var productInfo = Cart.GetProductInfo(item); 
//        if (productInfo.Limit == "1") {
//            productInfo.ProductName += "（限购品）";
//            //strAmountReadOnly = "disabled=\"disabled\" ";
//        }
//        else if (productInfo.SalesFlag == "3") {
//            productInfo.ProductName += "（清仓品）";
//        }
        //var itemTotal=parseFloat(productInfo.oldPrice)*parseFloat(productInfo.Amount);
      
        var itemTotal = parseFloat(productInfo.Subtotal);
        var points = productInfo.Points;
        var pointsTotal = parseInt(productInfo.Points) * parseInt(productInfo.Amount);
        var strRowspan = "";
        var strHeight = "";
        var promoteeRow = "";

        if (productInfo.PromoteeName != "") {
            var promoteeNames = productInfo.PromoteeName.split("#$");

            strHeight = "height=\"60\"";
            strRowspan = "rowspan=\"2\"";
            promoteeRow = "<tr id=\"trExplain\"><td height=\"34\" colspan=\"6\" align=\"left\"><div style=\"background:url(https://sslimg.vancl.com/NewVancl/New_Shopping/yhts.gif) no-repeat; width:800px; height:25px; line-height:25px;\" class=\"reusableColor4\">　" + promoteeNames + "</div></td></tr>";
        }

        var str = "<tr>";
        str += "<td align=\"center\" class=\"tdSty01\" " + strRowspan + " valign=\"top\" ><div class=\"imgw\"><a href='" + productInfo.ProductInfoUrl + "' target='_blank'><img src='" + productInfo.ProductPhoto + "' alt='" + productInfo.ProductName + "' width=\"48\" border='0'></a></div></td>";
        str += "<td align=\"left\" valign=\"middle\" " + strHeight + "><a href='" + productInfo.ProductInfoUrl + "' target='_blank'><span class=\"STYLE5\">" + productInfo.ProductName + "</span></a></td>";
        str += "<td align=\"center\"><span class=\"STYLE5\">" + productInfo.ProductSize + "</span></td>";
        str += "<td align=\"center\"><span id=\"GivenPoint\">" +productInfo.GivenPoint+ "</span></td>";
        str += "<td align=\"center\">￥<span id=\"" + productInfo.ClothesCode + "\">" + FormatDouble(productInfo.oldPrice) + "</span></td>";
        str += "<td align=\"center\">";
       
        str += "<input type='text' " + strAmountReadOnly + " name='PointOrderAmount_" + productInfo.ClothesCode + "' id='PointOrderAmount_" + productInfo.ClothesCode + "' maxlength='3'  onchange=\"changeSuccess=false;EditPointProductCount('" + productInfo.ClothesCode + "','"+productInfo.Amount +"',this)\" onkeypress=\" if((arguments[0] || window.event).keyCode==13){this.blur(); return false;}\"   style=\"width:20px;height:15px;color:#4B4B4B;\" value='" + productInfo.Amount + "'>";
        
        str += "</td>";
        
        str += "<td align=\"center\"><span id=\"vipDiscount\">" +productInfo.vipDiscount+ "</span></td>";
        str += "<td align=\"center\">￥<span id=\"Pdt_price" + productInfo.ClothesCode + "\">" + FormatDouble(itemTotal) + "</span><span>+" + pointsTotal + "积分</span></td>";
        str += "<td align=\"center\"><a href=\"javascript:DeletePointProduct('" + productInfo.ClothesCode + "'," + productInfo.Amount + ");\">删除</a></td>";
        str += "<td width=\"12px\"></td>";
        str += "</tr>";
        str += promoteeRow;
        ShoppingCarHtml.PointProductHtml[ShoppingCarHtml.PointProductHtml.length] = str;

    }
    $("#pointProductList").html(ShoppingCarHtml.PointProductHtml.join(""));
}
//处理套装数据
Cart.DealSuit = function() {
    var suitXML = $(Cart.shoppingCarXml).find("SuitList").eq(0); 
    for (var i = 0; i < $(suitXML).find("SuitItem").length; i++) {
        var item = $(suitXML).find("SuitItem").eq(i);
        var suitInfo = Cart.GetSuitInfo(item);
        var str = "";
        var boolLimit=0;
        var boolFlag=0; 
        var limitSalesSuitlag=""; 
        boolLimit=suitInfo.SuitCodeLimit;
        boolFlag=suitInfo.LimitFlag;
        if(boolLimit=="1")
        {
            limitSalesSuitlag="(限时限量抢购)";
        } 
        str += "<tr>";
        str += "<td rowspan=\"3\" align=\"center\" valign=\"top\" class=\"tdSty01\"><div class=\"imgw\"><a href='" + suitInfo.SuitInfoUrl + "' target='_blank'><img src=\"" + suitInfo.SuitPhoto + "\" width=\"48\" alt='" + suitInfo.SuitName +limitSalesSuitlag+"'  border='0'></a></div></td>";
        str += "<td  style=\"padding:16px 0px 17px 0px;\" align=\"left\"><a href='" + suitInfo.SuitInfoUrl + "' target='_blank'><span class=\"STYLE5\">" + suitInfo.SuitName +limitSalesSuitlag+"</span></a></td>";
        str += "<td align=\"left\" >&nbsp;</td>";
        str += "<td align=\"center\">&nbsp;</td>"; 
        str += "<td align=\"center\">￥<span>" + suitInfo.DefinedPrice + "</span></td>";
        str += "<td align=\"center\">&nbsp;</td>";
        str += "<td align=\"center\">-</td>";
        str += "<td align=\"center\"><span>￥" + FormatDouble(suitInfo.Price) + "</span></td>";
        str += "<td align=\"center\">&nbsp;</td>"; 
        str += "<td width=\"12px\"></td>";
        str += "</tr>";
        var suitProduct = $(item).find("Product").eq(0);
       str += "<tr >";
       var str1="";
       var str2="";
       var strName="";
       var strSize="";
       var strAmont="";
       var strBr="<br>";
       var strGivenPoint="";
       for (var j = 0; j < $(suitProduct).find("Item").length; j++) {
            var productItemXML = $(suitProduct).find("Item").eq(j);
            var productInfo = Cart.GetProductInfo(productItemXML);
            
           if(j==0)
           { 
               var suitCookie = Cart.GetSuitCookieStr(suitProduct);
               str1="<strong><span class=\"tzmx\"  >套装明细：</span></strong>";
               str2="<a href=\"javascript:EditSelfSuit('" + suitInfo.SuitCode + "','" + suitInfo.IntRow + "','" + suitCookie + "');\">  修改</a>&nbsp;<font class='detail'>|</font>&nbsp;<a href=\"javascript:DeleteSuit('" + suitInfo.SuitCode + "','" + suitInfo.IntRow + "');\">删除</a>";
           }
           strName+="<tr><td><a href='" + productInfo.ProductInfoUrl + "' target='_blank'><span class=\"STYLE5\">" + productInfo.ProductName + "</span></a></td></tr>";
           strSize+="<br><span>" + productInfo.ProductSize + "</span>";
           strAmont+="<br>"+productInfo.Amount+"";
           strBr+="<br>";
           strGivenPoint+="<br>"+productInfo.GivenPoint;
          } 
                
                str += "<td align=\"left\" class=\"suitTdStrStart\"><table><tr><td class=\"suitTdStrStart1\"> "+str1+"</td></tr>"+strName+"</table></td>";
                str += "<td align=\"center\" class=\"suitTdStr\">"+strSize+"</td>";
        str += "<td class=\"suitTdStr\" align=\"center\"><span id=\"GivenPoint\">" +strGivenPoint+ "</span></td>";
                str += "<td class=\"suitTdStr\">&nbsp;</td>";
                str += "<td class=\"suitTdStr\" align=\"center\">"+strAmont+"</td>";
                str += "<td class=\"suitTdStr\">&nbsp;</td>";
                str += "<td class=\"suitTdStr\">&nbsp;</td>";
                str += "<td class=\"suitTdStrEnd\" align=\"center\">"+str2+strBr+"</td>";
                str += "<td class=\"suitTdStr1\"></td>";
//                str+="<br>";
//         str += "<td height=\"12px\"></td>";
          
//            str += "<td class=\"suitTd\"><a href='" + productInfo.ProductInfoUrl + "' target='_blank'><span class=\"STYLE5\">" + productInfo.ProductName + "</span></a></td>";
//            str += "<td ><span>" + productInfo.ProductSize + "</span></td>";
//            str += "<td align=\"left\">" + productInfo.Amount + "</td>";
//            str += "<td>&nbsp;</td>";
//            str += "<td>&nbsp;</td>";
//            str += "";

        
str += "</tr>";

         str += "<tr><td height=\"10px\"></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>";
        ShoppingCarHtml.SuitHtml[ShoppingCarHtml.SuitHtml.length] = str;
    }
    $("#suitList").html(ShoppingCarHtml.SuitHtml.join(""));
}
//已添加的套装字符串
Cart.GetSuitCookieStr = function(suitProduct) {
    var suitProductCookie = "";
    for (var j = 0; j < $(suitProduct).find("Item").length; j++) {
        var productItemXML = $(suitProduct).find("Item").eq(j);
        var productInfo = Cart.GetProductInfo(productItemXML);
        if (suitProductCookie != "") {
            suitProductCookie += "$";
        }
        suitProductCookie += productInfo.ClothesCode + "|" + productInfo.Amount + "|" + productInfo.CateId;
    }
    return suitProductCookie;
}
//套装信息实例
Cart.GetSuitInfo = function(suitItemXML) {
    var suitInfo = new SuitInfo();
    suitInfo.SuitCode = $(suitItemXML).find("SuitCode").eq(0).text();
    suitInfo.SuitName = $(suitItemXML).find("SuitName").eq(0).text();
    suitInfo.SuitPhoto = $(suitItemXML).find("SuitPhoto").eq(0).text();
    suitInfo.Price = $(suitItemXML).find("Price").eq(0).text(); 
    suitInfo.DefinedPrice = $(suitItemXML).find("DefinedPrice").eq(0).text();
    suitInfo.rechPrice = $(suitItemXML).find("rechPrice").eq(0).text();
    suitInfo.IntRow = $(suitItemXML).find("IntRow").eq(0).text();
    suitInfo.SuitInfoUrl = $(suitItemXML).find("SuitInfoUrl").eq(0).text();
    suitInfo.SuitCodeLimit = $(suitItemXML).find("SuitCodeLimit").eq(0).text();
    suitInfo.LimitFlag = $(suitItemXML).find("LimitFlag").eq(0).text();
    return suitInfo;
}



//shoppingcar字符串
var ShoppingCarHtml = function() { }
ShoppingCarHtml.ProductHtml = new Array();
ShoppingCarHtml.PointProductHtml = new Array();
ShoppingCarHtml.SuitHtml = new Array();

ShoppingCarHtml.Clear = function() {
    ShoppingCarHtml.ProductHtml = new Array();
    ShoppingCarHtml.PointProductHtml = new Array();
    ShoppingCarHtml.SuitHtml = new Array();
}

//产品信息类
function ProductInfo() {
    this.ProductCode = "";
    this.ClothesCode = "";
    this.ProductInfoUrl = "";
    this.ProductPhoto = "";
    this.ProductName = "";
    this.PromoteeName = "";
    this.Price = 0;
    this.Amount = 1;
    this.ProductSize = "";
    this.PromoteeID = "";
    this.ProductCodesAndCateIds = "";
    this.CateId = "";
    this.Points = "";
    this.Limit = 0;
    this.SalesFlag = 0;
}
//套装产品信息类
function SuitInfo() {
    this.SuitCode = "";
    this.SuitName = "";
    this.SuitPhoto = "";
    this.Price = 0;
    this.IntRow = 0;
    this.SuitInfoUrl = "";
}

//设置购物车行颜色
Cart.ChangeTrBgColor = function() {
    var productIndex = 1;
    var nonPresentProductIndex = 1;
    $("#productList").children().each(function(i, row) {
        if ($(row).attr("id") != "trExplain") {
            productIndex++;
        }
        ChangBgColor(productIndex, row);
    });
    $("#pointProductList").children().each(function(i, row) {
        if ($(row).attr("id") != "trExplain") {
            productIndex++;
        }
        ChangBgColor(productIndex, row);
    });
    $("#suitList").children().each(function(i, row) {
        if (i % 3 == 0) {
            productIndex++;
        }
        ChangBgColor(productIndex, row);
    });
    $("#mustPresentList").children().each(function(i, row) {
        if (i % 2 == 0) {
            productIndex++;
        }
        ChangBgColor(productIndex, row);
    });
    $("#notMustPresentList").children().each(function(i, row) {
        if (i % 2 == 0) {
            productIndex++;
        }
        ChangBgColor(productIndex, row);
    });
    $("#nonPresentList").children().each(function(i, row) {
        if (i % 2 == 0) {
            nonPresentProductIndex++;
        }
        ChangBgColor(nonPresentProductIndex, row);
    });
    function ChangBgColor(i, row) {
        if (i % 2 == 0) {
            $(row).children().each(function(i, td) {
            $(td).addClass();
            })
        }
        else {
            $(row).children().each(function(i, td) {
                $(td).addClass("gwcSuit");
            })
        }
    }
}
function PointErrorConctrol(myPoint, needPoint) {
    GoToTop();
    $("#myPointNumber").html(String(myPoint));
    $("#needPointNumber").html(String(needPoint));
    $("#divPointError").slideDown("slow");
}
function ClosePointError() {
    $("#divPointError").slideUp("slow");
}
//设置头部免运费提示
function SetTransferTitle(FreeFreightBalance)
{
     var title=""; 
	 if(FreeFreightBalance>0)
	 {
	     title = "您再购买	<span class='colSty'>￥" + FormatDouble(FreeFreightBalance) + "</span>	的产品，即可享受全场购物满59元免运费优惠";
	 } 
	 else if(FreeFreightBalance==0)	
	 {
	     title = "您目前可享受全场购物满59元免运费优惠";
	 }
	  $("#transferSpan").html(String(title));
	 
}
var cart;


function LoadSetPesent() {
    var Pesent_ = $("#leavelNotMustPresentLsit span[@id*=_Size_]");
    if (Pesent_.length > 0) {
        for (var i = 0; i < Pesent_.length; i++) {
            var ind = $(Pesent_[i]).attr("id");
            var idboj = ind.split("_");
            cart.SeletePresentSize(idboj[3], $(Pesent_[i]).find("select").val());
        }

    }

}