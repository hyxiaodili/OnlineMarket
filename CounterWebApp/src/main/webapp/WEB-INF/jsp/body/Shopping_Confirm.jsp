<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
    
    <head>
        <title>
            ȷ���ύ����-�ܶ���Ʒ
        </title>
        <meta name="keywords" content=" ��װ,ֱ��,����,����,ţ���,��γ80����ȫ�޳���,���,ë����,�����"
        />
        <meta name="description" content="��ŷ���������ʦ�����󻮣����ᶥ����װƷ�ƾ����ʽ֮������ͬʱ�ο�������ʿ�����ص㣬��ѡ��֧�����������������û����еȼ�λ�����ݳ�Ʒ�ʣ��ᳫ��Լ��������ڡ�������"
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
            /* ��ƷĿ¼�� */ .prutitleBg{width:394px;border-top:1px solid #c3c3c3;border-bottom:1px
            solid #c3c3c3; background-color:#f1f1f1;} .prutitleBg h2{padding:10px 0
            0 18px;color:#828282;font-weight:bold;} .prutitledetail{ padding:15px 25px
            18px 25px; color:#666; line-height:16px;} .prutitledetail span{ color:#a10000;}
            .prutitledetail a{ color:#a10000;} -->
            /* ��ƷĿ¼�� */ .prutitleBg{width:394px;border-top:1px solid #c3c3c3;border-bottom:1px
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
                ���㲽��:
                <span id="shoppingstep_0">
                    1.��¼ע��
                </span>
                &gt;&gt
                <span id="shoppingstep_2">
                    2.��д�˶Զ�����Ϣ
                </span>
                &gt;&gt
                <span id="shoppingstep_3">
                    3.�ύ����
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
                width="800" height="60" alt="��Ǹ���������Ĳ�Ʒȱ����" />
            </div>
            <br />
            <div class="stock">
                <img id="ElseHouseFhoto" style="display:none;" src="images/stock_1.jpg"
                width="800" height="60" alt="��Ǹ���������Ĳ�Ʒ��ط�����" />
            </div>
            <form method="post" action="Shopping_Complete.aspx" name="Myform" id="Myform"
            onsubmit="return CheckForOrder()">
                <div id="gmxx">
                    <div class="bxStySplit" align="left">
                        <div class="titleSty">
                            <div>
                                <strong align="left">
                                    �ջ�����Ϣ
                                </strong>
                                <span class="editpadding_">
                                    [
                                    <a href="Shopping_Address.html">
                                        <span class="reusableColor4">
                                            �޸�
                                        </span>
                                    </a>
                                    ]
                                </span>
                            </div>
                            <div>
                                <span id="Label_Addressee">
                                    <span class="reusableColor3">
                                        �ջ��ˣ�whj
                                    </span>
                                    <span class="reusableColor3">
                                        ������������-��������-�㷻��
                                    </span>
                                    <span class="reusableColor3">
                                        �������룺234234
                                    </span>
                                    <br />
                                    <span class="reusableColor6">
                                    </span>
                                    <span class="reusableColor3">
                                        �ջ���ַ�� ������ʡ��������
                                    </span>
                                    <span class="reusableColor3">
                                        ��ϵ��ʽ��32432433 / 13223232323
                                    </span>
                                </span>
                            </div>
                            <div>
                                <strong align="left" class="h20">
                                    ���ͷ�ʽ
                                </strong>
                                <span id="TransferString">
                                    ��� ��֧�ֻ������ȫ��������59Ԫ���˷ѡ�
                                </span>
                                <span class="editpadding">
                                    [
                                    <a href="Shopping_DeliveryType.html">
                                        <span class="reusableColor4">
                                            �޸�
                                        </span>
                                    </a>
                                    ]
                                </span>
                            </div>
                            <div>
                                <strong align="left" class="h20">
                                    ֧����ʽ
                                </strong>
                                <span id="PaymentsString">
                                    ����֧��-����ͨ
                                </span>
                                <span class="editpadding">
                                    [
                                    <a href="Shopping_PayType.html">
                                        <span class="reusableColor4">
                                            �޸�
                                        </span>
                                    </a>
                                    ]
                                </span>
                            </div>
                            <div style="border:none;">
                                <strong align="left" class="h20">
                                    �ͻ�ʱ��
                                </strong>
                                <span id="Transfer_TimeString">
                                    �����ա�˫��������վ����ͻ�
                                </span>
                                <span class="editpadding">
                                    [
                                    <a href="Shopping_DeliveryTime.html">
                                        <span class="reusableColor4">
                                            �޸�
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
                                            ��Ʒ�嵥
                                        </strong>
                                        <span style='padding-left:65px;font-size:12px;'>
                                            �����ⷿ��
                                            <strong style='color:#A10000;'>
                                                ���ݲֿ�
                                            </strong>
                                            ������Ԥ��
                                            <strong style='color:#A10000;'>
                                                4��5��
                                            </strong>
                                            ���ʹ�
                                        </span>
                                    </td>
                                    <td colspan="3" align="right" valign="bottom" class="paddSty">
                                        <a href="/Shopping/Shopping.aspx?RUrl=/Shopping/Shopping_Confirm.aspx&ref=checkout_normal">
                                            �ص����ﳵ���޸Ĳ�Ʒ &gt;&gt;
                                        </a>
                                    </td>
                                </tr>
                                <tr bgcolor="#7a7f89" class="reusableColor5">
                                    <td height="15" align="center" width="354">
                                        ��Ʒ����
                                    </td>
                                    <td align="center" width="83">
                                        ����
                                    </td>
                                    <td width="80" align="center">
                                        ���ͻ���
                                    </td>
                                    <td align="center" width="78">
                                        ����
                                    </td>
                                    <td width="43" align="center">
                                        ����
                                    </td>
                                    <td width="110" align="center">
                                        �Ż�
                                    </td>
                                    <td width="100" align="center">
                                        С��
                                    </td>
                                </tr>
                                <tr>
                                    <td align='left' width="305">
                                        <span class="ProductUrl">
                                            <a href='fbx.html'
                                            target='_blank'>
                                                ���ʴ�ñ�����г����޷���ͯװ����130-160�� ����ɫ(���Ʒ)
                                            </a>
                                        </span>
                                    </td>
                                    <td align='center'>
                                        160
                                    </td>
                                    <td align='center' class="DeleteWord">
                                        59��
                                    </td>
                                    <td align='center' class="DeleteWord">
                                        ��119.00
                                    </td>
                                    <td align='center' class="DeleteWord">
                                        1
                                    </td>
                                    <td align='center' class="DeleteWord">
                                        -
                                    </td>
                                    <td align='center' class="DeleteWord">
                                        ��119.00
                                    </td>
                                </tr>
                            </table>
                        </span>
                        <div class="amountArea" style="width:760px; border-top:1px solid #7A7F89;">
                            <ul style=" margin:0px; padding:0px;">
                                <li style="padding:0px;">
                                    <a href="shopping.html"
                                    id="SplitUrl1">
                                        �ص����ﳵ���޸Ĳ�Ʒ&gt;&gt;
                                    </a>
                                </li>
                                <li>
                                    ��Ʒ�����ܼƣ�1��
                                </li>
                                <li>
                                    ���ͻ����ܼƣ�
                                    <span id="LabelGiftPoint">
                                        59
                                    </span>
                                    ��
                                </li>
                                <li>
                                    ���ѻ����ܼƣ�
                                    <span id="LabelTotalPoints">
                                        0
                                    </span>
                                    ��
                                </li>
                                <li style="text-align:right;float:right; padding:0px;">
                                    ��Ʒ���ƣ���
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
                                    ����˵��
                                </div>
                                <span class="blank5">
                                </span>
                                <div class="comBg hide" id="Messge">
                                    <h2>
                                        ����Ҫ����˵����
                                    </h2>
                                    <div class="shuoming">
                                        <div class="shuomingLeft">
                                            ����������
                                        </div>
                                        <div class="shuomingRight">
                                            <textarea class="" cols="" rows="" name="textComment" id="textComment"
                                            onclick="clearContent();">
                                                ��������50������
                                            </textarea>
                                        </div>
                                    </div>
                                </div>
                                <span class="blank8">
                                </span>
                                <div class="moneyCardLeftHead">
                                    <img alt="" src="images/hideTag.gif"
                                    onclick="ControlImg(this,'Card_String');" id="CardControl">
                                    ʹ����Ʒ��
                                </div>
                                <span class="blank5">
                                </span>
                                <div class="comBg hide" id="Card_String">
                                    <h2 id="CardQ">
                                        ������Ʒ����
                                    </h2>
                                    <div class="lipinCard">
                                        <div class="lipinCardLeft">
                                            ���ţ�
                                        </div>
                                        <div class="lipinCardRight">
                                            <input type="text" class="Fpassword" name="CardID" id="CardID">
                                        </div>
                                    </div>
                                    <span class="blank10">
                                    </span>
                                    <div class="lipinCard">
                                        <div class="lipinCardLeft">
                                            ���룺
                                        </div>
                                        <div class="lipinCardRight">
                                            <input type="password" class="Fpassword" name="CardPassWord" id="CardPassWord">
                                            <input type="button" class="yanzhengBtn" onClick="PaidCard();" value="�� ֤">
                                        </div>
                                    </div>
                                </div>
                                <span class="blank8">
                                </span>
                                <div class="moneyCardLeftHead">
                                    <img alt="" onClick="ControlImg(this,'Invoiceo');" src="images/hideTag.gif">
                                    ����Ʊ
                                </div>
                                <span class="blank5">
                                </span>
                                <div class="comBg hide" id="Invoiceo">
                                    <h2>
                                        ����Ҫ���߷�Ʊ��
                                        <input type="radio" name="IsInvoice" onClick="$('#InvoiceTitle').attr('disabled','');"
                                        value="1">
                                        ��
                                        <input type="radio" name="IsInvoice" onClick="$('#InvoiceTitle').attr('disabled','disabled');"
                                        value="0">
                                        ��
                                    </h2>
                                    <span class="blank8">
                                    </span>
                                    <div class="lipinCard">
                                        <div class="lipinCardLeft">
                                            ��Ʊ̧ͷ��
                                        </div>
                                        <div class="lipinCardRight">
                                            <input type="text" class="Fpassword" id="InvoiceTitle" name="InvoiceTitle">
                                        </div>
                                    </div>
                                    <span class="blank10">
                                    </span>
                                    <div class="lipinCard">
                                        <div class="lipinCardLeft">
                                            ��Ʊ���ݣ�
                                        </div>
                                        <div class="lipinCardRight">
                                            <select class="selFP" name="InvoiceType">
                                                <option selected="selected" value="��װ">
                                                    ��װ
                                                </option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <span class="blank8">
                                </span>
                                <!--1203���beigin-->
                                <div class="moneyCardLeftHead">
                                    <img onClick="ControlImg(this,'IsCasingPanal');" src="images/hideTag.gif"
                                    alt="" />
                                    ��ƷĿ¼��
                                </div>
                                <span class="blank5">
                                </span>
                                <div class="comBg hide" id="IsCasingPanal">
                                    <h2>
                                        �Ƿ񱾴ζ����д����²�ƷĿ¼�᣿
                                        <input type="radio" name="IsCasing" value="0" />
                                        ��
                                        <input name="IsCasing" checked="checked" type="radio" value="1" />
                                        ��
                                    </h2>
                                    <div class="prutitledetail">
                                        <div>
                                            �������ջ�ʱδ�յ���ƷĿ¼�ᣬ�벦��
                                            <span>
                                                400-650-7099
                                            </span>
                                            ֱ����� ��ȡ���²�ƷĿ¼��
                                            <span>
                                                <a href="#">
                                                    ��������>>
                                                </a>
                                            </span>
                                        </div>
                                        <span class="blank15">
                                        </span>
                                    </div>
                                </div>
                                <span class="blank8">
                                </span>
                                <!--1203���end-->
                            </div>
                            <div class="moneyCardRight">
                                <ul style=" margin:0px; padding:0px;">
                                    <li>
                                        �˷ѣ���
                                        <span id="LabelTraMoney">
                                            0.00
                                        </span>
                                    </li>
                                    <li>
                                        ��Ʒ����֣���
                                        <span id="userpaidprice">
                                            0.00
                                        </span>
                                    </li>
                                    <li>
                                        �����˻�����֣���
                                        <span id="userBankprice">
                                            0.00
                                        </span>
                                    </li>
                                    <li style="font-size: 14px; color: rgb(161, 0, 0);">
                                        ������ҪΪ����֧������
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
                        <!--��˶�������Ϣ��ȷ������������ύ������ <input type="image" src="https://sslimg.vancl.com/NewVancl/New_Shopping/button_tjdd.gif"
                        style=" vertical-align:middle;"/>
                        -->
                        <span id="aftersubmittext" style="display:none;">
                            <img id="aftersubmitimg" src='https://sslimg.vancl.com/logo/loading.gif'
                            class="imglodding">
                            ����Ϊ���ύ�����Ժ�...
                        </span>
                        <span id="submittext">
                            ��˶�������Ϣ��ȷ������������ύ������
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
                <!--���ֲ�-->
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
                //�ջ�����Ϣ
                var yuan_Address = getCookie("ShoppingCar_Address");
                //���ͷ�ʽ
                var yuan_DeliveryType = getCookie("Transfercookie");
                //֧����ʽ
                var yuan_PayType = getCookie("Paymentcookie");
                //�ͻ�ʱ��
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
                            $("#onchangetype1").text("���ô��ַ�ʽ��Ԥ�����Ķ���������Ϊ" + res.data.length + "���ͳ���������²�Ʒ�б�");
                            $("#setHousecodeCount").val(res.data.length);
                            $("#onchangetype2").text("���ô��ַ�ʽ��Ԥ�����Ķ�������" + res.data[0].houseName + "������������²�Ʒ�б�");

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
                                $("#editpadding_").html("�������������Ʒ���ܴ���ؿⷿ��������");
                                $("#submittext").html('��˶�������Ϣ��ȷ��������' + res.yidi[0].housename + '�������������ύ��������Ҳ��<a id="resplit2" href="#splitorder"><u>�޸�������ַ�ʽ</u></a>��<a href="/Shopping/Shopping.aspx?RUrl=/Shopping/Shopping_Confirm.aspx&ref=checkout_shift"><u>���ع��ﳵ���޸���Ʒ</u></a>��');
                                $("#resplit2").click(function() {
                                    $("#SplitType1").attr("checked", true);
                                    OnchangeFun(obj, 1, 2);
                                });
                            }
                            if (res.data.length > 1) {
                                $("#SplitUrl1").attr("href", "/Shopping/Shopping.aspx?RUrl=/Shopping/Shopping_Confirm.aspx&ref=checkout_split");
                                $("#SplitUrl").attr("href", "/Shopping/Shopping.aspx?RUrl=/Shopping/Shopping_Confirm.aspx&ref=checkout_split");
                                $("#submittext").html('��˶�������Ϣ��ȷ�ϣ��������ύ��������Ҳ��<a id="resplit1" href="#splitorder"><u>�޸�������ַ�ʽ</u></a>��<a href="/Shopping/Shopping.aspx?RUrl=/Shopping/Shopping_Confirm.aspx&ref=checkout_split"><u>���ع��ﳵ���޸���Ʒ</u></a>��');
                                $("#editpadding_").html("�������������Ʒ���ܻ��֣���");
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
                    var IsPackvalue = "".toLowerCase(); //ת��Сд;
                    if (IsPackvalue == "nopic") {
                        ClosePackselect(); //������Ʒ��װ
                    }
                }
                function checkservercard() {
                    var servercard = "";
                    if (servercard != "") {
                        ServerCardPay(servercard); //����˼������Ʒ��֧��
                    }
                }
                function check68servercardpay(CardID) {
                    var Iscardpay = 'True'.toLowerCase(); //ת��Сд
                    if (Iscardpay == 'false' && CardID.substring(0, 1) == '1') {
                        return false;
                    }
                    return true;
                }
                //checkPick();//����˼���Ƿ���Ʒ��װ
                checkservercard(); //����˼���Ƿ�ʹ����Ʒ��֧��
                //check68servercardpay();//����˼���Ƿ����ʹ����Ʒ��֧������68Ԫ��Ʒ

                function AlertErrMsg(msg, url) {
                    alert(msg);
                    if (url) location.href = url;
                    else location.href = location.href;
                    return false;
                }

                function CheckForOrder() {
                    if (yuan_Address != getCookie("ShoppingCar_Address")) return AlertErrMsg('�����ջ�����Ϣ�����ı䣬������ѡ�����ͷ�ʽ��', '/shopping/Shopping_DeliveryType.aspx');
                    if (yuan_DeliveryType != getCookie("Transfercookie")) return AlertErrMsg('�������ͷ�ʽ�����ı䣬������ѡ��֧����ʽ��', '/shopping/Shopping_PayType.aspx');
                    if (yuan_PayType != getCookie("Paymentcookie")) return AlertErrMsg('����֧����ʽ�����ı䣬��ȷ�ϣ�');
                    if (yuan_DeliveryTime != getCookie("Transfer_Timecookie")) return AlertErrMsg('�����ͻ�ʱ�䷢���ı䣬��ȷ�ϣ�');

                    if (getCookie("ShoppingCar_SelfSuit") == "" && getCookie("ShoppingCar_Point") == "" && getCookie("ShoppingCar") == "") return AlertErrMsg('���Ĺ��ﳵ��û����Ʒ1��');

                    var IsNull = 'False'.toLowerCase();
                    if (CheckedValues('Myform', 'IsInvoice') == "1" && (document.getElementById("Myform").InvoiceTitle.value == null || document.getElementById("Myform").InvoiceTitle.value == ""))
                    //if(CheckedValues('Myform','IsInvoice')=="1" && (document.getElementById("InvoiceTitle").getAttribute("value")=="" || document.getElementById("InvoiceTitle").getAttribute("value")==null))
                    {
                        alert('����д��Ʊ̧ͷ��');
                        return false;
                    }
                    if (document.getElementById("Myform").textComment.value.length > 50) {
                        alert('���Բ��ܳ���50���֣�');
                        return false;
                    }
                    if (IsNull != 'false') {
                        alert('������Ʒȫ��ȱ���������ύ');
                        return false;
                    }
                    if (!SelectProductIsLimit()) //�޹���Ʒֻ�ܹ���
                    {
                        alert('��ڼ䣬ָ����Ʒ���Ŷ����޹�һ��');
                        return false;
                    }
                    var EleseHouseID_ = $("#EleseHouseID").val();
                    if (EleseHouseID_ == "1") {
                        var getHousecodeCount = $("#setHousecodeCount").val();
                        if (!confirm("���Ķ��������Ϊ" + getHousecodeCount + "���ʹ�����ύ�밴��ȷ������ �����밴��ȡ������")) {
                            return false;
                        }
                    } else if (EleseHouseID_ == "2") {
                        if (!confirm("���Ķ�������ӷ����������ύ�밴��ȷ������ �����밴��ȡ������")) {
                            return false;
                        }
                    }
                    if ($("#Card_String #CardQ").length > 0 && $("#CardID").val() != "" && $("#CardPassWord").val() != "") {
                        try {
                            SubmitPaidCard(); //�Զ���֤��Ʒ��
                        } catch(ex) {}
                    }
                    if (CheckMcDonaldNotPresent()) {
                        alert("�����ڱ�ҳ�����Ϸ����뻶�ֶһ����Ŀ��ź����룬���ɵֿۺ������˷�");
                        $("#CardID").focus();
                        return false;
                    }
                    ///�����ظ��ύ
                    SetRepeatsubmit();
                }
                ///�����ظ��ύ
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
                //��ҵ������ʾ
                if ($("#cib").val().trim() == "error") {
                    alert("��ͨ����ҵ���������̳ǽ��ж��������ʽ��Ĭ��Ϊ��ҵ��������֧���������ύ��������24Сʱ��֧���������֧���������Զ�ȡ��");
                }
            </script>
            <!--Bottom-->
            <div id="bottom" align="center">
                <div id="bottoms">
                    <p class="bZp3">
                        Copyright 2007 - 2011 fendou.com All Rights Reserved ��ICP֤100557��
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
            < table width = "758"cellspacing = "0"cellpadding = "0"border = "0"class = "Producttable" > <tbody > <tr > <td align = "left"colspan = "4"class = "fontSty02" > <strong > ��Ʒ�嵥 < /strong></td > <td valign = "bottom"align = "right"class = "paddSty"colspan = "3" > <a href = "/Shopping/Shopping.aspx?RUrl=/Shopping/Shopping_Confirm.aspx"id = "SplitUrl" > �ص����ﳵ���޸Ĳ�Ʒ & gt; & gt; < /a></td > </tr>
    <# for(j=0;j<obj.length;++j) { #>
    <tr>
        <td align="left" colspan="7"><strong>����<#= (j+1) #></strong > <span style = "padding-left: 65px;" > �����ⷿ�� < strong style = "color:#A10000;" > <# = obj[j].houseName# > </strong> ������Ԥ��<strong style="color: #A10000"><#= obj[j].HouceTime #></strong > ���ʹ� < /span></td > </tr>
    <tr bgcolor="#7a7f89" class="reusableColor5">
        <td width="354" height="15" align="center">��Ʒ����</td > <td width = "83"align = "center" > ���� < /td>
        <td width="80" align="center">���ͻ���</td > <td width = "78"align = "center" > ���� < /td>
        <td width="43" align="center">����</td > <td width = "110"align = "center" > �Ż� < /td>
        <td width="100" align="center">С��</td > </tr> 
	<# for(i=0;i<obj[j].adetail.length;++i) { #>
    <tr>
        <td align="left"><span class="ProductUrl"><a target="_blank" href="<#= obj[j].adetail[i].ProductUrl #>"><#= obj[j].adetail[i].ProductName #></a > </td>
        <td width="83" align="center"><#= obj[j].adetail[i].Size #></td > <td width = "80"align = "center" > <# = obj[j].adetail[i].PresentPoint# > </td>
        <td width="78" align="center"><#= obj[j].adetail[i].SellPrice #></td > <td width = "43"align = "center" > <# = obj[j].adetail[i].OrderAmount# > </td>
        <td width="110" align="center"><#= obj[j].adetail[i].Discount #></td > <td width = "100"align = "center" > <# = obj[j].adetail[i].ProductPrice# > </td>
    </tr > <#
        }# > <#
        if (obj.length > 1) {# > <tr > <td align = "right"name = "ordersplitatarm"colspan = "7" > <span > ��Ʒ���ƣ��� < span id = "NewMoney<#= obj[j].housecode #>" > <# = obj[j].price# > </span></span > <br > �˷ѣ��� < span id = "TraMoney<#= obj[j].housecode #>" > <# = obj[j].TransferPrice# > </span><br> ��Ʒ����֣�   ��<span id="CardPayMoney<#= obj[j].housecode #>"><#= obj[j].CardPayMoney #></span > <br > �����˻�����֣��� < span id = "UserBankprice<#= obj[j].housecode #>" > <# = obj[j].UserBankPayMoney# > </span>
            <br><input type="hidden" value="<#= obj[j].UserBankPayMoney #>" id="hiddenBankprice<#= obj[j].housecode #>">Ӧ�տ��   ��<span id="CollectMoney<#= obj[j].housecode #>"><#= obj[j].mustPayMoney #></span > <br > </td>
    </tr > <#
        }# > <#
    }# > </tbody>
</table > 
        </script>
        <script id="quehuoInfo" type="text/html">
            < span id = "ForOrderList" > <table width = "758"cellspacing = "0"cellpadding = "5"border = "0" > <tbody > <tr > <td align = "left"class = "fontSty04"colspan = "5" > �ǳ���Ǹ�������������²�ƷĿǰ�ⷿ��ʱȱ�������ڲ��ܹ��� < /td>
</tr > <#
            for (i = 0; i < obj.length; ++i) {# > <tr > <td width = "394"align = "left" > <a target = "_blank"href = "<#= obj[i].ProductUrl #>" > <# = obj[i].ProductName# > </a></td > <td width = "83"align = "center" > <# = obj[i].Size# > </td>
 <td width="88" align="center">��<#= obj[i].SellPrice #></td > <td width = "63"align = "center" > <# = obj[i].OrderAmount# > </td>
 <td width="150" align="center" class="tit2b">��<#= obj[i].ProductPrice #></td > </tr>
 <# } #>
</tbody > </table>
</span > 
        </script>
        <script id="yidiInfo" type="text/html">
            < span id = "ElseHouseList" > <#
            for (j = 0; j < obj.length; ++j) {# > <table width = "758"cellspacing = "0"cellpadding = "5"border = "0" > <tbody > <tr > <td align = "left"class = "fontSty04"colspan = "5" > �ǳ���Ǹ������������Ʒ����������Ŀⷿ�޷�ȫ�����㣬���������Ŷ������� < # = obj[j].housename# > ������ < /td>
</tr > <#
                for (i = 0; i < obj[j].adetail.length; ++i) {# > <tr > <td width = "270"align = "left" > <a target = "_blank"href = "<#= obj[j].adetail[i].ProductUrl #>" > <# = obj[j].adetail[i].ProductName# > </a></td > <td width = "45"align = "center" > <# = obj[j].adetail[i].Size# > </td>
 <td width="88" align="center"><!--��<#= obj[j].adetail[i].SellPrice #>--></td > <td width = "63"align = "center" > <!--<# = obj[j].adetail[i].OrderAmount# > --></td>
 <td width="150" align="center" class="tit2b"><!--��<#= obj[j].adetail[i].ProductPrice #>--></td > </tr>
 <# } #>
</tbody > </table>
<# } #>
</span > 
        </script>
    </body>

</html>

