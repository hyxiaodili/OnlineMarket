<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    
    <head>
        <title>
            选择送货方式-奋斗商城
        </title>
        <meta name="keywords" content=" 服装,直销,衬衣,衬衫,牛津纺,经纬80公里全棉衬衫,领带,毛背心,卡其裤"
        />
        <meta name="description" content="由欧美著名设计师领衔企划，集结顶级男装品牌经典款式之精华，同时参考亚洲男士体型特点，精选高支面料贴身制作，让用户以中等价位享受奢侈品质，提倡简约、纵深、自在、环保。"
        />
        <link type="text/css" rel="stylesheet" href="css/Reusable.css" />
        <link href="css/footer.css" type="text/css" rel="stylesheet" />
        <link type="text/css" rel="stylesheet" href="css/gmxx.css" />
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
    </head>
    
    <body id="body">
        <center>
            <div id="gmxx">
                <script src="PublicControls/Js/jquery.js" language="javascript">
                </script>
                <div id="Head" align="left">
                    <a href="http://www.fendoujiaoyu.com/">
                        <img src="images/log.gif" width="311" height="39" alt="Vancl" border="0"
                        />
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
                                                    </span>
                                                </a>
                                            </span>
                                        </h2>
                                        <h4 align="left">
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
                                            黑龙江&nbsp;&nbsp;-&nbsp;&nbsp;哈尔滨市&nbsp;&nbsp;-&nbsp;&nbsp;香坊区
                                            <br/>
                                            <span class="reusableColor3">
                                                收货地址：
                                            </span>
                                            哈尔滨市香坊区&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <br/>
                                            <span class="reusableColor3">
                                                邮政编码：
                                            </span>
                                            234234
                                            <br>
                                            <span class="reusableColor3">
                                                联系方式：
                                            </span>
                                            12345678 / 13223232323
                                            </h3>
                                    </span>
                                </div>
                            </td>
                        </tr>
                        <form method="post" name="Myform" id="Myform" action="Shopping_PayType.html"><!-- 此处需要js实现 -->
                            <tr bgcolor="#7a7f89" class="trSty01">
                                <td valign="middle" align="left" class="reusableColor5 xxSty01 typeBottom">
                                    &nbsp;&nbsp;&nbsp;&nbsp;请选择
                                    <strong>
                                        配送方式　
                                    </strong>
                                    <span id="Lb1newChange">
                                    </span>
                                </td>
                            </tr>
                            <span id="Label_Transfer">
                                <tr>
                                    <td class="typeTd1">
                                        <div class="psFs2 Paymentclass" align="left">
                                            <li align="left">
                                                <input type='radio' name='Transfer' value='01' checked>
                                                快递－支持货到付款－全场购物满59元免运费。
                                                <span class="reusableColor1">
                                                    <a href='#' target='_blank'>
                                                        查看货到付款配送范围
                                                    </a>
                                                </span>
                                                <br/>
                                                <br/>
                                                <span class="typeSpan1">
                                                    货到付款：仅限市中心区域，不支持乡村镇，其它地区EMS款到发货
                                                </span>
                                            </li>
                                            <li align="left">
                                                <input type='radio' name='Transfer' value='05'>
                                                EMS－不支持货到付款。　
                                                <span class="reusableColor3">
                                                    </br>
                                                    </br>
                                                    　　　"款到快递"替代原"平邮"送货方式，送货更快。全场购物满59元免运费。
                                                </span>
                                                <span class="reusableColor1">
                                                    <a href='/help/Transfer.htm' target='_blank'>
                                                        查看货到付款配送范围
                                                    </a>
                                                </span>
                                            </li>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="typeTd2">
                                        <input class="typeInput" type="image" src="images/button_qr.gif"
                                        />
                                    </td>
                                </tr>
                            </span>
                            <input type="hidden" name="Step_Transfer" value="true" />
                            <input type="hidden" name="Transfervalue" value="" />
                        </form>
                    </table>
                    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tabSty01">
                        <tr bgcolor="#dcdfe5" class="trSty01">
                            <td align="left" class="reusableColor3 typeBottom">
                                &nbsp;&nbsp;&nbsp;&nbsp;接下来您还需要选择 支付方式 送货时间。
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <script language="javascript" type="text/javascript">
                //CheckedItem("Myform","Transfer",Myform.Transfervalue.value);
                
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
    </body>

</html>

