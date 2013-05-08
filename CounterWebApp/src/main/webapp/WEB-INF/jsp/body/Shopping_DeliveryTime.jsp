<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    
    <head>
        <title>
            选择送货时间-奋斗商城
        </title>
        <meta name="keywords" content="VANCL  凡客诚品 服装,直销,衬衣,衬衫,牛津纺,经纬80公里全棉衬衫,领带,毛背心,卡其裤"
        />
        <meta name="description" content="VANCL出品，由欧美著名设计师领衔企划，集结顶级男装品牌经典款式之精华，同时参考亚洲男士体型特点，精选高支面料贴身制作，让用户以中等价位享受奢侈品质，提倡简约、纵深、自在、环保。"
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
        <script language="javascript" src="PublicControls/Js/ConsigneeCheck.js">
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
                                                <a href="Shopping_Address.html">
                                                    <span class="addFontCol">
                                                        修改
                                                </a>
                                                </span>
                                                </a>
                                            </span>
                                        </h2>
                                        <h3 align="left">
                                            <span class="reusableColor3 letterSpac">
                                                收货人
                                            </span>
                                            <span class="reusableColor3 letterSpac1">
                                                ：
                                            </span>
                                            whj
                                            <br/>
                                            <span class="reusableColor3">
                                                地　　区：
                                            </span>
                                            黑龙江&nbsp;&nbsp;-&nbsp;&nbsp;哈尔滨市&nbsp;&nbsp;-&nbsp;&nbsp;龙华区
                                            <br/>
                                            <span class="reusableColor3">
                                                收货地址：
                                            </span>
                                            fdsfsf
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
                                        <span class="reusableColor4 modiSty" style="margin-left:635px; font:100 12px/1 '宋体';">
                                            <a href="Shopping_DeliveryType.html">
                                                <span class="addFontCol">
                                                    修改
                                                </span>
                                            </a>
                                        </span>
                                    </h2>
                                    <span id="TransferString">
                                        <h3 align="left">
                                            快递－支持货到付款－全场购物满59元免运费。
                                        </h3>
                                    </span>
                                    <h2 class="h2new" align="left">
                                        支付方式&nbsp;
                                        <span class="reusableColor4 modiSty" style="margin-left:635px; font:100 12px/1 '宋体';">
                                            <a href="Shopping_PayType.html">
                                                <font color='#a10000'>
                                                    修改
                                                </font>
                                            </a>
                                        </span>
                                    </h2>
                                    <h4 align="left">
                                        <span id="PaymentsString">
                                            在线支付-网汇通
                                        </span>
                                    </h4>
                                </div>
                            </td>
                        </tr>
                        <tr bgcolor="#7a7f89" class="trSty01">
                            <td align="left" class="reusableColor5 xxSty01 typeBottom">
                                &nbsp;&nbsp;&nbsp;&nbsp;请选择
                                <strong>
                                    送货时间
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <form name="Form1" method="post" id="Form1" action="Shopping_Complete.html" onsubmit="return Check_Form(this);">
                                <td>
                                    <ul class="psFs1">
                                        <li class="errTimeLi">
                                            <span id="errorTime">
                                            </span>
                                        </li>
                                        <span id="Transfer_Timestring">
                                            <li>
                                                <input type="radio" name="Transfer_Time" value="0" style="border:none;"
                                                />
                                                工作日、双休日与假日均可送货
                                            </li>
                                            <li>
                                                <input type="radio" name="Transfer_Time" value="1" style="border:none;"
                                                />
                                                只有双休日、假日送货（工作日不用送货）
                                            </li>
                                            <li>
                                                <input type="radio" name="Transfer_Time" value="2" style="border:none;"
                                                />
                                                只有工作日送货（双休日、假日不用送）&nbsp;&nbsp;&nbsp;&nbsp;
                                                <span class="reusableColor3">
                                                    写字楼/商用地址客户选择
                                                </span>
                                            </li>
                                            <li>
                                                <input type="radio" name="Transfer_Time" value="3" style="border:none;"
                                                />
                                                学校地址（该地址白天没人，请尽量安排其他时间送货）&nbsp;&nbsp;&nbsp;&nbsp;
                                                <span class="reusableColor3">
                                                    特别安排可能超出预计送货天数
                                                </span>
                                            </li>
                                        </span>
                                        <li class="textStytime">
                                            <input type="image" src="images/button_qrsh.gif"
                                            />
                                        </li>
                                    </ul>
                                    <input type="hidden" name="Action_Step_4" value="true" />
                                    <input type="hidden" name="temp_Transfer_Time" value="" />
                                </td>
                            </form>
                        </tr>
                    </table>
                    <!--Button end-->
                    <script language="javascript" type="text/javascript">
                        //CheckedItem("Form1","Transfer_Time",Form1.temp_Transfer_Time.value);
                        function Submit_Form() {
                            if (Check_Form()) {
                                Form1.submit();
                            }
                        }
                        function CheckedValues(form, itemname) {
                            var values = "";
                            //var form=eval(form);
                            var form = document.getElementById(form);
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
                            if (CheckedValues("Form1", "Transfer_Time") == "") {
                                $("#errorTime").addClass("Error1");
                                $("#errorTime").html("<font color=#A10000>请选择送货时间</font>");
                                return false;
                            }
                            return true;
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

