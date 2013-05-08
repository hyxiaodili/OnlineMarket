<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
    
    <head>
        <title>
            确认提交订单-奋斗商品
        </title>
        <meta name="keywords" content=" 服装,直销,衬衣,衬衫,牛津纺,经纬80公里全棉衬衫,领带,毛背心,卡其裤"
        />
        <meta name="description" content="由欧美著名设计师领衔企划，集结顶级男装品牌经典款式之精华，同时参考亚洲男士体型特点，精选高支面料贴身制作，让用户以中等价位享受奢侈品质，提倡简约、纵深、自在、环保。"
        />
        <link href="css/gmxxnew.css" type="text/css" rel="stylesheet" />
        <link href="css/gmxx.css" type="text/css" rel="stylesheet" />
        <link href="css/footer.css" type="text/css" rel="stylesheet" />
        <script type="text/javascript">
            var WebSite = "/shoppingDemo02/";
            var WebSiteHttps = "/shoppingDemo02/";
        </script>
        <script src="PublicControls/Js/FromCheck.js" language="javascript">
        </script>
        <script src="PublicControls/Js/rest_img.js" language="javascript">
        </script>
        <script src="PublicControls/Js/StringTrim.js" language="javascript">
        </script>
        <script src="PublicControls/Js/ShoppingCard.js" language="javascript">
        </script>
        <script src="PublicControls/Js/ShoppingUrl.js" language="javascript">
        </script>
        <script src="PublicControls/Js/jquery.js" language="javascript">
        </script>
        <script type="text/javascript" src="js/cookies_oper.js">
        </script>
        <style type="text/css">
            <!-- .STYLE8 {font-size: 14px} .STYLE10 {font-size: 14px; color: #7F0019;
            } .fonA{ font-size:12px;} .STYLE11 {color: #FF0000} .STYLE12 {color: #666666}
            .STYLE9 { color: #000000; font-size: 13px; } .STYLE19 {color: #000000}
            .STYLE16 {font-size: 13px} .submitbottom{ cursor:default;} .imglodding{width:25px;margin-bottom:-7px;padding-right:3px;display:none;}
            /* 产品目录册 */ .prutitleBg{width:394px;border-top:1px solid #c3c3c3;border-bottom:1px
            solid #c3c3c3; background-color:#f1f1f1;} .prutitleBg h2{padding:10px 0
            0 18px;color:#828282;font-weight:bold;} .prutitledetail{ padding:15px 25px
            18px 25px; color:#666; line-height:16px;} .prutitledetail span{ color:#a10000;}
            .prutitledetail a{ color:#a10000;} -->
            /* 产品目录册 */ .prutitleBg{width:394px;border-top:1px solid #c3c3c3;border-bottom:1px
            solid #c3c3c3; background-color:#f1f1f1;} .prutitleBg h2{padding:10px 0
            0 18px;color:#828282;font-weight:bold;} .prutitledetail{ padding:15px 25px
            18px 25px; color:#666; line-height:16px;} .prutitledetail span{ color:#a10000;}
            .prutitledetail a{ color:#a10000;}
        </style>
        <script language="javascript">
            function ElseHouseConctrol() {

                var EleseHouseID = $("#EleseHouseID").val();
                if (EleseHouseID == "1") {
                    $("#ElseHouseFhoto").attr("src", "images/stock_2.jpg");
                } else if (EleseHouseID == "2") {
                    $("#ElseHouseFhoto").attr("src", "images/stock_1.jpg");
                    $("#ElseHouseDiv").show();
                }
                $("#ElseHouseFhoto").hide().slideDown("slow").click(function() {
                    $("#ElseHouseFhoto").slideUp("slow")
                });
            }
        </script>
    </head>
    
    <body>
        <center>
            <center>
                <div id="ForOrder" style="display: none; width: 780px; margin-top: 5px;margin-bottom:10px;">
                    <p>
                        <img src="images/ForOrder.jpg" style="CURSOR: hand;"
                        onclick="close_chk_show('ForOrder',56)" border="0" />
                    </p>
                </div>
            </center>
            <script src="PublicControls/Js/jquery.js" language="javascript">
            </script>
            <div id="Head" align="left">
                <a href="http://www.fendoujiaoyu.com/">
                    <img src="images/log.gif" width="311"
                    height="39" alt="Vancl" border="0" />
                </a>
                <p>
                  
                </p>
            </div>
            <div align="left" id="step_">
                结算步骤:
                <span id="shoppingstep_0">
                    1.登录注册
                </span>
                &gt;&gt
                <span id="shoppingstep_2">
                    2.填写核对订单信息
                </span>
                &gt;&gt
                <span id="shoppingstep_3">
                    3.提交订单
                </span>
            </div>
            <script>
                var shoppingstep = '3';
                if (shoppingstep == "0") {
                    DelClass();
                    $('#step_ span[@id=shoppingstep_0]').addClass("shoppingstepcontrol");
                }
                if (shoppingstep == "1") {
                    DelClass();
                    $('#step_ ').hide();
                }

                if (shoppingstep == "2") {
                    DelClass();
                    $('#step_ span[@id=shoppingstep_2]').addClass("shoppingstepcontrol");
                }

                if (shoppingstep == "3") {
                    DelClass();
                    $('#step_ span[@id=shoppingstep_3]').addClass("shoppingstepcontrol");
                }
                function DelClass() {
                    $('#step_ span[@id^=shoppingstep_]').removeClass("shoppingstepcontrol");
                }
            </script>
            <div class="stock">
                <img id="ForOrderFhoto" style="display:none;" src="https://sslimg.vancl.com/NewVancl/New_Shopping/stock.gif"
                width="800" height="60" alt="抱歉，您订购的产品缺货。" />
            </div>
            <br />
            <div class="stock">
                <img id="ElseHouseFhoto" style="display:none;" src="images/stock_1.jpg"
                width="800" height="60" alt="抱歉，您订购的产品异地发货。" />
            </div>
            <form method="post" action="Shopping_Complete.aspx" name="Myform" id="Myform"
            onsubmit="return CheckForOrder()">
                <div id="gmxx">
                    <div class="bxStySplit" align="left">
                        <div class="titleSty">
                            <div>
                                <strong align="left">
                                    收货人信息
                                </strong>
                                <span class="editpadding_">
                                    [
                                    <a href="Shopping_Address.html">
                                        <span class="reusableColor4">
                                            修改
                                        </span>
                                    </a>
                                    ]
                                </span>
                            </div>
                            <div>
                                <span id="Label_Addressee">
                                    <span class="reusableColor3">
                                        收货人：whj
                                    </span>
                                    <span class="reusableColor3">
                                        地区：黑龙江-哈尔滨市-香坊区
                                    </span>
                                    <span class="reusableColor3">
                                        邮政编码：234234
                                    </span>
                                    <br />
                                    <span class="reusableColor6">
                                    </span>
                                    <span class="reusableColor3">
                                        收货地址： 黑龙江省哈尔滨市
                                    </span>
                                    <span class="reusableColor3">
                                        联系方式：32432433 / 13223232323
                                    </span>
                                </span>
                            </div>
                            <div>
                                <strong align="left" class="h20">
                                    配送方式
                                </strong>
                                <span id="TransferString">
                                    快递 －支持货到付款－全场购物满59元免运费。
                                </span>
                                <span class="editpadding">
                                    [
                                    <a href="Shopping_DeliveryType.html">
                                        <span class="reusableColor4">
                                            修改
                                        </span>
                                    </a>
                                    ]
                                </span>
                            </div>
                            <div>
                                <strong align="left" class="h20">
                                    支付方式
                                </strong>
                                <span id="PaymentsString">
                                    在线支付-网汇通
                                </span>
                                <span class="editpadding">
                                    [
                                    <a href="Shopping_PayType.html">
                                        <span class="reusableColor4">
                                            修改
                                        </span>
                                    </a>
                                    ]
                                </span>
                            </div>
                            <div style="border:none;">
                                <strong align="left" class="h20">
                                    送货时间
                                </strong>
                                <span id="Transfer_TimeString">
                                    工作日、双休日与假日均可送货
                                </span>
                                <span class="editpadding">
                                    [
                                    <a href="Shopping_DeliveryTime.html">
                                        <span class="reusableColor4">
                                            修改
                                    </a>
                                    ]
                                    </span>
                            </div>
                        </div>
                    </div>
                    <div class="bxSty" style="clear:left;">
                        <span id="Label_ProductList">
                            <table width="758" border="0" cellspacing="0" cellpadding="0" class="Producttable">
                                <tr>
                                    <td align="left" class="fontSty02" colspan='4'>
                                        <strong>
                                            产品清单
                                        </strong>
                                        <span style='padding-left:65px;font-size:12px;'>
                                            发货库房：
                                            <strong style='color:#A10000;'>
                                                广州仓库
                                            </strong>
                                            发货后预计
                                            <strong style='color:#A10000;'>
                                                4到5天
                                            </strong>
                                            内送达
                                        </span>
                                    </td>
                                    <td colspan="3" align="right" valign="bottom" class="paddSty">
                                        <a href="/Shopping/Shopping.aspx?RUrl=/Shopping/Shopping_Confirm.aspx&ref=checkout_normal">
                                            回到购物车，修改产品 &gt;&gt;
                                        </a>
                                    </td>
                                </tr>
                                <tr bgcolor="#7a7f89" class="reusableColor5">
                                    <td height="15" align="center" width="354">
                                        产品名称
                                    </td>
                                    <td align="center" width="83">
                                        尺码
                                    </td>
                                    <td width="80" align="center">
                                        赠送积分
                                    </td>
                                    <td align="center" width="78">
                                        单价
                                    </td>
                                    <td width="43" align="center">
                                        数量
                                    </td>
                                    <td width="110" align="center">
                                        优惠
                                    </td>
                                    <td width="100" align="center">
                                        小计
                                    </td>
                                </tr>
                                <tr>
                                    <td align='left' width="305">
                                        <span class="ProductUrl">
                                            <a href='fbx.html'
                                            target='_blank'>
                                                优质带帽拉链中长款棉服（童装）（130-160） 卡其色(清仓品)
                                            </a>
                                        </span>
                                    </td>
                                    <td align='center'>
                                        160
                                    </td>
                                    <td align='center' class="DeleteWord">
                                        59分
                                    </td>
                                    <td align='center' class="DeleteWord">
                                        ￥119.00
                                    </td>
                                    <td align='center' class="DeleteWord">
                                        1
                                    </td>
                                    <td align='center' class="DeleteWord">
                                        -
                                    </td>
                                    <td align='center' class="DeleteWord">
                                        ￥119.00
                                    </td>
                                </tr>
                            </table>
                        </span>
                        <div class="amountArea" style="width:760px; border-top:1px solid #7A7F89;">
                            <ul style=" margin:0px; padding:0px;">
                                <li style="padding:0px;">
                                    <a href="shopping.html"
                                    id="SplitUrl1">
                                        回到购物车，修改产品&gt;&gt;
                                    </a>
                                </li>
                                <li>
                                    产品数量总计：1件
                                </li>
                                <li>
                                    赠送积分总计：
                                    <span id="LabelGiftPoint">
                                        59
                                    </span>
                                    分
                                </li>
                                <li>
                                    花费积分总计：
                                    <span id="LabelTotalPoints">
                                        0
                                    </span>
                                    分
                                </li>
                                <li style="text-align:right;float:right; padding:0px;">
                                    产品金额共计：￥
                                    <span id="LabelNewMoney">
                                        119.00
                                    </span>
                                </li>
                            </ul>
                            <span class="blank0">
                            </span>
                        </div>
                        <div class="moneyCardArea" style="width:760px;">
                            <div class="moneyCardLeft">
                                <div class="moneyCardLeftHead">
                                    <img alt="" src="images/hideTag.gif"
                                    onclick="ControlImg(this,'Messge');">
                                    附加说明
                                </div>
                                <span class="blank5">
                                </span>
                                <div class="comBg hide" id="Messge">
                                    <h2>
                                        您需要附加说明吗？
                                    </h2>
                                    <div class="shuoming">
                                        <div class="shuomingLeft">
                                            如有请留言
                                        </div>
                                        <div class="shuomingRight">
                                            <textarea class="" cols="" rows="" name="textComment" id="textComment"
                                            onclick="clearContent();">
                                                留言请在50字以内
                                            </textarea>
                                        </div>
                                    </div>
                                </div>
                                <span class="blank8">
                                </span>
                                <div class="moneyCardLeftHead">
                                    <img alt="" src="images/hideTag.gif"
                                    onclick="ControlImg(this,'Card_String');" id="CardControl">
                                    使用礼品卡
                                </div>
                                <span class="blank5">
                                </span>
                                <div class="comBg hide" id="Card_String">
                                    <h2 id="CardQ">
                                        您有礼品卡吗？
                                    </h2>
                                    <div class="lipinCard">
                                        <div class="lipinCardLeft">
                                            卡号：
                                        </div>
                                        <div class="lipinCardRight">
                                            <input type="text" class="Fpassword" name="CardID" id="CardID">
                                        </div>
                                    </div>
                                    <span class="blank10">
                                    </span>
                                    <div class="lipinCard">
                                        <div class="lipinCardLeft">
                                            密码：
                                        </div>
                                        <div class="lipinCardRight">
                                            <input type="password" class="Fpassword" name="CardPassWord" id="CardPassWord">
                                            <input type="button" class="yanzhengBtn" onClick="PaidCard();" value="验 证">
                                        </div>
                                    </div>
                                </div>
                                <span class="blank8">
                                </span>
                                <div class="moneyCardLeftHead">
                                    <img alt="" onClick="ControlImg(this,'Invoiceo');" src="images/hideTag.gif">
                                    开发票
                                </div>
                                <span class="blank5">
                                </span>
                                <div class="comBg hide" id="Invoiceo">
                                    <h2>
                                        您需要开具发票吗？
                                        <input type="radio" name="IsInvoice" onClick="$('#InvoiceTitle').attr('disabled','');"
                                        value="1">
                                        是
                                        <input type="radio" name="IsInvoice" onClick="$('#InvoiceTitle').attr('disabled','disabled');"
                                        value="0">
                                        否
                                    </h2>
                                    <span class="blank8">
                                    </span>
                                    <div class="lipinCard">
                                        <div class="lipinCardLeft">
                                            发票抬头：
                                        </div>
                                        <div class="lipinCardRight">
                                            <input type="text" class="Fpassword" id="InvoiceTitle" name="InvoiceTitle">
                                        </div>
                                    </div>
                                    <span class="blank10">
                                    </span>
                                    <div class="lipinCard">
                                        <div class="lipinCardLeft">
                                            发票内容：
                                        </div>
                                        <div class="lipinCardRight">
                                            <select class="selFP" name="InvoiceType">
                                                <option selected="selected" value="服装">
                                                    服装
                                                </option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <span class="blank8">
                                </span>
                                <!--1203添加beigin-->
                                <div class="moneyCardLeftHead">
                                    <img onClick="ControlImg(this,'IsCasingPanal');" src="images/hideTag.gif"
                                    alt="" />
                                    产品目录册
                                </div>
                                <span class="blank5">
                                </span>
                                <div class="comBg hide" id="IsCasingPanal">
                                    <h2>
                                        是否本次订单夹带最新产品目录册？
                                        <input type="radio" name="IsCasing" value="0" />
                                        是
                                        <input name="IsCasing" checked="checked" type="radio" value="1" />
                                        否
                                    </h2>
                                    <div class="prutitledetail">
                                        <div>
                                            如您在收货时未收到产品目录册，请拨打
                                            <span>
                                                400-650-7099
                                            </span>
                                            直接免费 索取最新产品目录册
                                            <span>
                                                <a href="#">
                                                    详情请点击>>
                                                </a>
                                            </span>
                                        </div>
                                        <span class="blank15">
                                        </span>
                                    </div>
                                </div>
                                <span class="blank8">
                                </span>
                                <!--1203添加end-->
                            </div>
                            <div class="moneyCardRight">
                                <ul style=" margin:0px; padding:0px;">
                                    <li>
                                        运费：￥
                                        <span id="LabelTraMoney">
                                            0.00
                                        </span>
                                    </li>
                                    <li>
                                        礼品卡冲抵：￥
                                        <span id="userpaidprice">
                                            0.00
                                        </span>
                                    </li>
                                    <li>
                                        虚拟账户余额冲抵：￥
                                        <span id="userBankprice">
                                            0.00
                                        </span>
                                    </li>
                                    <li style="font-size: 14px; color: rgb(161, 0, 0);">
                                        您共需要为订单支付：￥
                                        <span id="OrderFormMoney">
                                            119.00
                                        </span>
                                    </li>
                                </ul>
                            </div>
                            <span class="blank0">
                            </span>
                        </div>
                    </div>
                    <div class="bxSty3" style="clear:left;" id="ForOrderProduct">
                        <span id="ForOrderList">
                        </span>
                    </div>
                    <div class="bxSty3" style="clear:left;border:1px solid red;" id="ElseHouseDiv">
                        <span id="ElseHouseList">
                        </span>
                    </div>
                    <div class="bxSty3" style="clear:left;" id="ForOrderPointProduct">
                        <span id="ForOrderPointList">
                        </span>
                    </div>
                    <div align="right" class='submitdiv'>
                        <!--请核对以上信息，确认无误后点击“提交订单” <input type="image" src="https://sslimg.vancl.com/NewVancl/New_Shopping/button_tjdd.gif"
                        style=" vertical-align:middle;"/>
                        -->
                        <span id="aftersubmittext" style="display:none;">
                            <img id="aftersubmitimg" src='https://sslimg.vancl.com/logo/loading.gif'
                            class="imglodding">
                            正在为您提交，请稍候...
                        </span>
                        <span id="submittext">
                            请核对以上信息，确认无误后点击“提交订单”
                        </span>
                        <input id="imagesubmit" type="image" src="images/button_tjdd.gif"
                        style="vertical-align:middle" />
                    </div>
                </div>
                <input type="hidden" name="Action_Step_5" value="true" />
                <input type="hidden" name="isOrder" value="True" />
                <input type="hidden" name="APIRules" value="" />
                <input type="hidden" name="isSatisfy" value="True" />
                <input type="hidden" name="OrderMoney" id="OrderMoney" value="119" />
                <input type="hidden" name="TraPayMoney" id="TraPayMoney" value="0" />
                <input type="hidden" name="BankMoney" id="BankMoney" value="0" />
                <input type="hidden" name="BankMoneyBak" id="BankMoneyBak" value="0" />
                <input type="hidden" name="SelectedCount" value="" />
                <input type="hidden" id="UserID" value="9556769" />
                <input type="hidden" id="EleseHouseID" value="0" />
                <input type="hidden" id="HiddenSplitType" name="HiddenSplitType" value="1"
                />
                <input type="hidden" id="setHousecodeCount" name="setHousecodeCount" value="0"
                />
                <input name="cib" type="hidden" id="cib" />
                <!--主分仓-->
                <input type="hidden" name="is_check_HouseCode" value="" />
            </form>
            <script language="javascript" type="text/javascript">
                (function() {
                    var d = {};
                    this.tmpl = function tmpl(a, b) {
                        var c = !/\W/.test(a) ? d[a] = d[a] || tmpl(document.getElementById(a).innerHTML) : new Function("obj", "var p=[],out=function(){p.push.apply(p,arguments);};" + "with(obj){p.push('" + a.replace(/[\r\t\n]/g, " ").split("<#").join("\t").replace(/((^|#>)[^\t]*)'/g, "$1\r").replace(/\t=(.*?)#>/g, "',$1,'").split("\t").join("');").split("#>").join("p.push('").split("\r").join("\\'") + "');}return p.join('');");
                        return b ? c(b) : c
                    }
                })();
                //收货人信息
                var yuan_Address = getCookie("ShoppingCar_Address");
                //配送方式
                var yuan_DeliveryType = getCookie("Transfercookie");
                //支付方式
                var yuan_PayType = getCookie("Paymentcookie");
                //送货时间
                var yuan_DeliveryTime = getCookie("Transfer_Timecookie");

                if (0 > 0) {
                    ElseHouseConctrol();
                    $("#ElseHouseList .DeleteWord").addClass("addclass").html("&nbsp;");
                }

                function ControlImg(oj, obj) {
                    var img = $(oj).eq(0).attr("src");
                    if (img == "https://sslimg.vancl.com/NewVancl/Shopping/hideTag.gif") {
                        $("#" + obj).show();
                        $(oj).attr("src", "https://sslimg.vancl.com/NewVancl/Shopping/expandTag.gif");
                    } else {
                        $("#" + obj).hide();
                        $(oj).attr("src", "https://sslimg.vancl.com/NewVancl/Shopping/hideTag.gif");

                    }
                }

                var clearflag = true;
                function clearContent() {
                    if (clearflag) {
                        document.getElementById("textComment").value = '';
                        clearflag = false;
                    }
                }

                function OnchangeFun(obj, str, str_) {
                    $("#Label_ProductList").html("<div style='height:100px;background:url(\"images/loading.gif\") center no-repeat'></div>");
                    $.ajax({
                        url: "/Shopping/ShoppingSplitOrder.ashx?ordertype=" + str,
                        contentType: "application/json",
                        dataType: 'json',
                        cache: false,
                        success: function(res) {
                            $("#ForOrderProduct").hide();
                            $("#ElseHouseDiv").hide();
                            var html = tmpl("splitorderlist", res.data);
                            $("#Label_ProductList").html(html);
                            $("#onchangetype" + str).show();
                            $("#onchangetype" + str_).hide();
                            $("#onchangetype1").text("采用此种方式，预计您的订单将会拆分为" + res.data.length + "张送出，详见如下产品列表。");
                            $("#setHousecodeCount").val(res.data.length);
                            $("#onchangetype2").text("采用此种方式，预计您的订单将从" + res.data[0].houseName + "发出，详见如下产品列表。");

                            if (res.quehuo && res.quehuo.length > 0) {
                                html = tmpl("quehuoInfo", res.quehuo);
                                $("#ForOrderProduct").html(html);
                                ForOrderConctrol();
                            }
                            if (res.yidi.length > 0) {
                                html = tmpl("yidiInfo", res.yidi);
                                $("#ElseHouseDiv").html(html);
                                $("#EleseHouseID").val(2);
                                $("#SplitUrl1").attr("href", "/Shopping/Shopping.aspx?RUrl=/Shopping/Shopping_Confirm.aspx&ref=checkout_shift");
                                $("#SplitUrl").attr("href", "/Shopping/Shopping.aspx?RUrl=/Shopping/Shopping_Confirm.aspx&ref=checkout_shift");
                                $("#editpadding_").html("（您所购买的商品可能从异地库房发出！）");
                                $("#submittext").html('请核对以上信息，确定订单从' + res.yidi[0].housename + '发货，请点击“提交订单”，也可<a id="resplit2" href="#splitorder"><u>修改其他拆分方式</u></a>或<a href="/Shopping/Shopping.aspx?RUrl=/Shopping/Shopping_Confirm.aspx&ref=checkout_shift"><u>返回购物车，修改商品</u></a>。');
                                $("#resplit2").click(function() {
                                    $("#SplitType1").attr("checked", true);
                                    OnchangeFun(obj, 1, 2);
                                });
                            }
                            if (res.data.length > 1) {
                                $("#SplitUrl1").attr("href", "/Shopping/Shopping.aspx?RUrl=/Shopping/Shopping_Confirm.aspx&ref=checkout_split");
                                $("#SplitUrl").attr("href", "/Shopping/Shopping.aspx?RUrl=/Shopping/Shopping_Confirm.aspx&ref=checkout_split");
                                $("#submittext").html('请核对以上信息，确认，请点击“提交订单”，也可<a id="resplit1" href="#splitorder"><u>修改其他拆分方式</u></a>或<a href="/Shopping/Shopping.aspx?RUrl=/Shopping/Shopping_Confirm.aspx&ref=checkout_split"><u>返回购物车，修改商品</u></a>。');
                                $("#editpadding_").html("（您所购买的商品可能会拆分！）");
                                $("#EleseHouseID").val(1);
                                $("#resplit1").click(function() {
                                    $("#SplitType2").attr("checked", true);
                                    OnchangeFun(obj, 2, 1);
                                });
                            }
                            checkservercard();
                            ElseHouseConctrol();
                        },
                        error: function(res) {
                            if (res.responseText == "error") {
                                location.href = "/Shopping/shopping_Confirm.aspx";
                            }
                        }
                    });
                    var values = $(obj).val();
                    $("#HiddenSplitType").val(values);

                }

                function checkPick() {
                    var IsPackvalue = "".toLowerCase(); //转换小写;
                    if (IsPackvalue == "nopic") {
                        ClosePackselect(); //屏蔽礼品包装
                    }
                }
                function checkservercard() {
                    var servercard = "";
                    if (servercard != "") {
                        ServerCardPay(servercard); //服务端检查是礼品卡支付
                    }
                }
                function check68servercardpay(CardID) {
                    var Iscardpay = 'True'.toLowerCase(); //转换小写
                    if (Iscardpay == 'false' && CardID.substring(0, 1) == '1') {
                        return false;
                    }
                    return true;
                }
                //checkPick();//服务端检查是否礼品包装
                checkservercard(); //服务端检查是否使用礼品卡支付
                //check68servercardpay();//服务端检查是否既有使用礼品卡支付又有68元商品

                function AlertErrMsg(msg, url) {
                    alert(msg);
                    if (url) location.href = url;
                    else location.href = location.href;
                    return false;
                }

                function CheckForOrder() {
                    if (yuan_Address != getCookie("ShoppingCar_Address")) return AlertErrMsg('您的收货人信息发生改变，请重新选择配送方式！', '/shopping/Shopping_DeliveryType.aspx');
                    if (yuan_DeliveryType != getCookie("Transfercookie")) return AlertErrMsg('您的配送方式发生改变，请重新选择支付方式！', '/shopping/Shopping_PayType.aspx');
                    if (yuan_PayType != getCookie("Paymentcookie")) return AlertErrMsg('您的支付方式发生改变，请确认！');
                    if (yuan_DeliveryTime != getCookie("Transfer_Timecookie")) return AlertErrMsg('您的送货时间发生改变，请确认！');

                    if (getCookie("ShoppingCar_SelfSuit") == "" && getCookie("ShoppingCar_Point") == "" && getCookie("ShoppingCar") == "") return AlertErrMsg('您的购物车中没有商品1！');

                    var IsNull = 'False'.toLowerCase();
                    if (CheckedValues('Myform', 'IsInvoice') == "1" && (document.getElementById("Myform").InvoiceTitle.value == null || document.getElementById("Myform").InvoiceTitle.value == ""))
                    //if(CheckedValues('Myform','IsInvoice')=="1" && (document.getElementById("InvoiceTitle").getAttribute("value")=="" || document.getElementById("InvoiceTitle").getAttribute("value")==null))
                    {
                        alert('请填写发票抬头！');
                        return false;
                    }
                    if (document.getElementById("Myform").textComment.value.length > 50) {
                        alert('留言不能超过50个字！');
                        return false;
                    }
                    if (IsNull != 'false') {
                        alert('您的商品全部缺货，不能提交');
                        return false;
                    }
                    if (!SelectProductIsLimit()) //限购商品只能购买
                    {
                        alert('活动期间，指定产品单张订单限购一件');
                        return false;
                    }
                    var EleseHouseID_ = $("#EleseHouseID").val();
                    if (EleseHouseID_ == "1") {
                        var getHousecodeCount = $("#setHousecodeCount").val();
                        if (!confirm("您的订单将会分为" + getHousecodeCount + "单送达，继续提交请按”确定”， 返回请按”取消”。")) {
                            return false;
                        }
                    } else if (EleseHouseID_ == "2") {
                        if (!confirm("您的订单将会从发出，继续提交请按”确定”， 返回请按”取消”。")) {
                            return false;
                        }
                    }
                    if ($("#Card_String #CardQ").length > 0 && $("#CardID").val() != "" && $("#CardPassWord").val() != "") {
                        try {
                            SubmitPaidCard(); //自动验证礼品卡
                        } catch(ex) {}
                    }
                    if (CheckMcDonaldNotPresent()) {
                        alert("请您在本页面右上方输入欢乐兑换卡的卡号和密码，即可抵扣憨虎金额及运费");
                        $("#CardID").focus();
                        return false;
                    }
                    ///避免重复提交
                    SetRepeatsubmit();
                }
                ///避免重复提交
                function SetRepeatsubmit() {
                    $("#submittext").hide();
                    $("#imagesubmit").click(function() {
                        return false;
                    }).addClass("submitbottom");
                    $("#aftersubmittext").show();
                    $("#aftersubmitimg").show();
                }

                function CheckMcDonaldNotPresent() {
                    var cookieproductID = getCookie("ShoppingCar") ;
					if (cookieproductID.indexOf("00005249") != -1) {
                        if (!HasPresentCard()) {
                            return true;
                        }
                    }
                    return false;
                }
                function HasPresentCard() {
                    var cookiePresentCard = getCookie("CardInfo") ;
					if (cookiePresentCard == "" || cookiePresentCard.split('$')[0] != "yes") {
                        return false
                    }
                    return true;
                }
                //兴业银行提示
                if ($("#cib").val().trim() == "error") {
                    alert("您通过兴业银行网上商城进行订购，付款方式会默认为兴业银行在线支付；订单提交后请您在24小时内支付货款，逾期支付订单将自动取消");
                }
            </script>
            <!--Bottom-->
            <div id="bottom" align="center">
                <div id="bottoms">
                    <p class="bZp3">
                        Copyright 2007 - 2011 fendou.com All Rights Reserved 京ICP证100557号
                    </p>
                    <p class="bZp2">
                        <a href="http://www.ectrustprc.org.cn/seal/splash/1000020.htm" target="_blank">
                            <img src="images/redlogo.gif" border="0" />
                        </a>
                        <img src="images/costumeorg.gif" border="0" />
                        <a href="http://www.315online.com.cn/member/315090053.html" target="_blank">
                            <img src="images/wsjybzzx.gif" border="0"
                            />
                        </a>
                    </p>
                </div>
            </div>
            <!--Bottom End-->
        </center>
        <script id="splitorderlist" type="text/html">
            < table width = "758"cellspacing = "0"cellpadding = "0"border = "0"class = "Producttable" > <tbody > <tr > <td align = "left"colspan = "4"class = "fontSty02" > <strong > 产品清单 < /strong></td > <td valign = "bottom"align = "right"class = "paddSty"colspan = "3" > <a href = "/Shopping/Shopping.aspx?RUrl=/Shopping/Shopping_Confirm.aspx"id = "SplitUrl" > 回到购物车，修改产品 & gt; & gt; < /a></td > </tr>
    <# for(j=0;j<obj.length;++j) { #>
    <tr>
        <td align="left" colspan="7"><strong>订单<#= (j+1) #></strong > <span style = "padding-left: 65px;" > 发货库房： < strong style = "color:#A10000;" > <# = obj[j].houseName# > </strong> 发货后预计<strong style="color: #A10000"><#= obj[j].HouceTime #></strong > 内送达 < /span></td > </tr>
    <tr bgcolor="#7a7f89" class="reusableColor5">
        <td width="354" height="15" align="center">产品名称</td > <td width = "83"align = "center" > 尺码 < /td>
        <td width="80" align="center">赠送积分</td > <td width = "78"align = "center" > 单价 < /td>
        <td width="43" align="center">数量</td > <td width = "110"align = "center" > 优惠 < /td>
        <td width="100" align="center">小计</td > </tr> 
	<# for(i=0;i<obj[j].adetail.length;++i) { #>
    <tr>
        <td align="left"><span class="ProductUrl"><a target="_blank" href="<#= obj[j].adetail[i].ProductUrl #>"><#= obj[j].adetail[i].ProductName #></a > </td>
        <td width="83" align="center"><#= obj[j].adetail[i].Size #></td > <td width = "80"align = "center" > <# = obj[j].adetail[i].PresentPoint# > </td>
        <td width="78" align="center"><#= obj[j].adetail[i].SellPrice #></td > <td width = "43"align = "center" > <# = obj[j].adetail[i].OrderAmount# > </td>
        <td width="110" align="center"><#= obj[j].adetail[i].Discount #></td > <td width = "100"align = "center" > <# = obj[j].adetail[i].ProductPrice# > </td>
    </tr > <#
        }# > <#
        if (obj.length > 1) {# > <tr > <td align = "right"name = "ordersplitatarm"colspan = "7" > <span > 产品金额共计：￥ < span id = "NewMoney<#= obj[j].housecode #>" > <# = obj[j].price# > </span></span > <br > 运费：￥ < span id = "TraMoney<#= obj[j].housecode #>" > <# = obj[j].TransferPrice# > </span><br> 礼品卡冲抵：   ￥<span id="CardPayMoney<#= obj[j].housecode #>"><#= obj[j].CardPayMoney #></span > <br > 虚拟账户余额冲抵：￥ < span id = "UserBankprice<#= obj[j].housecode #>" > <# = obj[j].UserBankPayMoney# > </span>
            <br><input type="hidden" value="<#= obj[j].UserBankPayMoney #>" id="hiddenBankprice<#= obj[j].housecode #>">应收款金额：   ￥<span id="CollectMoney<#= obj[j].housecode #>"><#= obj[j].mustPayMoney #></span > <br > </td>
    </tr > <#
        }# > <#
    }# > </tbody>
</table > 
        </script>
        <script id="quehuoInfo" type="text/html">
            < span id = "ForOrderList" > <table width = "758"cellspacing = "0"cellpadding = "5"border = "0" > <tbody > <tr > <td align = "left"class = "fontSty04"colspan = "5" > 非常抱歉，您订购的以下产品目前库房暂时缺货，现在不能购买。 < /td>
</tr > <#
            for (i = 0; i < obj.length; ++i) {# > <tr > <td width = "394"align = "left" > <a target = "_blank"href = "<#= obj[i].ProductUrl #>" > <# = obj[i].ProductName# > </a></td > <td width = "83"align = "center" > <# = obj[i].Size# > </td>
 <td width="88" align="center">￥<#= obj[i].SellPrice #></td > <td width = "63"align = "center" > <# = obj[i].OrderAmount# > </td>
 <td width="150" align="center" class="tit2b">￥<#= obj[i].ProductPrice #></td > </tr>
 <# } #>
</tbody > </table>
</span > 
        </script>
        <script id="yidiInfo" type="text/html">
            < span id = "ElseHouseList" > <#
            for (j = 0; j < obj.length; ++j) {# > <table width = "758"cellspacing = "0"cellpadding = "5"border = "0" > <tbody > <tr > <td align = "left"class = "fontSty04"colspan = "5" > 非常抱歉，由于以下商品在离您最近的库房无法全部满足，导致您整张订单将从 < # = obj[j].housename# > 发货。 < /td>
</tr > <#
                for (i = 0; i < obj[j].adetail.length; ++i) {# > <tr > <td width = "270"align = "left" > <a target = "_blank"href = "<#= obj[j].adetail[i].ProductUrl #>" > <# = obj[j].adetail[i].ProductName# > </a></td > <td width = "45"align = "center" > <# = obj[j].adetail[i].Size# > </td>
 <td width="88" align="center"><!--￥<#= obj[j].adetail[i].SellPrice #>--></td > <td width = "63"align = "center" > <!--<# = obj[j].adetail[i].OrderAmount# > --></td>
 <td width="150" align="center" class="tit2b"><!--￥<#= obj[j].adetail[i].ProductPrice #>--></td > </tr>
 <# } #>
</tbody > </table>
<# } #>
</span > 
        </script>
    </body>

</html>

