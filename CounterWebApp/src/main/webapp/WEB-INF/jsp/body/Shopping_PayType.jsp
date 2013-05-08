<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    
    <head>
        <title>
            选择支付方式-奋斗商城
        </title>
        <meta name="keywords" content=" 服装,直销,衬衣,衬衫,牛津纺,经纬80公里全棉衬衫,领带,毛背心,卡其裤"
        />
        <meta name="description" content="由欧美著名设计师领衔企划，集结顶级男装品牌经典款式之精华，同时参考亚洲男士体型特点，精选高支面料贴身制作，让用户以中等价位享受奢侈品质，提倡简约、纵深、自在、环保。"
        />
        <link type="text/css" rel="stylesheet" href="css/Reusable.css" />
        <link type="text/css" rel="stylesheet" href="css/gmxx.css" />
        <link href="css/footer.css" type="text/css" rel="stylesheet" />
        <script src="PublicControls/Js/FromCheck.js" language="javascript">
        </script>
        <script src="PublicControls/Js/rest_img.js" language="javascript">
        </script>
        <script src="PublicControls/Js/cookies_oper.js" language="javascript">
        </script>
        <script src="PublicControls/Js/StringTrim.js" language="javascript">
        </script>
        <script src="PublicControls/Js/ShoppingUrl.js" language="javascript">
        </script>
        <script src="PublicControls/Js/ShoppingCard.js" language="javascript">
        </script>
        <script src="PublicControls/Js/jquery.js" language="javascript">
        </script>
    </head>
    
    <body id="body">
        <center>
            <div id="gmxx">
                <script src="PublicControls/Js/jquery.js" language="javascript">
                </script>
                <div id="Head" align="left">
                    <a href="http://www.fendoujiaoyu.com/">
                        <img src="images/log.gif" width="311"
                        height="39" alt="Vancl" border="0" />
                    </a>
                   
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
                    var shoppingstep = '2';
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
                <div class="bxSty">
                    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tabSty01">
                        <!--Title-->
                        <tr>
                            <td>
                                <div class="titleSty">
                                    <span id="Label_Addressee">
                                        <h2 align="left">
                                            收货人信息
                                            <span class="reusableColor4 typeH2">
                                                <a href="shopping_addr.html">
                                                    <span class="addFontCol">
                                                        修改
                                                </a>
                                                </span>
                                            </span>
                                        </h2>
                                        <h3 align="left">
                                            <span class="reusableColor3 letterSpac">
                                                收货人
                                            </span>
                                            <span class="reusableColor3 letterSpac1">
                                                ：
                                            </span>
                                            fds
                                            <br/>
                                            <span class="reusableColor3">
                                                地　　区：
                                            </span>
                                            海南&nbsp;&nbsp;-&nbsp;&nbsp;海口市&nbsp;&nbsp;-&nbsp;&nbsp;龙华区&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <br/>
                                            <span class="reusableColor3">
                                                收货地址：
                                            </span>
                                            fdsfsf&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <br/>
                                            <span class="reusableColor3">
                                                邮政编码：
                                            </span>
                                            234234
                                            <br>
                                            <span class="reusableColor3">
                                                联系方式：
                                            </span>
                                            32432433 / 13223232323
                                        </h3>
                                    </span>
                                    <h2 class="h2new" align="left">
                                        配送方式&nbsp;　
                                        <span class="reusableColor4 pTypeSpans">
                                            <a href="Shopping_DeliveryType.html">
                                                <span class="addFontCol">
                                                    修改
                                                </span>
                                            </a>
                                        </span>
                                        <span id="TransferString">
                                            <h4 align="left">
                                                快递－支持货到付款－全场购物满59元免运费。&nbsp;&nbsp;&nbsp;
                                            </h4>
                                        </span>
                                </div>
                            </td>
                        </tr>
                        <tr bgcolor="#7a7f89" class="trSty01">
                            <td align="left" class="reusableColor5 xxSty01 typeBottom">
                                &nbsp;&nbsp;&nbsp;&nbsp;请选择
                                <strong>
                                    支付方式
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top" style="text-align:left;">
                                <form name="Form1" id="Form1" method="post" action="Shopping_DeliveryTime.html" onsubmit="return Check_Form(this);">
                                    <ul class="psFs3 Paymentclass">
                                        <span id="paytype" class="pTypeSpan2">
                                        </span>
                                        <span id="Pamentstring">
                                            <li id="payuserbank">
                                                <input name="UserBankPay" id="UserBankPay" type="checkbox" value="06"
                                                />
                                                余额支付 （您的虚拟账户中拥有
                                                <span id="bankprice">
                                                    0
                                                </span>
                                                元余额，
                                                <span id="tempbankprice" style=" display:none;">
                                                    订单占用0元，
                                                </span>
                                                选择此项，会优先使用余额支付）
                                            </li>
                                            <li id="liusegiftcard">
                                                <input name="UseGiftCard" id="UseGiftCard" type="checkbox" />
                                                礼品卡支付
                                            </li>
                                            <li id="giftcard" style="padding-left:20px;display:none">
                                                卡号:
                                                <input type="text" size="17" id="CardID" name="CardID">
                                                &nbsp;&nbsp;密码:
                                                <input size="17" id="CardPassWord" name="CardPassWord" type="password">
                                                <img id="imgUseGiftCard" style="vertical-align:bottom; cursor:pointer"
                                                src="images/button_yz.gif" style="">
                                            </li>
                                            <div id="giftcardinfo" class="payLoginWindows" style="display:none;float:right">
                                            </div>
                                            <li>
                                                <input checked="checked" id="CashonDelivery" name="Payment" type="radio"
                                                value="01" onclick="bank_none();" />
                                                货到付款
                                                <span class='reusableColor3'>
                                                    &nbsp;推荐方式（现金或POS机刷卡支付均可）
                                                </span>
                                                <span id="errCashonDelivery" style="clear:both;">
                                                </span>
                                                <div id="CashonDeliveryDiv" style="margin-left:20px;margin-top:5px;">
                                                    <input type="radio" id="CashonDeliveryType1" name="CashonDeliveryType"
                                                    value="1" />
                                                    <label for="CashonDeliveryType1">
                                                        现金支付
                                                    </label>
                                                    <br/>
                                                    <input type="radio" id="CashonDeliveryType2" name="CashonDeliveryType"
                                                    value="2" />
                                                    <label for="CashonDeliveryType2">
                                                        POS机刷卡
                                                    </label>
                                                </div>
                                            </li>
                                            <li>
                                                <input name="Payment" type="radio" value="22" onclick="icbc_block()" />
                                                在线支付－工商银行
                                            </li>
                                            <div id="icbc_List" class="icbc">
                                                　
                                                <table border="0" cellpadding="4" cellspacing="1" bgcolor="#dcdfe5">
                                                    <tr>
                                                        <span class="textSty01">
                                                            支持已开通网上支付功能的借记卡、信用卡；请确认您已经在银行柜台开通网上支付功能。
                                                        </span>
                                                    </tr>
                                                    <tr bgcolor="#FFFFFF">
                                                        <td colspan="8">
                                                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                <tr>
                                                                </tr>
                                                                <tr>
                                                                    <td width="115">
                                                                        <img src="images/ICBC.bmp" width="103"
                                                                        height="23" />
                                                                    </td>
                                                                    <td height="30">
                                                                        支付限额
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr bgcolor="#FFFFFF">
                                                        <td width="49" rowspan="2" bgcolor="#e3eafc">&nbsp;
                                                            
                                                        </td>
                                                        <td colspan="2" rowspan="2" align="center" bgcolor="#e3eafc">
                                                            <strong>
                                                                U盾客户
                                                            </strong>
                                                        </td>
                                                        <td rowspan="2" align="center" bgcolor="#e3eafc">
                                                            <strong>
                                                                柜面注册存量静态密码客户
                                                            </strong>
                                                        </td>
                                                        <td colspan="4" align="center" bgcolor="#e3eafc">
                                                            <strong>
                                                                电子银行口令卡客户
                                                            </strong>
                                                        </td>
                                                    </tr>
                                                    <tr bgcolor="#FFFFFF">
                                                        <td colspan="2" align="center" bgcolor="#e3eafc">
                                                            <strong>
                                                                已开通手机短信认证
                                                            </strong>
                                                        </td>
                                                        <td colspan="2" align="center" bgcolor="#e3eafc">
                                                            <strong>
                                                                未开通手机短信认证
                                                            </strong>
                                                        </td>
                                                    </tr>
                                                    <tr bgcolor="#FFFFFF">
                                                        <td align="center" bgcolor="#f2f5fc">&nbsp;
                                                            
                                                        </td>
                                                        <td width="60" align="center" bgcolor="#f2f5fc">
                                                            单笔限额
                                                        </td>
                                                        <td width="60" align="center" bgcolor="#f2f5fc">
                                                            每日限额
                                                        </td>
                                                        <td align="center" bgcolor="#f2f5fc">
                                                            总累计限额
                                                        </td>
                                                        <td width="70" align="center" bgcolor="#f2f5fc">
                                                            单笔限额
                                                        </td>
                                                        <td width="70" align="center" bgcolor="#f2f5fc">
                                                            每日限额
                                                        </td>
                                                        <td width="70" align="center" bgcolor="#f2f5fc">
                                                            单笔限额
                                                        </td>
                                                        <td align="center" bgcolor="#f2f5fc">
                                                            每日限额
                                                        </td>
                                                    </tr>
                                                    <tr bgcolor="#FFFFFF">
                                                        <td align="center" bgcolor="#f2f5fc">
                                                            <strong>
                                                                信用卡
                                                            </strong>
                                                        </td>
                                                        <td colspan="2" align="center" bgcolor="#f2f5fc">
                                                            由信用卡额度决定
                                                        </td>
                                                        <td width="88" align="center" bgcolor="#f2f5fc">
                                                            300元与信用卡本身限额孰低
                                                        </td>
                                                        <td align="left" bgcolor="#f2f5fc">
                                                            2000元与信用卡本身限额孰低
                                                        </td>
                                                        <td align="left" bgcolor="#f2f5fc">
                                                            5000元与信用卡本身限额孰低
                                                        </td>
                                                        <td align="left" bgcolor="#f2f5fc">
                                                            500元与信用卡本身限额孰低
                                                        </td>
                                                        <td align="left" bgcolor="#f2f5fc">
                                                            1000元与信用卡本身限额孰低
                                                        </td>
                                                    </tr>
                                                    <tr bgcolor="#FFFFFF">
                                                        <td align="center" bgcolor="#f2f5fc">
                                                            <strong>
                                                                借记卡
                                                            </strong>
                                                        </td>
                                                        <td colspan="2" align="center" bgcolor="#f2f5fc">
                                                            无限额
                                                        </td>
                                                        <td align="center" bgcolor="#f2f5fc">
                                                            300元
                                                        </td>
                                                        <td align="center" bgcolor="#f2f5fc">
                                                            2000元
                                                        </td>
                                                        <td align="center" bgcolor="#f2f5fc">
                                                            5000元
                                                        </td>
                                                        <td align="center" bgcolor="#f2f5fc">
                                                            500元
                                                        </td>
                                                        <td align="center" bgcolor="#f2f5fc">
                                                            1000元
                                                        </td>
                                                    </tr>
                                                    <tr bgcolor="#FFFFFF">
                                                        <td colspan="8" align="right" style="padding-right:10px;">
                                                            工商银行服务热线：95588
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <li>
                                                <input name="Payment" type="radio" value="25" onclick="bank_none()" />
                                                在线支付－招商银行
                                            </li>
                                            <li>
                                                <input name="Payment" type="radio" value="16" onclick="bank_none()" />
                                                在线支付－支付宝
                                            </li>
                                            <li>
                                                <input name="Payment" type="radio" value="14" onclick="bank_none()" />
                                                在线支付－财付通
                                            </li>
                                            <li>
                                                <input name="Payment" type="radio" value="09" onclick="bank_block()" />
                                                在线支付－快钱
                                                <span id="errorBank" style="clear:both;">
                                                </span>
                                                <br />
                                                <span id="bank_List" class="bankclass">
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <input type="radio" value="ICBC" name="bankId">
                                                                <img alt="ICBC" src="images/ICBC.bmp"
                                                                />
                                                            </td>
                                                            <td>
                                                                <input type="radio" value="CMB" name="bankId">
                                                                <img alt="CMB" src="images/CMB.bmp"
                                                                />
                                                            </td>
                                                            <td>
                                                                <input type="radio" value="ABC" name="bankId">
                                                                <img alt="ABC" src="images/ABC.bmp"
                                                                />
                                                            </td>
                                                            <td>
                                                                <input type="radio" value="CCB" name="bankId">
                                                                <img alt="CCB" src="images/CCB.bmp"
                                                                />
                                                            </td>
                                                        </tr>
                                                        
                                                        <tr>
                                                            <td>
                                                                <input type="radio" value="BJRCB" name="bankId">
                                                                <img alt="BJRCB" src="images/BJRCB.bmp"
                                                                />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <input type="radio" value="NJCB" name="bankId">
                                                                <img alt="NJCB" src="images/NJCB.bmp"
                                                                />
                                                            </td>
                                                            <td>
                                                                <input type="radio" value="CEB" name="bankId">
                                                                <img alt="CEB" src="images/CEB.bmp">
                                                            </td>
                                                            <td>
                                                                <input type="radio" value="none" name="bankId">
                                                                <span style=" font-weight:500;">
                                                                    快钱帐户支付
                                                                </span>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </span>
                                            </li>
                                            <!--<li><input name="Payment" type="radio" value="15" onclick="bank_none()" />在线支付－首信易</li>-->
                                            <li>
                                                <input name="Payment" type="radio" value="23" onclick="bank_none()" />
                                                在线支付－中国移动手机支付
                                            </li>
                                            <li>
                                                <input name="Payment" type="radio" value="12" onclick="bank_none()" />
                                                在线支付－网汇通
                                                <span class="reusableColor1">
                                                    <a href="http://www.vancl.com/help/vancl_TP.html" target="_blank">
                                                        什么是网汇通
                                                    </a>
                                                </span>
                                            </li>
                                            <li>
                                                <input name="Payment" type="radio" value="04" onclick="post_block()" />
                                                邮政汇款
                                            </li>
                                            <div id="post_List" class="icbc">
                                                <table width="610" border="0" cellspacing="0" cellpadding="0">
                                                    <tr>
                                                        <td align="left" bgcolor="#e6eaf3" class="textSty02">
                                                            <span style="margin-left:28px;">
                                                                <strong>
                                                                    邮政商务汇款（实时到账、免手续费）
                                                                </strong>
                                                            </span>
                                                            <br />
                                                            <span style="margin-left:8px;">
                                                                凡客诚品汇户号：885745387，请在附言中填写自己的订单号。（
                                                                <a href="#" target="_blank">
                                                                    了解更多
                                                                </a>
                                                                ）
                                                            </span>
                                                            <br />
                                                            <span style="margin-left:28px;">
                                                                <strong>
                                                                    邮政普通汇款
                                                                </strong>
                                                            </span>
                                                            <br />
                                                            <span style="margin-left:8px;">
                                                                1) 请您在下单后尽快到邮局进行汇款。
                                                            </span>
                                                            <br />
                                                            <span style="margin-left:21px;">
                                                                <strong>
                                                                    邮局汇款地址
                                                                </strong>
                                                                ：北京市双井邮局9信箱
                                                                <strong>
                                                                    邮编
                                                                </strong>
                                                                ：100022
                                                            </span>
                                                            <br />
                                                            <span style="margin-left:21px;">
                                                                <strong>
                                                                    收款人
                                                                </strong>
                                                                ：凡客诚品（北京）科技有限公司收。
                                                                <br />
                                                            </span>
                                                            <span style="margin-left:8px;">
                                                                2) 请同时填写汇款金额、汇款人相关信息、并在附言栏注明订单号。
                                                                <br />
                                                            </span>
                                                            <span style="margin-left:8px;">
                                                                3) 汇款的到款时间一般为自办理汇款手续之日起3-5个工作日，您订购的商品会在汇款到达凡客诚品帐户后发出。
                                                            </span>
                                                            <br />
                                                            <span style="margin-left:8px;">
                                                                4) 订单在下单7日后，如未收到您的货款，将被系统自动取消。
                                                            </span>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <li style="text-align:right">
                                               <!--  <a href="/help/Servise_d_1.htm" target="_blank">
                                                    支付方式详细说明
                                                </a> -->
                                            </li>
                                        </span>
                                        <li class="textStydtype">
                                            <input type="image" src="images/button_qrzf.gif"
                                            />
                                        </li>
                                        <input type="hidden" name="Action_Step_4" value="true" />
                                        <input type="hidden" name="Payment_Check" id="Payment_Check" value=""
                                        />
                                        <input type="hidden" name="BankID_" value="" />
                                        <input type="hidden" name="BankMoney" id="BankMoney" value="0" />
                                        <input type="hidden" name="TempBankMoney" id="TempBankMoney" value="0"
                                        />
                                        <input type="hidden" id="UserID" value="9556769" />
                                    </ul>
                                </form>
                            </td>
                        </tr>
                    </table>
                    <!--Button end-->
                    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tabSty01">
                        <tr bgcolor="#dcdfe5" class="trSty01">
                            <td align="left" class="reusableColor3 xxSty01 typeBottom">
                                &nbsp;&nbsp;&nbsp;&nbsp;接下来您还需要选择 送货时间。
                            </td>
                        </tr>
                    </table>
                    <script language="javascript" type="text/javascript">
                        var validategiftcard = false; //提交时是否验证礼品卡的标志
                        $(function() {
                            var cashonDelivery = $('#CashonDelivery');
                            var cashonDeliveryDiv = $('#CashonDeliveryDiv');

                            $("input[name='Payment']").click(function() {
                                if (this != cashonDelivery[0]) cashonDeliveryDiv.hide();
                                else cashonDeliveryDiv.show();
                            });
                            if (cashonDelivery.attr("checked")) {
                                cashonDeliveryDiv.show();
                            } else {
                                cashonDeliveryDiv.hide();
                            }
                            if ('1' == '0') {
                                $("#CashonDeliveryType1").attr("checked", "checked");
                            }
                            if ('2' == '0') {
                                $("#CashonDeliveryType2").attr("checked", "checked");
                            }
                            if ("True" != "True") {
                                $("#CashonDeliveryType2").attr("disabled", "disabled").attr("checked", "");
                            }
                        });

                        $(function() {
                            $("#UseGiftCard").click(function() {
                                if ($("#UseGiftCard:checked").length > 0) {
                                    $("#giftcard").show();
                                    validategiftcard = true;
                                } else {
                                    validategiftcard = false;
                                    $("#CardID").attr("disabled", false).val("");
                                    $("#CardPassWord").attr("disabled", false).val("");
                                    $("#giftcard").hide();
                                    $("#giftcardinfo").hide();
                                }
                            });
                            $("#imgUseGiftCard").click(function() {
                                Validate()
                            });
                        });

                        $(function() {
                            var serverCard = "";
                            if (serverCard != "") {
                                $("#UseGiftCard").attr("checked", true);
                                $("#giftcard").show();
                                var arr = serverCard.split("$");
                                $("#CardID").val(arr[1]);
                                $("#CardPassWord").val(arr[2]);
                                $("#imgUseGiftCard").click();
                                validategiftcard = true;
                            }
                        })

                        function Validate() {
                            $("#CardID").attr("disabled", true);
                            $("#CardPassWord").attr("disabled", true);
                            if ($("#CardID").val() != "" && $("#CardID").val().length > 2 && $("#CardPassWord").val() != "") {
                                var Url = "/Product/xmldata/ShoppingCard.aspx?CardID=" + $("#CardID").val() + "&CardPassWord=" + $("#CardPassWord").val() + "&UserID=" + $("#UserID").val() + "&TraMoney=";
                                $.ajax({
                                    url: Url,
                                    success: function(res) {
                                        if (res && res.length > 0) {
                                            var ProductInfo = res.split("$");
                                            CardID = ProductInfo[0];
                                            NewMoney = ProductInfo[1];
                                            UserMoney = ProductInfo[2];
                                            CardPassWord = ProductInfo[3];
                                            CardTypeValue = ProductInfo[6];
                                            bol = ProductInfo[7];
                                            if (parseInt(UserMoney) > 0 && parseInt(ProductInfo[4]) == 1) {
                                                $("#giftcardinfo").html("<span class=\"blank10\"></span><p>礼品卡使用成功,能为你抵消货款" + NewMoney + "元</p><span class=\"blank10\"></span><div><input type=\"button\" class=\"\" value=\"取消验证\"></div><span class=\"blank10\"></span>").fadeIn("fast");
                                                $("#giftcardinfo input").click(function() {
                                                    $("#CardID").attr("disabled", false).val("");
                                                    $("#CardPassWord").attr("disabled", false).val("");
                                                    $("#giftcardinfo").html("").fadeOut("fast");
                                                    $.get("/Product/xmldata/ShoppingCardCookie.aspx?CardID=" + CardID + "&CardPassWord=" + CardPassWord + "&UserMoney=" + NewMoney + "&settrue=no");
                                                });
                                                $("#UseGiftCard").one("click",
                                                function() {
                                                    $.get("/Product/xmldata/ShoppingCardCookie.aspx?CardID=" + CardID + "&CardPassWord=" + CardPassWord + "&UserMoney=" + NewMoney + "&settrue=no");
                                                });
                                                $.get("/Product/xmldata/ShoppingCardCookie.aspx?CardID=" + CardID + "&CardPassWord=" + CardPassWord + "&UserMoney=" + NewMoney + "&settrue=yes&CardTypeValue=" + CardTypeValue);
                                            } else {
                                                $("#giftcardinfo").html("<span class=\"blank10\"></span><p>" + ProductInfo[5] + "，验证失败</p><span class=\"blank10\"></span><div><input type=\"button\" class=\"\" value=\"取消验证\"></div><span class=\"blank10\"></span>").fadeIn("fast");
                                                $("#giftcardinfo input").click(function() {
                                                    $("#CardID").attr("disabled", false).val("");
                                                    $("#CardPassWord").attr("disabled", false).val("");
                                                    $("#giftcardinfo").html("").fadeOut("fast");
                                                });
                                            }
                                        } else {
                                            ShowInfo("对不起，该卡无效");
                                        }
                                    },
                                    error: function() {
                                        ShowInfo("对不起，该卡无效");
                                    }
                                });
                            } else {
                                ShowInfo("请输入正确卡号和密码");
                            }
                        }
                        function ShowInfo(s) {
                            $("#giftcardinfo").html("<span class=\"blank10\"></span><p>" + s + "，验证失败</p><span class=\"blank10\"></span><div><input type=\"button\" class=\"\" value=\"取消验证\"></div><span class=\"blank10\"></span>").fadeIn("fast");
                            $("#CardID").attr("disabled", false);
                            $("#CardPassWord").attr("disabled", false);
                            $("#giftcardinfo input").click(function() {
                                $("#CardID").attr("disabled", false).val("");
                                $("#CardPassWord").attr("disabled", false).val("");
                                $("#giftcardinfo").html("").fadeOut("fast");
                            });
                        }

                        if (document.getElementById("cib") || document.getElementById("kuaiqian") || document.getElementById("taobao")) {} else {
                            if (document.getElementById("bank_List")) {
                                document.getElementById("bank_List").style.display = "none";
                            }
                            if (document.getElementById("icbc_List")) {
                                document.getElementById("icbc_List").style.display = "none";
                            }
                            if (document.getElementById("post_List")) {
                                document.getElementById("post_List").style.display = "none";
                            }
                        }

                        if (parseInt($("#BankMoney").val()) > 0) {
                            $("#bankprice").html($("#BankMoney").val());
                            $("#UserBankPay").attr("checked", "checked");
                        }

                        if (parseInt($("#TempBankMoney").val()) > 0) {
                            $("#tempbankprice").html("订单占用" + $("#TempBankMoney").val() + "元，");
                            document.getElementById("tempbankprice").style.display = "";
                        }

                        function Submit_Form() {
                            if (Check_Form()) {
                                Form1.submit();
                            }
                        }
                        function CheckedValues(form, itemname) {
                            var values = "";
                            //var form=eval(form);
                            var form = document.getElementById("Form1");
                            for (var i = 0; i < form.elements.length; i++) {
                                var e = form.elements[i];
                                if (e.name == itemname && e.checked == true) {
                                    if (values != "") {
                                        values += "," + e.value;
                                    } else {
                                        values = e.value;
                                    }
                                }
                            }
                            return values;
                        }

                        function Check_Form() {
                            if (CheckedValues("Form1", "Payment") == "") {
                                $("#paytype").addClass("Error");
                                $("#paytype").html("<font color=#A10000>请选择支付方式</font>");
                                return false;
                            }
                            if (CheckedValues("Form1", "Payment") == "09" && CheckedValues("Form1", "bankId") == "") {
                                $("#errorBank").addClass("Error");
                                $("#errorBank").html("<font color=#A10000>请选择支付银行</font>");
                                return false;
                            }
                            if (CheckedValues("Form1", "Payment") == "01" && $("input[name='CashonDeliveryType']:checked").length == 0) {
                                $("#errCashonDelivery").addClass("Error");
                                $("#errCashonDelivery").html("<font color=#A10000>请选择货到付款方式</font>");
                                return false;
                            }
                            if (validategiftcard) {
                                $("#CardID").attr("disabled", true);
                                $("#CardPassWord").attr("disabled", true);
                                if ($("#CardID").val() != "" && $("#CardID").val().length > 2 && $("#CardPassWord").val() != "") {
                                    var Url = "/Product/xmldata/ShoppingCard.aspx?CardID=" + $("#CardID").val() + "&CardPassWord=" + $("#CardPassWord").val() + "&UserID=" + $("#UserID").val() + "&TraMoney=";
                                    $.ajax({
                                        url: Url,
                                        success: function(res) {
                                            if (res && res.length > 0) {
                                                var ProductInfo = res.split("$");
                                                CardID = ProductInfo[0];
                                                NewMoney = ProductInfo[1];
                                                UserMoney = ProductInfo[2];
                                                CardPassWord = ProductInfo[3];
                                                CardTypeValue = ProductInfo[6];
                                                bol = ProductInfo[7];
                                                if (parseInt(UserMoney) > 0 && parseInt(ProductInfo[4]) == 1) {
                                                    //自动验证不显示提示框
                                                    $.ajax({
                                                        url: "/Product/xmldata/ShoppingCardCookie.aspx?CardID=" + CardID + "&CardPassWord=" + CardPassWord + "&UserMoney=" + NewMoney + "&settrue=yes&CardTypeValue=" + CardTypeValue,
                                                        success: function() {
                                                            $("#Form1").submit();
                                                        }
                                                    });
                                                } else {
                                                    $("#giftcardinfo").html("<span class=\"blank10\"></span><p>" + ProductInfo[5] + "，验证失败</p><span class=\"blank10\"></span><div><input type=\"button\" class=\"\" value=\"取消验证\"></div><span class=\"blank10\"></span>").fadeIn("fast");
                                                    $("#giftcardinfo input").click(function() {
                                                        $("#CardID").attr("disabled", false).val();
                                                        $("#CardPassWord").attr("disabled", false).val();
                                                        $("#giftcardinfo").html("").fadeOut("fast");
                                                    });
                                                }
                                            } else {
                                                ShowInfo("对不起，该卡无效");
                                            }
                                        },
                                        error: function() {
                                            ShowInfo("对不起，该卡无效");
                                        }
                                    });
                                } else {
                                    ShowInfo("请输入正确卡号和密码");
                                }
                                return false;
                            } else {
                                return true;
                            }
                        }
                        function bank_block() {
                            if (document.getElementById("bank_List")) {
                                document.getElementById("bank_List").style.display = "block";
                            }
                            if (document.getElementById("icbc_List")) {
                                document.getElementById("icbc_List").style.display = "none";
                            }
                            if (document.getElementById("post_List")) {
                                document.getElementById("post_List").style.display = "none";
                            }
                        }
                        function icbc_block() {
                            if (document.getElementById("bank_List")) {
                                document.getElementById("bank_List").style.display = "none";
                            }
                            if (document.getElementById("icbc_List")) {
                                document.getElementById("icbc_List").style.display = "block";
                            }
                            if (document.getElementById("post_List")) {
                                document.getElementById("post_List").style.display = "none";
                            }
                        }
                        function post_block() {
                            if (document.getElementById("bank_List")) {
                                document.getElementById("bank_List").style.display = "none";
                            }
                            if (document.getElementById("icbc_List")) {
                                document.getElementById("icbc_List").style.display = "none";
                            }
                            if (document.getElementById("post_List")) {
                                document.getElementById("post_List").style.display = "block";
                            }
                        }
                        function bank_none() {
                            if (document.getElementById("bank_List")) {
                                document.getElementById("bank_List").style.display = "none";
                            }
                            if (document.getElementById("icbc_List")) {
                                document.getElementById("icbc_List").style.display = "none";
                            }
                            if (document.getElementById("post_List")) {
                                document.getElementById("post_List").style.display = "none";
                            }
                        }
                    </script>
                </div>
            </div>
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
    </body>

</html>

