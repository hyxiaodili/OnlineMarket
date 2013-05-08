<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    
    <head>
        <title>
            购物车-奋斗商城
        </title>
        <meta name="keywords" content=" 服装,直销,衬衣,衬衫,牛津纺,经纬80公里全棉衬衫,领带,毛背心,卡其裤"
        />
        <meta name="description" content="由欧美著名设计师领衔企划，集结顶级男装品牌经典款式之精华，同时参考亚洲男士体型特点，精选高支面料贴身制作，让用户以中等价位享受奢侈品质，提倡简约、纵深、自在、环保。"
        />
        <link type="text/css" rel="stylesheet" href="css/gwc.css" />
        <link href="css/footer.css" type="text/css" rel="stylesheet" />
        <script type="text/javascript">
            var WebSite = "http://www.vancl.com";
            var WebSiteHttps = "https://www.vancl.com";
        </script>
        <script src="PublicControls/Js/jquery.js" language="javascript">
        </script>
        <script src="PublicControls/Js/jquery.fn.Loadding.js" language="javascript">
        </script>
        <script src="PublicControls/Js/cookies_oper.js" language="javascript">
        </script>
        <script src="PublicControls/Js/ShoppingUrl.js" language="javascript">
        </script>
        <script language="javascript" src="PublicControls/Js/StringTrim.js">
        </script>
        <script src="PublicControls/Js/SaleShoppingCartOper.js" language="javascript">
        </script>
        <script src="PublicControls/Js/SaleShoppingCar.js" language="javascript">
        </script>
        <script src="PublicControls/Js/gototop.js" language="javascript">
        </script>
        <script type="text/JavaScript" src="js/google-analytics.js">
        </script>
        <style type="text/css">
            <!-- .hide{ display:none; } -->
        </style>
    </head>
    
    <body id="body" class="cols_manage">
        <form name="Form1" id="Form1" method="post" action="">
            <center>
                <div id="Head1" align="left">
                    <img src="images/log.gif" width="311" height="39" alt="Vancl" />
                   
                </div>
                <span id="Label_Error">
                </span>
                <div id="gwc">
                    <div class="mcar">
                        <img src="images/pic_gwc__r2_c2.jpg" alt="我的购物车" />
                    </div>
                    <div class="title">
                        <span id="transferSpan">
                        </span>
                    </div>
                    <div class="jl">
                        <a href="shopping_addr.html">
                            <img src="images/pic_gwc__r2_c10.jpg" alt="去结算" />
                        </a>
                    </div>
                    <div id="divPointError" style="margin:0 0 10px 0; float:left; display:none">
                        <div class="pointErrorMsg">
                            您目前的积分为：
                            <span id="myPointNumber">
                                0
                            </span>
                            分，本次购物需支付：
                            <span id="needPointNumber">
                                0
                            </span>
                            分，请修改购物车中的积分换购产品。
                        </div>
                        <img src="images/jifenbuzhu.gif" border="0" usemap="#Map" id="imgPointError"
                        />
                        <map name="Map" id="Map">
                            <area shape="rect" coords="962,9,972,19" href="javascript:ClosePointError();"
                            />
                        </map>
                    </div>
                    <div class="bxSty">
                        <!--Product-->
                        <table border="0" cellspacing="0" cellpadding="0" class="tabSty01" id="shoppingCatTable">
                            <tr bgcolor="#7a7f89" class="trSty01">
                                <td width="105" height="32" align="center">
                                    商品
                                </td>
                                <td width="260" height="32" align="center">
                                    名称
                                </td>                               
                                <td width="66" height="32" align="center">
                                    单价
                                </td>
                                <td width="81" height="32" align="center">
                                    数量
                                </td>
                                
                                <td width="106" height="32" align="center">
                                    小计
                                </td>
                                <td width="60" align="center">
                                    操作
                                </td>
                                <td width="12">
                                </td>
                            </tr>
                            <tbody id="productList">
                            </tbody>
                            <tbody id="pointProductList">
                            </tbody>
                            <tbody id="suitList">
                            </tbody>
                            <tbody id="mustPresentList">
                            </tbody>
                            <tbody id="notMustPresentList">
                            </tbody>
                        </table>
                        <table width="97.3%" border="0" cellpadding="0" cellspacing="0" class="dobuleBorder">
                            <tr>
                                <td valign="top" align="right" class="tdStyProductTotal">
                                    产品数量总计：
                                    <span class="colSty " id="spTotalCount">
                                        0
                                    </span>
                                    <span class="colSty sty008">
                                        件
                                    </span>
                                   产品金额总计：
                                    <span id="giftPoint" class="colSty ">
                                        0
                                    </span>
                                    <span class="colSty sty008">
                                        ￥
                                    </span>
                                   实际金额总计：
                                    <span id="totalPoint" class="colSty ">
                                        0
                                    </span>
                                    <span class="colSty sty010">
                                        ￥
                                    </span>
                                </td>
                            </tr>
                        </table>
                        <table border="0" cellspacing="0" cellpadding="0" class="tabSty01">
                            <tr>
                                <td colspan="2" align="left" valign="top" class="tdSty03">
                                    <a href="index.html">
                                        <img src="images/pic_gwc__r10_c3.jpg" width="95" height="25" alt="继续购物"
                                        />
                                    </a>
                                    <a href="javascript:ClearShoppingCar();">
                                        <img src="images/pic_gwc__r10_c8.jpg" width="95" height="25" class="jl02"
                                        alt="清空购物车" />
                                    </a>
                                </td>
                                <td align="left">&nbsp;
                                    
                                </td>
                                <td align="center">&nbsp;
                                    
                                </td>
                                <td colspan="3" align="right" valign="top" class="tdSty04">
                                   <!--  <a href="javascript:ShoppingCarPay();"> -->
								   <a href="shopping_addr.html">
                                        <img src="images/pic_gwc__r2_c10.jpg" alt="去结算" />
                                    </a>
                                </td>
                            </tr>
                        </table>
                        <!--Product end-->
                    </div>
                    <div id="OffProductList">
                    </div>
                    <!-- E 新增加样式及代码 -->
                    <table width="760" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td align="left" valign="middle">
                                <span id="TenPayNotice">
                                </span>
                            </td>
                        </tr>
                    </table>
                    <span id="leavelNotMustPresentLsit">
                    </span>
                    <div class="sty006 reusableColor3" align="left">
                        您在购物过程中有任何疑问，请查阅
                        <a href="#" target="_blank">
                            <span class="reusableColor1">
                                帮助中心
                            </span>
                        </a>
                        或
                        <a href="mailto:fendou@fendoujiaoyu.com" target="_blank">
                            <span class="reusableColor1">
                                联系客服
                            </span>
                        </a>
                    </div>
                    <dl class="dobuleBorder">
                        <dt>
                            <strong>
                                关于“我的购物车”
                            </strong>
                        </dt>
                        <dd>
                            ·为方便您提交订单，您添加至“我的购物车”中已经选择的、尚未提交订单的商品清单，我们将为您保留15天。
                            <br />
                            ·在商品保留期间，您所选择商品的价格、优惠政策、库存、配送时间等信息可能会有所变化，请以网页最新信息为准。
                        </dd>
                    </dl>
                </div>
                <div id="bottom" align="center">
                    <div id="bottoms">
                        <p class="bZp3">
                            Copyright 2007 - 2011 fendoujiaoyu.com All Rights Reserved 京ICP证100557号
                        </p>
                        <p class="bZp2">
                            <a href="http://www.ectrustprc.org.cn/seal/splash/1000020.htm" target="_blank">
                                <img src="images/redlogo.gif" border="0" />
                            </a>
                            <img src="images/costumeorg.gif" border="0" />
                            <a href="http://www.315online.com.cn/member/315090053.html" target="_blank">
                                <img src="images/wsjybzzx.gif" border="0" />
                            </a>
                        </p>
                    </div>
                </div>
            </center>
        </form>
    </body>

</html>

