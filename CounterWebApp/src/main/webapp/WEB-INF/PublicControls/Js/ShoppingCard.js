
var cddoc;
var cardcookie;
function createXMLHTTPRequest(objct) {
    if (window.XMLHttpRequest) { //Mozilla
        objct = new XMLHttpRequest();
        if (objct.overrideMimeType) {
            objct.overrideMimeType("text/xml");
        }
    } else if (window.ActiveXObject) { //IE
        try {
            objct = new ActiveXObject("Msxml2.XMLHTTP");
        } catch (e) {
            try {
                objct = new ActiveXObject("Microsoft.XMLHTTP");
            } catch (e) { }
        }
    }
    return objct;
}
function LoadedComment() {
    var txt = "";
    var t_string = 0;
    var boolb = "";
    if (cddoc.readyState == 4) {
        if (cddoc.status == 200) {
            var CardID = "";
            var NewMoney = 0.0;
            var UserMoney = 0.0;
            var CardIDPassWord = "";
            var CardTypeValue;
            var bi = cddoc.responseText;
            var bol = "";
            if (bi != null && bi.length > 0) {
                var ProductInfo = bi.split("$");
                CardID = ProductInfo[0];
                NewMoney = ProductInfo[1];
                UserMoney = ProductInfo[2];
                CardIDPassWord = ProductInfo[3];
                CardTypeValue = ProductInfo[6];
                bol = ProductInfo[7];
                var UserMoney_ = $("#LabelNewMoney").html();
                if (parseInt(UserMoney) > 0 && parseInt(ProductInfo[4]) == 1) {
                    setCardCookie(CardID, CardIDPassWord, NewMoney, CardTypeValue);
                    SetOrderSplitCardPay(ProductInfo[8]);
                } else {
                    txt = "<div class=\"Carddiv\">";
                    txt += "<span class=\"CardPayword\">" + ProductInfo[5] + "，验证失败</span>";
				    txt +="<br><img src=\"/Images/Shopping/button_cancl.gif\" onclick=\"cance()\" style=\"margin-top:8px;\"  >";
				    txt += "</div>";
                }
            } else {
                txt = "<div class=\"Carddiv\">";
                txt += "<span class=\"CardPayword\">对不起，该卡无效</span>";
                txt += "<br><img src=\"/Images/Shopping/button_cancl.gif\" onclick=\"cance()\" style=\"margin-top:8px;\" >";
                txt += "</div>";
            }
        } else {
            txt = "<div class=\"Carddiv\">";
            txt += "<span class=\"CardPayword\">对不起，该卡无效</span>";
            txt += "<br><img src=\"/Images/Shopping/button_cancl.gif\" onclick=\"cance()\" style=\"margin-top:8px;\" >";
            txt += "</div>";
        }
    }
    if (txt != "") {
        Intro_x = document.getElementById("Card_String");
        Intro_x.innerHTML = txt;
    }

}
//礼品卡分摊
function SetOrderSplitCardPay(ProductInfo) {
    var ordersplittarm = $("td[@name=ordersplitatarm]");
    if (ordersplittarm.length > 0) {
        if (ProductInfo != null && ProductInfo != "") {
            var OrderFormMoney = 0.0;
            var CarpayM = 0.0;
            var AllBanlMoney = 0.0;
            var CardInfo = ProductInfo.split('|');
            for (var i = 0; i < CardInfo.length; i++) {
                var Orderlist = CardInfo[i].split(',');
                if (Orderlist.length > 1) {
                    var CardPayMoney = parseFloat(Orderlist[1]);
                    CarpayM += CardPayMoney;
                    var TraMoney = parseFloat($("#TraMoney" + Orderlist[0]).html());
                    var NewMoney = parseFloat($("#NewMoney" + Orderlist[0]).html());
                    var UserBankprice = parseFloat($("#UserBankprice" + Orderlist[0]).html());
                    var CollectMoney = parseFloat($("#CollectMoney" + Orderlist[0]).html());
                    $("#CardPayMoney" + Orderlist[0]).html(CardPayMoney.toFixed(2));
                    var dd = CollectMoney - Orderlist[1];
                    if (dd < 0) {
                        $("#UserBankprice" + Orderlist[0]).html(parseFloat(parseInt(NewMoney + TraMoney) - CardPayMoney).toFixed(2));
                        dd = 0;
                    }
                    $("#CollectMoney" + Orderlist[0]).html(String(dd.toFixed(2)));
                    AllBanlMoney += parseFloat($("#UserBankprice" + Orderlist[0]).html());
                    OrderFormMoney += dd;
                }
            }
            //订单总金额
            $("#OrderFormMoney").html(OrderFormMoney.toFixed(2));
            //礼品卡支付的金额
            $("#userpaidprice").html(CarpayM.toFixed(2));
            //虚拟账户的金额
            $("#userBankprice").html(AllBanlMoney.toFixed(2));
            //hidden BankMoney
            $("#BankMoney").val(AllBanlMoney.toFixed(2));
        }
    } else {
       
    }

}

function CancelOrderSplitCardPay() {

    var ordersplittarm = $("td[@name=ordersplitatarm]");
    if (ordersplittarm.length > 0) {
        var OrderFormMoney = 0.0;
        for (var i = 0; i < ordersplittarm.length; i++) {
            var CollectMoney = parseFloat($(ordersplittarm[i]).find("span[@id^=CollectMoney]").eq(0).html());
            var CardPayMoney = parseFloat($(ordersplittarm[i]).find("span[@id^=CardPayMoney]").eq(0).html());
            var TraMoney = parseFloat($(ordersplittarm[i]).find("span[@id^=TraMoney]").eq(0).html());
            var NewMoney = parseFloat($(ordersplittarm[i]).find("span[@id^=NewMoney]").eq(0).html());
            var hiddemoney = parseFloat($(ordersplittarm[i]).find("input[@id^=hiddenBankprice]").val());
            $(ordersplittarm[i]).find("span[@id^=CollectMoney]").eq(0).html((parseInt(TraMoney + NewMoney) - hiddemoney).toFixed(2));
            $(ordersplittarm[i]).find("span[@id^=CardPayMoney]").html("0.00");
            $(ordersplittarm[i]).find("span[@id^=UserBankprice]").html(hiddemoney.toFixed(2));
            OrderFormMoney += parseInt(TraMoney + NewMoney);
        }
        var userBankprice = parseFloat($("#BankMoneyBak").val());
        //订单总金额
        $("#OrderFormMoney").html((OrderFormMoney - (userBankprice > 0 ? userBankprice : 0)).toFixed(2));

    }
    var OrderMoney = parseFloat($("#OrderMoney").val());
    var OrderFormMoney = parseFloat($("#OrderFormMoney").html());
    var CardPayMoney = parseFloat($("#userpaidprice").html())
    var userBankprice = parseFloat($("#BankMoneyBak").val());
    //礼品卡的金额
    $("#userpaidprice").html("0.00");
    //虚拟账户的金额
    if (ordersplittarm.length <= 0) $("#OrderFormMoney").html((OrderMoney - userBankprice).toFixed(2));
    if (userBankprice > 0) $("#userBankprice").html(userBankprice.toFixed(2));
    $("#BankMoney").val(userBankprice);


}
//优惠了多少元（满多少减多少）
function DecPrice(NewMoney) {
    var DecPrice;
    var Url = "/Product/xmldata/Dec_Add_Price.aspx?NewMoney=" + NewMoney;
    $.ajax({
        url: Url,
        cache: false,
        async: false,
        datatype: "xml",
        contentType: "text/xml",
        success: function(data) {
            if (data != null) {
                DecPrice = $(data).find("DecPrice").text();
                return DecPrice;
            }
        }
    });
    return DecPrice;

}
//获得用户积分系数
function GetPointRate() {
    var Rate = 1.0;
    var Url = "/Product/xmldata/GetPointRate.aspx";
    $.ajax({
        url: Url,
        cache: false,
        async: false,
        datatype: "xml",
        contentType: "text/xml",
        success: function(data) {
            if (data != null) {
                if ($(data).find("Rate").length > 0) Rate = parseFloat($(data).find("Rate").text());
            }
        }
    });
    return Rate;
}
function GetCardType(CardID) {
    var Rate = 1.0;
    var Url = "/Product/xmldata/GetPointRate.aspx?CardID=" + CardID;
    $.ajax({
        url: Url,
        cache: false,
        async: false,
        datatype: "xml",
        contentType: "text/xml",
        success: function(data) {
            if (data != null) {
                if ($(data).find("CardType").length > 0) Rate = parseFloat($(data).find("Rate").text());
            }
        }
    });
    return Rate;
}
function GetSalesFlag() {
    var SalesFlag = 0.0;
    var Url = "/Product/xmldata/SelectProduct_SalesFlag.aspx";
    $.ajax({
        url: Url,
        cache: false,
        async: false,
        datatype: "xml",
        contentType: "text/xml",
        success: function(data) {
            if (data != null) {
                if ($(data).find("SalesFlag").length > 0) SalesFlag = parseInt($(data).find("SalesFlag").text());
                return SalesFlag;
            }
        }
    });
    return SalesFlag;
}

//获得礼品卡的属性
function Getcard() {

}
//选择礼品包装
function Packprice() {
    var Pichtml = document.getElementById('Pichtml').innerHTML;
    if (Pichtml == '') {
        document.getElementById('Pichtml').innerHTML = "礼品包装费：   <span id=\"PicMoney\">20</span>元<br>";
        var OrderFormMoney = document.getElementById('OrderFormMoney');
        OrderFormMoney.innerHTML = (parseFloat(OrderFormMoney.innerHTML) + 20.0);
    }

}
//取消礼品包装
function Packprices() {
    var Pichtml = document.getElementById('Pichtml').innerHTML;
    if (Pichtml.trim() != '') {
        document.getElementById('Pichtml').innerHTML = '';
        var OrderFormMoney = document.getElementById('OrderFormMoney');
        OrderFormMoney.innerHTML = (parseFloat(OrderFormMoney.innerHTML) - 20.0);
    }
}
//屏蔽礼品包装
function ClosePackselect() {
    var picNotice = document.getElementById('picNotice');
    var Invoice = document.getElementById('Pack');
    picNotice.innerHTML = '<font color=\'ff0000\'>您选择的城市不提供礼品包装服务，抱歉!</font><br>';
    //Invoice.disabled ='disabled';
}

//使用礼品卡
function PaidCard() {
    var Myform = document.getElementById("Myform");
    var CardID = Myform.CardID.value;
    var CardPassWord = Myform.CardPassWord.value;
    var UserID = document.getElementById("UserID").getAttribute("value");
    var UserMoney = document.getElementById("OrderMoney").getAttribute("value");
    var TraMoney = document.getElementById("TraPayMoney").getAttribute("value");
    if (CardID != "" && CardPassWord != "" && CardID.length>2) {
        LoadCommandDoc(CardID, CardPassWord, UserMoney, UserID, TraMoney);
    } else {
        var txt = "<div class=\"Carddiv\">";
        txt += "<span class=\"CardPayword\">请输入正确卡号和密码</span>";
        txt += "<br><img src=\"/Images/Shopping/button_cancl.gif\" onclick=\"cance()\" style=\"margin-top:8px;\"  >";
        txt += "</div>";
        $("#Card_String").html(txt);
    }
}
//提交订单时自动验证、使用
function SubmitPaidCard() {
    var Myform = document.getElementById("Myform");
    var CardID = Myform.CardID.value;
    var CardPassWord = Myform.CardPassWord.value;
    var UserID = document.getElementById("UserID").getAttribute("value");
    var UserMoney = document.getElementById("OrderMoney").getAttribute("value");
    var TraMoney = document.getElementById("TraPayMoney").getAttribute("value");
    var DecPrice;
    var Url = "/Product/xmldata/ShoppingCard.aspx?CardID=" + CardID + "&CardPassWord=" + CardPassWord + "&UserMoney=" + UserMoney + "&UserID=" + UserID + "&TraMoney=" + TraMoney;
    $.ajax({
        url: Url,
        cache: false,
        async: false,
        datatype: "xml",
        contentType: "text/xml",
        success: function(data) {
            var bi = data;
            if (bi != null && bi.length > 0) {
                var ProductInfo = bi.split("$");
                var CardID = ProductInfo[0];
                var NewMoney = ProductInfo[1];
                var UserMoney = ProductInfo[2];
                var CardIDPassWord = ProductInfo[3];
                var CardTypeValue = ProductInfo[6];
                var bol = ProductInfo[7];
                var UserMoney_ = $("#LabelNewMoney").html();
                if (parseInt(UserMoney) > 0 && parseInt(ProductInfo[4]) == 1) {
                    setCardCookie(CardID, CardIDPassWord, NewMoney, CardTypeValue);
                    SetOrderSplitCardPay(ProductInfo[8]);
                } else {
                    txt = "<div class=\"Carddiv\">";
                    txt += "<span class=\"CardPayword\">" + ProductInfo[5] + "</span>";
                    txt += "<br><img src=\"/Images/Shopping/button_cancl.gif\" onclick=\"cance()\" style=\"margin-top:8px;\"  >";
                    txt += "</div>";
                    $("#Card_String").html(txt);
                }

            }
        }
    });

}
//有68元商品，屏蔽礼品卡的使用
function check68closecard() {
    Intro_x = eval("Card_String");
    Intro_x.innerHTML = "对不起，你已经买了我们68元或者88元的促销品,不能再使用礼品卡,请您谅解!";
    var Url = "/Product/xmldata/ShoppingCardCookie.aspx?CardID=11111&CardPassWord=00000&UserMoney=0&settrue=no";
    cardcookie.load(Url);


}
//从服务器短检查确认用户使用礼品卡
function ServerCardPay(CardInfo) {
    var ServerCard = CardInfo.split("$");
    if (ServerCard.length > 3) {
        var Intro_x;
        var UserMoney_ = $("#LabelNewMoney").html();
        var TraMoney = $("#TraMoney").html();
        var decprices = 0.0;
        var TraMoney = $("#LabelTraMoney").html();
        var Intro_x = document.getElementById("Card_String");
        var UserID = $("#UserID").attr("value");
        LoadCommandDoc(ServerCard[1], ServerCard[2], ServerCard[3], UserID, TraMoney);
        ControlImg($("#CardControl"), 'Card_String');

    }
}
//确认用户使用礼品卡时set Cookie
function setCardCookie(CardID, CardPassWord, Money, CardTypeValue) {
    var Url = "/Product/xmldata/ShoppingCardCookie.aspx?CardID=" + CardID + "&CardPassWord=" + CardPassWord + "&UserMoney=" + Money + "&settrue=yes&CardTypeValue=" + CardTypeValue;
    $.ajax({
        url: Url,
        cache: false,
        async: false,
        datatype: "xml",
        contentType: "text/xml",
        success: function(data) { }
    });
    Intro_x = document.getElementById("Card_String");
    Intro_x.innerHTML = "<div class=\"Carddiv\"><span class=\"CardPayword\">礼品卡使用成功,能为你抵消货款<strong style=\"color:#A10000\">" + Money +
    "</strong>元</span><br/><img src=\"/Images/Shopping/button_cancl.gif\" style='CURSOR: hand;margin-top:8px;'  onclick=\"CardCence('" + CardID + "','" + CardPassWord + "','" + Money + "')\"></div>";

    var OrderFormMoney = parseFloat($("#OrderMoney").val());
    var userBankprice = parseFloat($("#userBankprice").html());
    if (userBankprice > 0 && userBankprice + parseFloat(Money) > OrderFormMoney) {
        userBankprice = parseFloat(OrderFormMoney - parseFloat(Money));
    }
    //减去礼品卡支付的金额，其他支付金额还剩多少
    var addMoney = (OrderFormMoney - Money - userBankprice < 0 ? 0.0 : OrderFormMoney - Money - userBankprice);

    //订单总金额
    $("#OrderFormMoney").html((addMoney).toFixed(2));
    //礼品卡支付的金额
    $("#userpaidprice").html(parseFloat(Money).toFixed(2));
    //虚拟账户的金额

    $("#userBankprice").html((userBankprice).toFixed(2));
    //hidden BankMoney
    if (userBankprice > 0) $("#BankMoney").val((userBankprice).toFixed(2));


}
//取消礼品卡的支付
function CardCence(CardID, CardPassWord, Money) {
    var Cards = "<div class=\"comBg\" id=\"Card_String\">";
    Cards += "<h2>您有礼品卡吗？</h2>";
    Cards += "<div class=\"lipinCard\">";
    Cards += "<div class=\"lipinCardLeft\">卡号：</div>";
    Cards += "<div class=\"lipinCardRight\"><input type=\"text\" class=\"Fpassword\" name=\"CardID\" id=\"CardID\"></div>";
    Cards += "</div>";
    Cards += "<span class=\"blank10\"></span>";
    Cards += "<div class=\"lipinCard\">";
    Cards += "<div class=\"lipinCardLeft\">密码：</div>";
    Cards += "<div class=\"lipinCardRight\"><input type=\"password\" class=\"Fpassword\" name=\"CardPassWord\" id=\"CardPassWord\"><input type=\"button\" class=\"yanzhengBtn\" onclick=\"PaidCard();\" value=\"验 证\"></div>";
    Cards += "</div>";
    var cardschar = document.getElementById("Card_String");
    cardschar.innerHTML = Cards;
    var Url = "/Product/xmldata/ShoppingCardCookie.aspx?CardID=" + CardID + "&CardPassWord=" + CardPassWord + "&UserMoney=" + Money + "&settrue=no";
    cardcookie = createXMLHTTPRequest(cardcookie);
    cardcookie.open('GET', Url, true);
    cardcookie.send(null);
    CancelOrderSplitCardPay();
    // $("#userpoint").html(parseInt(userpaymoney)*Rate);
    //openInvoice();
}
//虚拟帐户
function Bankpaid(paidprice) {
    if (parseFloat(paidprice) > 0) {
        var Url = "/Product/xmldata/ShoppingBankCookie.aspx?Money=" + paidprice + "&settrue=yes";
        cardcookie.load(Url);
        document.getElementById("OrderFormMoney").innerHTML = (parseFloat(document.getElementById("OrderFormMoney").innerHTML) - parseFloat(paidprice));
        document.getElementById("userpaidprice").innerHTML = (parseFloat(document.getElementById("userpaidprice").innerHTML) + parseFloat(paidprice))
        document.getElementById("bankbuttom").innerHTML = "<img src=\"/Images/Shopping/button_bsy.gif\" width=\"54\" height=\"21\" border=\"0\" style=\"margin-left:110px;\" onclick=\"canceBankpaid('" + paidprice + "')\" />";
    }
}
function canceBankpaid(paidprice) {
    if (parseFloat(paidprice) > 0) {
        var Url = "/Product/xmldata/ShoppingBankCookie.aspx?Money=" + paidprice + "&settrue=no";
        cardcookie.load(Url);
        document.getElementById("OrderFormMoney").innerHTML = (parseFloat(OrderFormMoney.innerHTML) + parseFloat(paidprice));
        document.getElementById("userpaidprice").innerHTML = (parseFloat(userpaidprice.innerHTML) - parseFloat(paidprice))
        document.getElementById("bankbuttom").innerHTML = "<img src=\"/Images/Shopping/button_sy.gif\" width=\"54\" height=\"21\" border=\"0\" style=\"margin-left:110px;\" onclick=\"Bankpaid('" + paidprice + "')\" />";
    }
}
function cance() {
    var Cards = "<div class=\"comBg\" id=\"Card_String\">";
    Cards += "<h2>您有礼品卡吗？</h2>";
    Cards += "<div class=\"lipinCard\">";
    Cards += "<div class=\"lipinCardLeft\">卡号：</div>";
    Cards += "<div class=\"lipinCardRight\"><input type=\"text\" class=\"Fpassword\" name=\"CardID\" id=\"CardID\"></div>";
    Cards += "</div>";
    Cards += "<span class=\"blank10\"></span>";
    Cards += "<div class=\"lipinCard\">";
    Cards += "<div class=\"lipinCardLeft\">密码：</div>";
    Cards += "<div class=\"lipinCardRight\"><input type=\"password\" class=\"Fpassword\" name=\"CardPassWord\" id=\"CardPassWord\"><input type=\"button\" class=\"yanzhengBtn\" onclick=\"PaidCard();\" value=\"验 证\"></div>";
    Cards += "</div>";

    var Url = "/Product/xmldata/ShoppingCardCookie.aspx?CardID=11111&CardPassWord=00000&UserMoney=0&settrue=no";
    cardcookie = createXMLHTTPRequest(cardcookie);
    cardcookie.open('GET', Url, true);
    cardcookie.send(null);
    var cardschar = document.getElementById("Card_String");
    cardschar.innerHTML = Cards;
}
function Comment_LoadPage(path) {
    cddoc.load(path);
}
//加载页面
function LoadCommandDoc(CardID, CardPassWord, UserMoney, UserID, TraMoney) {
    //var Url="/Product/xmldata/ShoppingCard.aspx?CardID="+CardID+"&CardPassWord="+CardPassWord+"&UserMoney="+UserMoney+"&UserID="+UserID+"&TraMoney="+TraMoney;
    var Url = "/Product/xmldata/ShoppingCard.aspx?CardID=" + CardID + "&CardPassWord=" + CardPassWord + "&UserMoney=" + UserMoney + "&UserID=" + UserID + "&TraMoney=" + TraMoney;
    cddoc = createXMLHTTPRequest(cddoc);
    cddoc.open('GET', Url, true);
    cddoc.onreadystatechange = LoadedComment;
    cddoc.send(null);
}

function PointtoTran(Points) {
    if ($("#IsPointtoTran").attr("checked")) {
        $("#TotalPoints").html(parseInt($("#TotalPoints").html()) + Points);
        $("#PointtoTran").html("-15.00");
        $("#OrderFormMoney").html(String(parseInt($("#OrderFormMoney").html()) - 15));
    }
    else {
        $("#TotalPoints").html((parseInt($("#TotalPoints").html()) - Points).toString());
        $("#PointtoTran").html("0.00");
        $("#OrderFormMoney").html((parseInt($("#OrderFormMoney").html()) + 15).toString());
    }
}