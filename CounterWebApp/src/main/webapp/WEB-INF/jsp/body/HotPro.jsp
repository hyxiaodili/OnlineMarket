<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <script type="text/javascript">
        var WebSite = "http://www.vancl.com";
        var WebSiteHttps = "https://www.vancl.com";
    </script>
    <script type="text/javascript" src="js/jquery-1.2.3.pack.js">
    </script>
    
    <head id="ctl00_Head1">
        <meta http-equiv="Content-Type" content="text/html; charset=uft-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
        <title>
            最新到货通知-奋斗商城
        </title>
        <link href="css/index2.css" type="text/css" rel="stylesheet" />
        <link id="ctl00_CSS_Comm" href="css/comm.css" type="text/css" rel="stylesheet"
        />
        <link href="css/ProductSaleOut.css" rel="Stylesheet" type="text/css"
        charset="utf-8" />
        <link href="css/fc.css" rel="Stylesheet" type="text/css" charset="utf-8"
        />
        <link href="css/colorbox.css" type="text/css" rel="stylesheet" charset="utf-8"
        />
        <script type="text/JavaScript" src="PublicControls/js/ShoppingUrl.js">
        </script>
        <script type="text/JavaScript" src="js/google-analytics.js">
        </script>
        <script type="text/javascript" language="javascript" src="js/union_websource.js">
        </script>
        <script src="js/jquery-1.4.2.min.js" type="text/javascript">
        </script>
        <script type="text/javascript" src="js/ProductSaleOut.js">
        </script>
        <script type="text/javascript" src="js/ProductNoticePoP.js">
        </script>
        <script type="text/javascript" src="js/jQuery.fn.LoadImage.js">
        </script>
        <script src="js/jquery.cookie.js" type="text/javascript">
        </script>
        <script type="text/javascript" src="js/jquery.colorbox.js">
        </script>
    </head>
    
    <body id="body" class="cols_manage">
      <div id="Head">
            <div class="Lheadtop">
                <div class="Lsmallnav">
                    <div class="Llsmallnav">
                        <ul>
							<li>
                                <a class="track" name="head-myaccount" href="a href="#" onclick="this.style.behavior='url(#default#homepage)';this.sethomepage('http://www.fendoujiaoyu.com')">
                                    设为首页
                                </a>
                            </li>
                            <li class="Lfgbar">
                            <!-- <li>
                                <a class="track" name="head-member" href="OrderList.html">
                                    会员独享
                                </a>
                            </li>
                            <li class="Lfgbar">
                            </li>
                            <li>
                                <a class="track" name="head-bbs" href="http://bbs.vancl.com/" target="_blank">
                                    论坛
                                </a>
                            </li>
                            <li class="Lfgbar"> -->
                            </li>
                            <li>
                                <a class="track" name="head-help" href="javascript:window.external.AddFavorite('www.fendoujiaoyu.com','奋斗教育')"
                                target="_blank">
                                    收藏本站
                                </a>
                            </li>
                            <li class="Lfgbar">
                            </li>
                            <li>
                                <a class="track" name="head-tousu" href="mailto:fendou@fendoujiaoyu.com"
                                target="_blank">
                                    联系我们
                                </a>
                            </li>
                            <li class="Lfgbar">
                            </li>
                           <!--  <li>
                                <a class="track" name="head-customer" href="http://bbs.vancl.com/showforum-6.aspx"
                                target="_blank">
                                    在线客服
                                </a>
                            </li>
                            <li class="Lfgbar">
                            </li> -->
							<li>
                                <a class="track" name="head-myaccount" href="OrderList.html">
                                    我的帐户
                                </a>
                            </li>
                            <li class="Lfgbar">
                            </li>
                        </ul>
                    </div>
                    <div class="Lrsmallnav">
                        <img alt="" src="images/nav0827_10.jpg"
                        />
                        <img alt="" src="images/nav0827_11.gif"
                        />
                    </div>
                </div>
				<!-- dsfsff -->
            </div>
            <span class="blank15">
            </span>
            <div class="Lnavarea">
                <div class="Lwelmsg">
                    <div class="Llwelmsg">
                        <div class="welmsgdiv1">
                            <a class="track" name="head-logo" href="http://www.fendoujiaoyu.org/">
                                <img alt="" src="images/log.gif" height="35px" width="350px" />
                            </a>
                        </div>
                        <div id="welcome" class="welmsgdiv2">
                            <span>
                                您好，欢迎光奋斗商城。
                            </span>
                            <a href="login.html">
                                登录
                            </a>
                            <span class="Lloginfg">
                                &nbsp;
                            </span>
                            <a href="reg.html">
                                注册
                            </a>
                        </div>
                    </div>
                    <div class="Lcwelmsg">
                        <div class="welmsgdiv1">
                            <form id="frmKey" action="search_k.html" method="get"
                            accept-charset="utf-8">
                                <span class="blank8">
                                </span>
                                <div>
                                    <input id="skey" onBlur="OnExit(this)" onclick="OnEnter(this)" maxlength="25"
                                    value="" name="k" class="searchtxt" type="text" />
                                    <input class="searchbtn" onClick="javascript:search(this);" type="button"
                                    value="" />
                                </div>
                            </form>
                        </div>
                        <script language="javascript" type="text/javascript">
                            function OnEnter(field) {
                                if (field.value == field.defaultValue) {
                                    field.value = "";
                                }
                            }
                            function OnExit(field) {
                                if (field.value == "")

                                {
                                    field.value = field.defaultValue;
                                }
                            }
                            function search(field) {
                                var cateval = 0;
                                var skeyval = document.getElementById('skey').value;
                                if (skeyval == " 请输入关键词") {
                                    document.getElementById('skey').value = "";
                                } else {
                                    document.getElementById('skey').value = skeyval.replace(">", "").replace("<", "");
                                }
                                document.getElementById("frmKey").submit();
                            }
                        </script>
                    </div>
                    <div class="Lrwelmsg">
                        <div class="welmsgdiv1">
                            <div class="Lrrwelmsg">
                                <div>
                                    <span class="a10000">
                                        购物车
                                    </span>
                                    中有
                                    <span id="prdCount" class="ba10000">
                                        0
                                    </span>
                                    件商品
                                </div>
                                <div>
                                    <p>
                                        合 计
                                        <span id="price" class="ba10000">
                                           0
                                        </span>
                                        元
                                    </p>
                                    ?
                                    <A href="shopping.html">
                                        <img src="images/jsbtn.gif" />
                                    </A>
                                </div>
                            </div>
                            <div class="Lrlwelmsg">
                                <img src="images/nav0827_22.jpg" />
                            </div>
                        </div>
                    </div>
                </div>
                <span class="blank12">
                </span>
                <div class="Lnavlist">
                    <div class="Lkindnav">
                        <div class="Lkindleft">
                        </div>
                        <div class="Lkindcenter">
                            <div class="Lkindbtm">
                                <div class="Lkindbtmleft">
                                    <div id="floor_nav">
                                        <ul class="floors">
											<li id="floor_0">
                                                <a class="track" name="head-floor-1" href="index.html">
                                                    首页
                                                </a>
                                            </li>
                                            <li class="dotfgbg">
                                                &nbsp;
                                            </li>
                                            <li id="floor_1">
                                                <a class="track" name="head-floor-1" href="fbx.html">
                                                    男装
                                                </a>
                                            </li>
                                            <li class="dotfgbg">
                                                &nbsp;
                                            </li>
                                            <li id="floor_2">
                                                <a class="track" name="head-floor-2" href="fbx.html">
                                                    女装
                                                </a>
                                            </li>
                                            <li class="dotfgbg">
                                                &nbsp;
                                            </li>
                                            <li id="floor_3">
                                                <a class="track" name="head-floor-3" href="fbx.html">
                                                    童装
                                                </a>
                                            </li>
                                            <li class="dotfgbg">
                                                &nbsp;
                                            </li>
                                            <li id="floor_4">
                                                <a class="track" name="head-floor-4" href="fbx.html">
                                                    鞋
                                                </a>
                                            </li>
                                            <li class="dotfgbg">
                                                &nbsp;
                                            </li>
                                            <li id="floor_5">
                                                <a class="track" name="head-floor-5" href="fbx.html">
                                                    家居
                                                </a>
                                            </li>
                                            <li class="dotfgbg">
                                                &nbsp;
                                            </li>
                                            <li id="floor_6">
                                                <a class="track" name="head-floor-6" href="fbx.html">
                                                    配饰
                                                </a>
                                            </li>
                                            <li class="dotfgbg">
                                                &nbsp;
                                            </li>
                                        </ul>
                                    </div>
                                    <div id="sub_floor_menus">
                                        <div id="sub_floor_1" style=" display :none ;  LEFT: 0px">
                                            <div class="Lfloatdiv">
                                                <style type="text/css">
                                                    .childleft{ display:inline; float:left; width:510px;}
													.childli{ padding:0px 0px; overflow:hidden;}
                                                    .childclass{ width:100px; padding-left:12px; display:inline; float:left;}
                                                    .childleft .childclass a{ background:url(images/squearred.jpg)
                                                    no-repeat left 5px; padding-left:5px; font-size:12px; font-weight:bold;
                                                    color:#a10000;} .childdetail{ display:inline; float:left; width:398px;}
                                                    .childdetail a{ display:inline; float:left;} .childdetail span{ color:#999;
                                                    padding:0px 6px; display:inline; float:left;}
                                                </style>
                                                <div style="background: url(&quot;http://images.vancl.com/header/20110117/navchild_03.gif&quot;) repeat-y scroll right top transparent; width: 620px; overflow: hidden;"
                                                class="navchild">
                                                    <div class="childleft">
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    外套
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    羽绒服
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    夹克
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    西服
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    风衣
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    棉服
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    大衣
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    衬衫
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    长袖衬衫
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    短袖衬衫
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    领带
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    POLO衫/T恤
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    长袖POLO衫
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    短袖POLO衫
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    长袖T恤
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    短袖T恤
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    卫衣
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    基础款卫衣
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    时尚款卫衣
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    经典款卫衣
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="fbx_index.html">
                                                                    针织衫
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    针织背心
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    套头衫
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    针织开衫
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    羊毛衫
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    运动装
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    运动装
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    运动鞋
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    裤子
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    西裤
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    休闲裤
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    牛仔裤
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    运动裤
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    内衣裤
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    平角裤
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    袜子
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    袜子
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                    </div>
                                                  </div>
                                            </div>
                                        </div>
										<div id="sub_floor_2" style=" display :none ;  LEFT: 0px">
                                            <div class="Lfloatdiv">
                                                <style type="text/css">
                                                    .childleft{ display:inline; float:left; width:510px;} .childli{ padding:2px 0px; overflow:hidden;}
                                                    .childclass{ width:100px; padding-left:12px; display:inline; float:left;}
                                                    .childleft .childclass a{ background:url(imges/squearred.jpg)
                                                    no-repeat left 5px; padding-left:5px; font-size:12px; font-weight:bold;
                                                    color:#a10000;} .childdetail{ display:inline; float:left; width:398px;}
                                                    .childdetail a{ display:inline; float:left;} .childdetail span{ color:#999;
                                                    padding:0px 6px; display:inline; float:left;}
                                                </style>
                                                <div style="background: url(&quot;http://images.vancl.com/header/20110117/navchild_03.gif&quot;) repeat-y scroll right top transparent; width: 620px; overflow: hidden;"
                                                class="navchild">
                                                    <div class="childleft">
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-2" href="fbx_index.html">
                                                                    外套
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-2" href="fbx_index.html">
                                                                    羽绒服
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="fbx_index.html">
                                                                    棉服
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="fbx_index.html">
                                                                    大衣
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="fbx_index.html">
                                                                    风衣
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="fbx_index.html">
                                                                    西服
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="fbx_index.html">
                                                                    夹克
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="fbx_index.html">
                                                                    马甲
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-2" href="fbx_index.html">
                                                                    衬衫
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-2" href="fbx_index.html">
                                                                    长袖衬衫
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="fbx_index.html">
                                                                    短袖衬衫
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="fbx_index.html">
                                                                    雪纺衫
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-2" href="fbx_index.html">
                                                                    针织衫
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-2" href="fbx_index.html">
                                                                    长袖针织衫
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="fbx_index.html">
                                                                    短袖针织衫
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="fbx_index.html">
                                                                    毛衣裙
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="fbx_index.html">
                                                                    羊毛/羊绒衫
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-2" href="fbx_index.html">
                                                                    T恤
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2591">
                                                                    印花T恤
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="#pcid=1549">
                                                                    POLO衫
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2305">
                                                                    长袖T恤
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2306">
                                                                    短袖T恤
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2559">
                                                                    无袖T恤
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2783">
                                                                    卫衣
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2787">
                                                                    基础款卫衣
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2788">
                                                                    时尚款卫衣
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2903">
                                                                    经典款卫衣
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-2" href="http://www.vancl.com/channel/sport/">
                                                                    运动装
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-2" href="http://www.vancl.com/channel/sport/search.mvc?cateid=2929">
                                                                    运动装
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="#pcid=1535&s=1&d=0&b=0&p=1&r=40">
                                                                    运动鞋
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-2" href="#pcid=1551">
                                                                    裤子
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-2" href="#pcid=1525">
                                                                    休闲裤
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="#pcid=1773">
                                                                    牛仔裤
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2344">
                                                                    西裤
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2964">
                                                                    运动裤
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="#pcid=1748">
                                                                    分裤短裤
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-2" href="#pcid=1553">
                                                                    裙子
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2682">
                                                                    半裙
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2683">
                                                                    连衣裙
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-2" href="#pcid=1554">
                                                                    内衣
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2026">
                                                                    内裤
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2336">
                                                                    内衣套装
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2372">
                                                                    文胸
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="#pcid=3334">
                                                                    塑身内衣
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2399">
                                                                    吊带/背心
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2580">
                                                                    泳装
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2580">
                                                                    泳装
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-2" href="#pcid=1902">
                                                                    袜子
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2626">
                                                                    打底裤
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2627">
                                                                    连裤袜
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2628">
                                                                    筒袜
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="sub_floor_3" style=" display :none ;  LEFT: 0px">
                                            <div class="Lfloatdiv">
                                                <style type="text/css">
                                                    .childleft{ display:inline; float:left; width:510px;} .childli{ padding:2px 0px; overflow:hidden;}
                                                    .childclass{ width:100px; padding-left:12px; display:inline; float:left;}
                                                    .childleft .childclass a{ background:url(http://images.vancl.com/header/20110117/squearred.jpg)
                                                    no-repeat left 5px; padding-left:5px; font-size:12px; font-weight:bold;
                                                    color:#a10000;} .childdetail{ display:inline; float:left; width:398px;}
                                                    .childdetail a{ display:inline; float:left;} .childdetail span{ color:#999;
                                                    padding:0px 6px; display:inline; float:left;}
                                                </style>
                                                <div style="background: url(&quot;http://images.vancl.com/header/20110117/navchild_03.gif&quot;) repeat-y scroll right top transparent; width: 620px; overflow: hidden;"
                                                class="navchild">
                                                    <div class="childleft">
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-3" href="#pcid=2971">
                                                                    亲子装
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-3" href="#pcid=2972">
                                                                    T恤
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=2973">
                                                                    卫衣
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3333">
                                                                    亲子鞋
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3123">
                                                                    0-3岁/男童
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3131">
                                                                    礼品装
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3129">
                                                                    抱被
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3133">
                                                                    爬爬服
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3130">
                                                                    裤子
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3132">
                                                                    内衣
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3272">
                                                                    棉服
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3124">
                                                                    0-3岁/女童
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3137">
                                                                    礼品装
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3135">
                                                                    抱被
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3139">
                                                                    爬爬服
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3136">
                                                                    裤子
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3138">
                                                                    内衣
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3273">
                                                                    棉服
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3125">
                                                                    4-8岁/男童
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3142">
                                                                    T恤
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3141">
                                                                    polo衫
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3150">
                                                                    卫衣
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3152">
                                                                    针织衫
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3144">
                                                                    夹克
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3146">
                                                                    棉服
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3151">
                                                                    羽绒服
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3145">
                                                                    裤子
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3147">
                                                                    内衣
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3126">
                                                                    4-8岁/女童
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3154">
                                                                    T恤
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3153">
                                                                    polo衫
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3163">
                                                                    卫衣
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3165">
                                                                    针织衫
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3157">
                                                                    夹克
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3159">
                                                                    棉服
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3164">
                                                                    羽绒服
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3158">
                                                                    裤子
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3160">
                                                                    内衣
                                                                </a>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3162">
                                                                    裙子
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3161">
                                                                    配饰
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3127">
                                                                    8岁以上/男童
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3168">
                                                                    T恤
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3167">
                                                                    polo衫
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3173">
                                                                    卫衣
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3175">
                                                                    针织衫
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3169">
                                                                    夹克
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3171">
                                                                    棉服
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3174">
                                                                    羽绒服
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3170">
                                                                    裤子
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3172">
                                                                    内衣
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3128">
                                                                    8岁以上/女童
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3177">
                                                                    T恤
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3176">
                                                                    polo衫
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3184">
                                                                    卫衣
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3186">
                                                                    针织衫
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3178">
                                                                    夹克
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3180">
                                                                    棉服
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3185">
                                                                    羽绒服
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3179">
                                                                    裤子
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3181">
                                                                    内衣
                                                                </a>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3183">
                                                                    裙子
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3182">
                                                                    配饰
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                        <div id="sub_floor_4" style=" display :none ;  LEFT: 0px">
                                            <div class="Lfloatdiv">
                                                <style type="text/css">
                                                    .childleft{ display:inline; float:left; width:510px;} .childli{ padding:2px 0px; overflow:hidden;}
                                                    .childclass{ width:100px; padding-left:12px; display:inline; float:left;}
                                                    .childleft .childclass a{ background:url( images/squearred.jpg)
                                                    no-repeat left 5px; padding-left:5px; font-size:12px; font-weight:bold;
                                                    color:#a10000;} .childdetail{ display:inline; float:left; width:398px;}
                                                    .childdetail a{ display:inline; float:left;} .childdetail span{ color:#999;
                                                    padding:0px 6px; display:inline; float:left;}
                                                </style>
                                                <div style="background: url(&quot;http://images.vancl.com/header/20110117/navchild_03.gif&quot;) repeat-y scroll right top transparent; width: 620px; overflow: hidden;"
                                                class="navchild">
                                                    <div class="childleft">
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-4" href="#pcid=1866">
                                                                    男鞋
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-4" href="#pcid=1592">
                                                                    帆布鞋
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-4" href="#pcid=1405">
                                                                    休闲皮鞋
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-4" href="#pcid=1534">
                                                                    运动休闲鞋
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-4" href="#pcid=1407">
                                                                    凉鞋
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-4" href="#pcid=3018">
                                                                    靴子
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-4" href="#pcid=1532">
                                                                    正装皮鞋
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-4" href="#pcid=1941">
                                                                    户外鞋
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-4" href="#pcid=1581">
                                                                    女鞋
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-4" href="#pcid=1533">
                                                                    休闲皮鞋
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-4" href="#pcid=1593">
                                                                    帆布鞋
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-4" href="#pcid=1535">
                                                                    运动休闲鞋
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-4" href="#pcid=2437">
                                                                    凉鞋
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-4" href="#pcid=2438">
                                                                    拖鞋
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-4" href="#pcid=2907">
                                                                    靴子
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-4" href="#pcid=1955">
                                                                    雪地靴
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <br/>
                                                                <a class="track" name="head-subfloor-4" href="#pcid=1942">
                                                                    户外鞋
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-4" href="#pcid=2555">
                                                                    童鞋
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-4" href="#pcid=2652">
                                                                    帆布鞋
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-4" href="#pcid=2770">
                                                                    运动休闲鞋
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-4" href="#pcid=1231">
                                                                    家居鞋
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-4" href="#pcid=1231&s=1&d=0&b=0&p=1&r=40&attrid_sex_=4655">
                                                                    男款家居鞋
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-4" href="#pcid=1231&s=1&d=0&b=0&p=1&r=40&attrid_sex_=4654">
                                                                    女款家居鞋
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-4" href="http://www.vancl.com/channel/fbx/">
                                                                    帆布鞋
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-4" href="http://www.vancl.com/channel/fbx/">
                                                                    帆布鞋
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-4" href="http://www.vancl.com/channel/lover/search.mvc?t=xie">
                                                                    情侣鞋
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-4" href="http://www.vancl.com/channel/lover/search.mvc?t=xie">
                                                                    情侣鞋
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-4" href="#pcid=3333">
                                                                    亲子鞋
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-4" href="#pcid=3333">
                                                                    亲子鞋
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="sub_floor_5" style=" display :none ;  LEFT: 0px">
                                            <div class="Lfloatdiv">
                                                <style type="text/css">
                                                    .childleft{ display:inline; float:left; width:510px;}
													.childli{ padding:2px 0px; overflow:hidden;}
                                                    .childclass{ width:100px; padding-left:12px; display:inline; float:left;}
                                                    .childleft .childclass a{ background:url(http://images.vancl.com/header/20110117/squearred.jpg)
                                                    no-repeat left 5px; padding-left:5px; font-size:12px; font-weight:bold;
                                                    color:#a10000;} .childdetail{ display:inline; float:left; width:398px;}
                                                    .childdetail a{ display:inline; float:left;} .childdetail span{ color:#999;
                                                    padding:0px 6px; display:inline; float:left;}
                                                </style>
                                                <div style="background: url(&quot;http://images.vancl.com/header/20110117/navchild_03.gif&quot;) repeat-y scroll right top transparent; width: 620px; overflow: hidden;"
                                                class="navchild">
                                                    <div class="childleft">
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2671">
                                                                    厨房用品
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2674">
                                                                    保鲜盒
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2672">
                                                                    清洁巾
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2673">
                                                                    围裙
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-5" href="#pcid=1225">
                                                                    浴室用品
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-5" href="#pcid=1284">
                                                                    毛巾
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=1596">
                                                                    浴帘
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=1636">
                                                                    沙滩巾
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=1961">
                                                                    干发套
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2864">
                                                                    手工皂
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=3338">
                                                                    衣架
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-5" href="#pcid=1228">
                                                                    卧室用品
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-5" href="#pcid=1231">
                                                                    家居鞋
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=1299">
                                                                    床品套装
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=1518">
                                                                    空调毯
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2126">
                                                                    枕头
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2602">
                                                                    地垫
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2981">
                                                                    鞋垫
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2904">
                                                                    家居毯
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2676">
                                                                    收纳用品
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2677">
                                                                    收纳袋
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2678">
                                                                    组合柜
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2679">
                                                                    收纳盒/箱
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2680">
                                                                    便携包
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2681">
                                                                    单肩包
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2712">
                                                                    保温包
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-5" href="#pcid=1853">
                                                                    户外旅行
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-5" href="#pcid=1856">
                                                                    洗漱包
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=3350">
                                                                    保温包
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-5" href="#pcid=1963">
                                                                    护理保健
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2684">
                                                                    电子称
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2816">
                                                                    手工皂
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2840">
                                                                    保健枕
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2842">
                                                                    靠垫
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2905">
                                                                    暖贴
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=3262">
                                                                    鞋塞
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a href="#pcid=3353">
                                                                    装饰用品
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-5" href="#pcid=3354">
                                                                    相框
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=3355">
                                                                    钟表
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=3356">
                                                                    桌椅脚套
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=3357">
                                                                    毛绒玩具
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2764">
                                                                    运动健康
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-5" href="#pcid=3312">
                                                                    瑜伽垫
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=3313">
                                                                    哑铃
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="sub_floor_6" style=" display :none ;  LEFT: 0px">
                                            <div class="Lfloatdiv">
                                                <style type="text/css">
                                                    .childleft{ display:inline; float:left; width:510px;}  .childli{ padding:2px 0px; overflow:hidden;}
                                                    .childclass{ width:100px; padding-left:12px; display:inline; float:left;}
                                                    .childleft .childclass a{ background:url(http://images.vancl.com/header/20110117/squearred.jpg)
                                                    no-repeat left 5px; padding-left:5px; font-size:12px; font-weight:bold;
                                                    color:#a10000;} .childdetail{ display:inline; float:left; width:398px;}
                                                    .childdetail a{ display:inline; float:left;} .childdetail span{ color:#999;
                                                    padding:0px 6px; display:inline; float:left;}
                                                </style>
                                                <div style="background: url(&quot;http://images.vancl.com/header/20110117/navchild_03.gif&quot;) repeat-y scroll right top transparent; width: 620px; overflow: hidden;"
                                                class="navchild">
                                                    <div class="childleft">
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-6" href="#pcid=1970">
                                                                    饰品
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2703">
                                                                    项链/吊坠
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2855">
                                                                    耳饰
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2436">
                                                                    手环/手镯/脚链
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2858">
                                                                    钥匙扣/手机链
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2857">
                                                                    发饰
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <br/>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2856">
                                                                    戒指/袖钉
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-6" href="#pcid=3037">
                                                                    帽子
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-6" href="#pcid=3038">
                                                                    毛线帽
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=3041">
                                                                    布帽
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=3040">
                                                                    棒球帽
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=3039">
                                                                    草帽
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-6" href="#pcid=1282">
                                                                    围巾/围脖
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-6" href="#pcid=1282">
                                                                    围巾
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=3166">
                                                                    围脖
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2970">
                                                                    耳罩
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-6" href="#pcid=1595">
                                                                    腰带
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2067">
                                                                    男款
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2068">
                                                                    女款
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2577">
                                                                    中性款式
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-6" href="#pcid=1997">
                                                                    手套
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-6" href="#pcid=1997">
                                                                    手套
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2653">
                                                                    太阳镜
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2653">
                                                                    太阳镜
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-6" href="#pcid=1587">
                                                                    箱包
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2298">
                                                                    女包
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=3061">
                                                                    帆布包
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2616">
                                                                    运动休闲包
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2426">
                                                                    电脑包
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=3060">
                                                                    男包
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2365">
                                                                    化妆包
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=1588">
                                                                    钱包
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2018">
                                                                    袜子
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2019">
                                                                    男棉袜
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2370">
                                                                    女棉袜
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2906">
                                                                    童棉袜
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2649">
                                                                    连裤袜
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2647">
                                                                    打底裤
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2648">
                                                                    筒袜
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=3011">
                                                                    靴袜
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=3012">
                                                                    袜套
                                                                </a>
                                                            </div>
                                                        </div>
                                                        
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-6" href="#pcid=1279">
                                                                    领带
                                                                </a>
                                                            </div>
                                                           <div class="childdetail">
                                                                <a class="track" name="head-subfloor-6" href="#pcid=1279">
                                                                    领带
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="Lkindbtmright">
                                    <ul>
                                        <li>
                                            <span>
                                                热门专区：&nbsp;&nbsp;
                                            </span>
                                        </li>
                                        <li class="dotfgbg">
                                            &nbsp;
                                        </li>
                                        <li>
                                            <a class="track" name="head-rmzq-1" href="salesrank.html">
                                                热销排行
											</a>
										</li>
                                        <li class="dotfgbg">
                                            &nbsp;
                                        </li>
                                        <li>
                                            <a class="track" name="head-rmzq-5" href="search_k.html">
                                                特惠抢购
											 </a>
										</li>
										<li class="dotfgbg">
                                            &nbsp;
                                        </li>
										<li>
                                            <a class="track" name="head-rmzq-5" href="product_saleout.html">
                                                新品上架
											 </a>
										</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="Lkindright">
                        </div>
                    </div>
                </div>
            </div>
		<!-- dddd -->
        <div style="height:15px; clear:both;overflow:hidden">
        </div>
        <div class="SGIbox">
          <div class="setTab-area">
                <div class="setTab-menu">
                    <ul>
                        <li id="one1" onclick="setTab('#');" class="hover">
                            最近热销商品
                        </li>
                    </ul>
           
                </div>
                <div class="setTab-content">
                    <!--　选项卡1内容 begin -->
                    <div id="con_one_1">
                      <div class="radio-area" id="FirstCategory"></div>
                        <span class="blank0">                        </span>
                        
                        <div class="sort-area">
                          <p class="T03">
                                <img src="images/T03-bg.gif">
                          </p>
                            <div class="sort-today-area">
                                <h2>
                                    <strong>
                                        2011-02-18热销
                                    </strong>
                                    共
                                    <span>
                                        76
                                    </span>
                                    款
                                </h2>
                                <div class="btnArea" style="display:none;">
                                    <button class="sxBtn" onclick="window.location.reload();">
                                        刷新
                                    </button>
                                    <span>
                                        列表更新于2011-02-20 02:05:16
                                    </span>
                                </div>
                                <h3 id="h3lookall1" style="display:block;">
                                    <img src="images/lookDown.gif">
                                    <span onclick="lookAll('1',this);" style="cursor:pointer;">
                                        点击查看全部
                                    </span>
                                </h3>
                                <span class="blank0">
                                </span>
                            </div>
                      </div>
                        <span class="blank10">
                        </span>
                        <div class="today-list" id="Image_List_1">
                            <ul>
                                <li class="today-li">
                                    <div class="pic">
                                        <a href="styleDetail.html"
                                        title="[VT]短袖印花T恤 Bullfighting 白色" target="_blank">
                                            <img src="images/0032050.jpg"
                                            alt="[VT]短袖印花T恤 Bullfighting 白色" title="[VT]短袖印花T恤 Bullfighting 白色">
                                        </a>
                                        <div class="productInfo" style="display:none">
                                            <span class="ProductName">
                                                [VT]短袖印花T恤 Bullfighting 白色
                                            </span>
                                            <span class="prouctCode">
                                                0032050
                                            </span>
                                            <span class="sprice">
                                                49.00
                                            </span>
                                            <span class="vprice">
                                                99.00
                                            </span>
                                            <span class="price">
                                                49.00
                                            </span>
                                            <span class="commentsNumber">
                                                <img src="images/s0.gif" />
                                                <img src="images/s0.gif" />
                                                <img src="images/s0.gif" />
                                                <img src="images/s0.gif" />
                                                <img src="images/s0.gif" />
                                            </span>
                                            <span class="comments">
                                                0
                                            </span>
                                            <span class="pic">
                                                images/0032050-1j201102181828487595.jpg
                                            </span>
                                            <span class="small">
                                                images/0032050-1j201102181828487595.jpg
                                            </span>
                                            <span class="salesFlag">
                                                0
                                            </span>
                                            <span class="realPrice">
                                                49.00
                                            </span>
                                            <span class="shortName">
                                                [VT]短袖印花T恤 Bullfighting..
                                            </span>
                                        </div>
                                    </div>
                                    <p class="list-title">
                                        <a href="styleDetail.html"
                                        title="[VT]短袖印花T恤 Bullfighting 白色" target="_blank">
                                            [VT]短袖印花T恤 Bullfighting 白色
                                        </a>
                                    </p>
                                    <p class="list-Sprice">
                                        售价：49.00
                                    </p>
                                    <p class="list-msg">
                                        类别：
                                        <span>
                                            <a href="/StyleList-3494-1--1-0-0-0/VT.html" title="VT" target="_blank">
                                                VT
                                            </a>
                                        </span>
                                        &nbsp;&nbsp;
                                        <span>
                                            <a href="/StyleList-2747-1--1-0-0-0/NanKuan.html" title="男款" target="_blank">
                                                男款
                                            </a>
                                        </span>
                                    </p>
                                    <div class="listSize">
                                        <p style="width: 36px; color:#BDBCBD;">
                                            尺码：
                                        </p>
                                        <p>
                                            <span>
                                                S
                                            </span>
                                            <span>
                                                M
                                            </span>
                                            <span>
                                                L
                                            </span>
                                            <span>
                                                XL
                                            </span>
                                            <span>
                                                XXL
                                            </span>
                                            <span>
                                                XXXL
                                            </span>
                                        </p>
                                    </div>
                                    <p class="list-msg">
                                        到货：2011-02-18 18:43
                                    </p>
                                    <p class="list-msg">
                                        评论：
                                        <span>
                                            <a href="/Product_CommentList-6459---/pinyin.html" title="" target="_blank">
                                                0
                                            </a>
                                        </span>
                                        条
                                    </p>
                              <li class="today-li">
                                        <div class="pic">
                                            <a href="styleDetail.html"
                                            title="[VT]短袖印花T恤 Bullfighting 灰色" target="_blank">
                                                <img src="images/0032048.jpg"
                                                alt="[VT]短袖印花T恤 Bullfighting 灰色" title="[VT]短袖印花T恤 Bullfighting 灰色">
                                            </a>
                                            <div class="productInfo" style="display:none">
                                                <span class="ProductName">
                                                    [VT]短袖印花T恤 Bullfighting 灰色
                                                </span>
                                                <span class="prouctCode">
                                                    0032048
                                                </span>
                                                <span class="sprice">
                                                    49.00
                                                </span>
                                                <span class="vprice">
                                                    99.00
                                                </span>
                                                <span class="price">
                                                    49.00
                                                </span>
                                                <span class="commentsNumber">
                                                    <img src="images/s0.gif" />
                                                    <img src="images/s0.gif" />
                                                    <img src="images/s0.gif" />
                                                    <img src="images/s0.gif" />
                                                    <img src="images/s0.gif" />
                                                </span>
                                                <span class="comments">
                                                    0
                                                </span>
                                                <span class="pic">
                                                   images/0032048-1j201102181829487595.jpg
                                                </span>
                                                <span class="small">
                                                    images/0032048-1j201102181829487595.jpg
                                                </span>
                                                <span class="salesFlag">
                                                    0
                                                </span>
                                                <span class="realPrice">
                                                    49.00
                                                </span>
                                                <span class="shortName">
                                                    [VT]短袖印花T恤 Bullfighting..
                                                </span>
                                            </div>
                                        </div>
                                        <p class="list-title">
                                            <a href="styleDetail.html"
                                            title="[VT]短袖印花T恤 Bullfighting 灰色" target="_blank">
                                                [VT]短袖印花T恤 Bullfighting 灰色
                                            </a>
                                        </p>
                                        <p class="list-Sprice">
                                            售价：49.00
                                        </p>
                                        <p class="list-msg">
                                            类别：
                                            <span>
                                                <a href="#" title="VT" target="_blank">
                                                    VT
                                                </a>
                                            </span>
                                            &nbsp;&nbsp;
                                            <span>
                                                <a href="#" title="男款" target="_blank">
                                                    男款
                                                </a>
                                            </span>
                                        </p>
                                        <div class="listSize">
                                            <p style="width: 36px; color:#BDBCBD;">
                                                尺码：
                                            </p>
                                            <p>
                                                <span>
                                                    S
                                                </span>
                                                <span>
                                                    M
                                                </span>
                                                <span>
                                                    L
                                                </span>
                                                <span>
                                                    XL
                                                </span>
                                                <span>
                                                    XXL
                                                </span>
                                                <span>
                                                    XXXL
                                                </span>
                                            </p>
                                        </div>
                                        <p class="list-msg">
                                            到货：2011-02-18 18:43
                                        </p>
                                        <p class="list-msg">
                                            评论：
                                            <span>
                                                <a href="#" title="" target="_blank">
                                                    0
                                                </a>
                                            </span>
                                            条
                                        </p>
                              <li class="today-li marginR">
                                            <div class="pic">
                                                <a href="styleDetail.html"
                                                title="[VT]短袖印花T恤 Arms 橄榄绿色" target="_blank">
                                                    <img src="images/0032104.jpg"
                                                    alt="[VT]短袖印花T恤 Arms 橄榄绿色" title="[VT]短袖印花T恤 Arms 橄榄绿色">
                                                </a>
                                                <div class="productInfo" style="display:none">
                                                    <span class="ProductName">
                                                        [VT]短袖印花T恤 Arms 橄榄绿色
                                                    </span>
                                                    <span class="prouctCode">
                                                        0032104
                                                    </span>
                                                    <span class="sprice">
                                                        49.00
                                                    </span>
                                                    <span class="vprice">
                                                        99.00
                                                    </span>
                                                    <span class="price">
                                                        49.00
                                                    </span>
                                                    <span class="commentsNumber">
                                                        <img src="images/s0.gif" />
                                                        <img src="images/s0.gif" />
                                                        <img src="images/s0.gif" />
                                                        <img src="images/s0.gif" />
                                                        <img src="images/s0.gif" />
                                                    </span>
                                                    <span class="comments">
                                                        0
                                                    </span>
                                                    <span class="pic">
                                                        images/0032104-1j201102181827487595.jpg
                                                    </span>
                                                    <span class="small">
                                                       images/0032104-1j201102181827487595.jpg
                                                    </span>
                                                    <span class="salesFlag">
                                                        0
                                                    </span>
                                                    <span class="realPrice">
                                                        49.00
                                                    </span>
                                                    <span class="shortName">
                                                        [VT]短袖印花T恤 Arms 橄榄绿色
                                                    </span>
                                                </div>
                                            </div>
                                            <p class="list-title">
                                                <a href="styleDetail.html"
                                                title="[VT]短袖印花T恤 Arms 橄榄绿色" target="_blank">
                                                    [VT]短袖印花T恤 Arms 橄榄绿色
                                                </a>
                                            </p>
                                            <p class="list-Sprice">
                                                售价：49.00
                                            </p>
                                            <p class="list-msg">
                                                类别：
                                                <span>
                                                    <a href="#" title="VT" target="_blank">
                                                        VT
                                                    </a>
                                                </span>
                                                &nbsp;&nbsp;
                                                <span>
                                                    <a href="#" title="男款" target="_blank">
                                                        男款
                                                    </a>
                                                </span>
                                            </p>
                                            <div class="listSize">
                                                <p style="width: 36px; color:#BDBCBD;">
                                                    尺码：
                                                </p>
                                                <p>
                                                    <span>
                                                        S
                                                    </span>
                                                    <span>
                                                        M
                                                    </span>
                                                    <span>
                                                        L
                                                    </span>
                                                    <span>
                                                        XL
                                                    </span>
                                                    <span>
                                                        XXL
                                                    </span>
                                                    <span>
                                                        XXXL
                                                    </span>
                                                </p>
                                            </div>
                                            <p class="list-msg">
                                                到货：2011-02-18 18:43
                                            </p>
                                            <p class="list-msg">
                                                评论：
                                                <span>
                                                    <a href="#" title="" target="_blank">
                                                        0
                                                    </a>
                                                </span>
                                                条
                                            </p>
                            </ul>
                            <span class="blank10">
                            </span>                           
                        </div>
                        <div id="lookallCon_1">
                        </div>
                        <span class="blank0">
                        </span>
                        <div id="lookAllHide_1">
                            <div id="lookallpara_1" style="display:none;">
                                <span class="date">
                                    2011-02-18
                                </span>
                                <span class="fc">
                                    -1
                                </span>
                                <span class="sc">
                                    -1
                                </span>
                                <span class="nc">
                                    0
                                </span>
                                <span class="iv">
                                    0
                                </span>
                                <span class="page">
                                    1
                                </span>
                                <span class="recordCount">
                                    76
                                </span>
                                <span class="key">
                                </span>
                                <span class="op">
                                    1
                                </span>
                            </div>
                            <span class="blank10">
                            </span>
                        </div>
                        <div class="sort-area">
                            <a name="top2">
                            </a>
                            <p class="T03">
                                <img src="images/T03-bg.gif">
                            </p>
                            <div class="sort-today-area">
                                <h2>
                                    <strong>
                                        2011-02-17热销
                                    </strong>
                                    共
                                    <span>
                                        40
                                    </span>
                                    款
                                </h2>
                                <div class="btnArea" style="display:none;">
                                    <button class="sxBtn" onclick="window.location.reload();">
                                        刷新
                                    </button>
                                    <span>
                                        列表更新于2011-02-20 02:05:16
                                    </span>
                                </div>
                                <h3 id="h3lookall2" style="display:block;">
                                    <img src="images/lookDown.gif">
                                    <span onclick="lookAll('2',this);" style="cursor:pointer;">
                                        点击查看全部
                                    </span>
                                </h3>
                                <span class="blank0">
                                </span>
                            </div>
                        </div>
                        <span class="blank10">
                        </span>
                        <div class="today-list" id="Image_List_2">
                            <ul>
                                <li class="today-li">
                                    <div class="pic">
                                        <a href="styleDetail.html"
                                        title="Angelia 长款针织衫 米白色" target="_blank">
                                            <img src="images/0034183.jpg"
                                            alt="Angelia 长款针织衫 米白色" title="Angelia 长款针织衫 米白色">
                                        </a>
                                        <div class="productInfo" style="display:none">
                                            <span class="ProductName">
                                                Angelia 长款针织衫 米白色
                                            </span>
                                            <span class="prouctCode">
                                                0034183
                                            </span>
                                            <span class="sprice">
                                                149.00
                                            </span>
                                            <span class="vprice">
                                                269.00
                                            </span>
                                            <span class="price">
                                                149.00
                                            </span>
                                            <span class="commentsNumber">
                                                <img src="images/s0.gif" />
                                                <img src="images/s0.gif" />
                                                <img src="images/s0.gif" />
                                                <img src="images/s0.gif" />
                                                <img src="images/s0.gif" />
                                            </span>
                                            <span class="comments">
                                                0
                                            </span>
                                            <span class="pic">
                                               images/0034183-1j201102181730486501.jpg
                                            </span>
                                            <span class="small">
                                               images/0034183-1j201102181730486501.jpg
                                            </span>
                                            <span class="salesFlag">
                                                0
                                            </span>
                                            <span class="realPrice">
                                                149.00
                                            </span>
                                            <span class="shortName">
                                                Angelia 长款针织衫 米白色
                                            </span>
                                        </div>
                                    </div>
                                    <p class="list-title">
                                        <a href="styleDetail.html"
                                        title="Angelia 长款针织衫 米白色" target="_blank">
                                            Angelia 长款针织衫 米白色
                                        </a>
                                    </p>
                                    <p class="list-Sprice">
                                        售价：149.00
                                    </p>
                                    <p class="list-msg">
                                        类别：
                                        <span>
                                            <a href="#" title="女装" target="_blank">
                                                女装
                                            </a>
                                        </span>
                                        &nbsp;&nbsp;
                                        <span>
                                            <a href="#" title="针织衫" target="_blank">
                                                针织衫
                                            </a>
                                        </span>
                                    </p>
                                    <div class="listSize">
                                        <p style="width: 36px; color:#BDBCBD;">
                                            尺码：
                                        </p>
                                        <p>
                                            <span>
                                                XS
                                            </span>
                                            <span>
                                                S
                                            </span>
                                            <span>
                                                M
                                            </span>
                                            <span>
                                                L
                                            </span>
                                            <span>
                                                XL
                                            </span>
                                        </p>
                                    </div>
                                    <p class="list-msg">
                                        到货：2011-02-17 19:05
                                    </p>
                                    <p class="list-msg">
                                        评论：
                                        <span>
                                            <a href="#" title="" target="_blank">
                                                0
                                            </a>
                                        </span>
                                        条
                                    </p>
                              <li class="today-li">
                                        <div class="pic">
                                            <a href="styleDetail.html"
                                            title="七分袖棒棒糖卫衣 花灰色" target="_blank">
                                                <img src="images/0033122.jpg"
                                                alt="七分袖棒棒糖卫衣 花灰色" title="七分袖棒棒糖卫衣 花灰色">
                                            </a>
                                            <div class="productInfo" style="display:none">
                                                <span class="ProductName">
                                                    七分袖棒棒糖卫衣 花灰色
                                                </span>
                                                <span class="prouctCode">
                                                    0033122
                                                </span>
                                                <span class="sprice">
                                                    99.00
                                                </span>
                                                <span class="vprice">
                                                    199.00
                                                </span>
                                                <span class="price">
                                                    99.00
                                                </span>
                                                <span class="commentsNumber">
                                                    <img src="images/s1.gif" />
                                                    <img src="images/s1.gif" />
                                                    <img src="images/s1.gif" />
                                                    <img src="images/s1.gif" />
                                                    <img src="images/s1.gif" />
                                                </span>
                                                <span class="comments">
                                                    1
                                                </span>
                                                <span class="pic">
                                                     images/0033122-1j201101241107459755.jpg
                                                </span>
                                                <span class="small">
                                                     images/0033122-1j201101241107459755.jpg
                                                </span>
                                                <span class="salesFlag">
                                                    0
                                                </span>
                                                <span class="realPrice">
                                                    99.00
                                                </span>
                                                <span class="shortName">
                                                    七分袖棒棒糖卫衣 花灰色
                                                </span>
                                            </div>
                                        </div>
                                        <p class="list-title">
                                            <a href="http://www.vancl.com/StyleDetail_7291_0033122_0/QiFenXiuBangBangTangWeiYiHuaHuiSe.html"
                                            title="七分袖棒棒糖卫衣 花灰色" target="_blank">
                                                七分袖棒棒糖卫衣 花灰色
                                            </a>
                                        </p>
                                        <p class="list-Sprice">
                                            售价：99.00
                                        </p>
                                        <p class="list-msg">
                                            类别：
                                            <span>
                                                <a href="#" title="运动" target="_blank">
                                                    运动
                                                </a>
                                            </span>
                                            &nbsp;&nbsp;
                                            <span>
                                                <a href="#" title="女款" target="_blank">
                                                    女款
                                                </a>
                                            </span>
                                        </p>
                                        <div class="listSize">
                                            <p style="width: 36px; color:#BDBCBD;">
                                                尺码：
                                            </p>
                                            <p>
                                                <span>
                                                    XS
                                                </span>
                                                <span>
                                                    S
                                                </span>
                                                <span>
                                                    M
                                                </span>
                                                <span>
                                                    L
                                                </span>
                                                <span>
                                                    XL
                                                </span>
                                            </p>
                                        </div>
                                        <p class="list-msg">
                                            到货：2011-02-17 11:24
                                        </p>
                                        <p class="list-msg">
                                            评论：
                                            <span>
                                                <a href="#" title="" target="_blank">
                                                    1
                                                </a>
                                            </span>
                                            条
                                        </p>
                              <li class="today-li marginR">
                                            <div class="pic">
                                                <a href="styleDetail.html"
                                                title="七分袖棒棒糖卫衣 天空蓝色" target="_blank">
                                                    <img src="images/0033121.jpg"
                                                    alt="七分袖棒棒糖卫衣 天空蓝色" title="七分袖棒棒糖卫衣 天空蓝色">
                                                </a>
                                                <div class="productInfo" style="display:none">
                                                    <span class="ProductName">
                                                        七分袖棒棒糖卫衣 天空蓝色
                                                    </span>
                                                    <span class="prouctCode">
                                                        0033121
                                                    </span>
                                                    <span class="sprice">
                                                        99.00
                                                    </span>
                                                    <span class="vprice">
                                                        199.00
                                                    </span>
                                                    <span class="price">
                                                        99.00
                                                    </span>
                                                    <span class="commentsNumber">
                                                        <img src="images/s1.gif" />
                                                        <img src="images/s1.gif" />
                                                        <img src="images/s1.gif" />
                                                        <img src="images/s1.gif" />
                                                        <img src="images/s1.gif" />
                                                    </span>
                                                    <span class="comments">
                                                        1
                                                    </span>
                                                    <span class="pic">
                                                       images/0033121-1j201101241112159755.jpg
                                                    </span>
                                                    <span class="small">
                                                        images/0033121-1j201101241112159755.jpg
                                                    </span>
                                                    <span class="salesFlag">
                                                        0
                                                    </span>
                                                    <span class="realPrice">
                                                        99.00
                                                    </span>
                                                    <span class="shortName">
                                                        七分袖棒棒糖卫衣 天空蓝色
                                                    </span>
                                                </div>
                                            </div>
                                            <p class="list-title">
                                                <a href="styleDetail.html"
                                                title="七分袖棒棒糖卫衣 天空蓝色" target="_blank">
                                                    七分袖棒棒糖卫衣 天空蓝色
                                                </a>
                                            </p>
                                            <p class="list-Sprice">
                                                售价：99.00
                                            </p>
                                            <p class="list-msg">
                                                类别：
                                                <span>
                                                    <a href="#" title="运动" target="_blank">
                                                        运动
                                                    </a>
                                                </span>
                                                &nbsp;&nbsp;
                                                <span>
                                                    <a href="#" title="女款" target="_blank">
                                                        女款
                                                    </a>
                                                </span>
                                            </p>
                                            <div class="listSize">
                                                <p style="width: 36px; color:#BDBCBD;">
                                                    尺码：
                                                </p>
                                                <p>
                                                    <span>
                                                        XS
                                                    </span>
                                                    <span>
                                                        S
                                                    </span>
                                                    <span>
                                                        M
                                                    </span>
                                                    <span>
                                                        L
                                                    </span>
                                                    <span>
                                                        XL
                                                    </span>
                                                </p>
                                            </div>
                                            <p class="list-msg">
                                                到货：2011-02-17 11:24
                                            </p>
                                            <p class="list-msg">
                                                评论：
                                                <span>
                                                    <a href="#" title="" target="_blank">
                                                        1
                                                    </a>
                                                </span>
                                                条
                                            </p>
											<p></p>
                            </ul>
                            <span class="blank10">
                            </span>
                        </div>
                        <div id="lookallCon_2">
                        </div>
                        <span class="blank0">
                        </span>
                        <div id="lookAllHide_2">
                            <div id="lookallpara_2" style="display:none;">
                                <span class="date">
                                    2011-02-17
                                </span>
                                <span class="fc">
                                    -1
                                </span>
                                <span class="sc">
                                    -1
                                </span>
                                <span class="nc">
                                    0
                                </span>
                                <span class="iv">
                                    0
                                </span>
                                <span class="page">
                                    1
                                </span>
                                <span class="recordCount">
                                    40
                                </span>
                                <span class="key">
                                </span>
                                <span class="op">
                                    2
                                </span>
                            </div>
                            <span class="blank10">
                            </span>
                        </div>
                   
                  </div>
                    <!--　选项卡1内容 end -->
                    <!--　选项卡2内容 begin -->
                    <!--　选项卡2内容 end -->
                </div>
            </div>
            <div id="float">
                <p>
                    <a href="#">
                        <img title="" alt="" src="images/gotop.gif"
                        />
                    </a>
                </p>
                <p>
                    <a href="javascript:addBookmark(getTitile(),window.location);">
                        <img title="" alt="" src="images/store.gif"
                        />
                    </a>
                </p>
            </div>
            <div id="liulanBox">
                <div class="head">
                    <h2>
                        最近浏览商品
                    </h2>
                    <div class="btnArea">
                        <button class="qingchu" datasrc="javascript:void(0)" alt="清除" title="清除">
                        </button>
                        <button class="shouqi" datasrc="javascript:void(0)" alt="最小化" title="最小化">
                        </button>
                        <button class="zhankai" datasrc="javascript:void(0)" alt="最大化" title="最大化">
                        </button>
                        <button class="btnClose" datasrc="javascript:void(0)" alt="关闭窗口" title="关闭窗口">
                        </button>
                    </div>
                </div>
                <div class="content">
                    <span class="blank15">
                    </span>
                    <div class="left">
                        <a href="javascript:void(0)" title="">
                            <img src="images/left.gif" alt="" title=""
                            />
                        </a>
                    </div>
                    <div class="listArea">
                        <div class="listAreaContent">
                            <ul>
                            </ul>
                        </div>
                    </div>
                    <div class="right">
                        <a href="javascript:void(0)" title="">
                            <img src="images/right.gif" alt="" title=""
                            />
                        </a>
                    </div>
                    <span class="blank12">
                    </span>
                </div>
            </div>
        </div>
        <div id="imgICO" class="ico" style="display:none">
        </div>
        <div id="detail" style="position:absolute">
        </div>
        <script type="text/javascript" src="js/ct.js">
        </script>
        <script type="text/javascript">
            $(function() {
                var cuFirCate = -99;
                var mark = "<img src=\"images/T01.gif\" style=\"";
                var pos = "position:absolute;top:-8px;";
                if (cuFirCate != "-99" && cuFirCate != "VT") {
                    var tleft = $("#RS_" + cuFirCate).offset().left;
                    pos = pos + "left:" + (tleft - 238) + "px;*left:" + (tleft - 238) + "px;";
                    mark = mark + pos + "\">"$(mark).appendTo(".kind-area");
                }
                var cuSecCate = -99;
                if (cuSecCate != "-99") {
                    $(".kind-area").find("li").attr("class", "");
                    $("#SS_" + cuSecCate).parent().attr("class", "onclickC");
                } else {
                    $("#SS_").parent().attr("class", "onclickC");
                }
            });
        </script>
       <div id="bottom" align="center">
            <div id="helpIntro" align="left">
                <dl class="helpLeft">
                    <dt>
                        <strong>
                            新手指南
                        </strong>
                    </dt>
                    <dd>
                        <img src="images/point.gif" width="5"
                        height="8" />
                        <a target="_blank" href="reg.htm">
                            注册新用户
                        </a>
                    </dd>
                </dl>
                <dl>
                    <dt>
                        <strong>
                            配送方式
                        </strong>
                    </dt>
                    <dd>
                        <img src="images/point.gif" width="5"
                        height="8" />
                        <a target="_blank" href="#">
                            配送范围及配送时间
                        </a>
                    </dd>
                    <dd>
                        <img src="images/point.gif" width="5"
                        height="8" />
                        <a target="_blank" href="http://www.vancl.com/help/Trans_1.htm">
                            配送费收取标准
                        </a>
                    </dd>
                </dl>
                <dl>
                    <dt>
                        <strong>
                            售后服务
                        </strong>
                    </dt>
                    <dd>
                        <img src="images/point.gif" width="5"
                        height="8" />
                        <a target="_blank" href="#">
                            退换货政策
                        </a>
                    </dd>
                    <dd>
                        <img src="images/point.gif" width="5"
                        height="8" />
                        <a target="_blank" href="#">
                            如何办理退换货
                        </a>
                    </dd>
                </dl>
                <dl>
                    <dt>
                        <strong>
                            帮助中心
                        </strong>
                    </dt>
                    <dd>
                        <img src="images/point.gif" width="5"
                        height="8" />
                        <a target="_blank" href="#">
                            常见热点问题
                        </a>
                    </dd>
                    <dd>
                        <img src="images/point.gif" width="5"
                        height="8" />
                        <a target="_blank" href="mailto:fendou@fendoujiaoyou.com">
                            联系我们
                        </a>
                    </dd>
                    <dd>
                        <img src="images/point.gif" width="5"
                        height="8" />
                        <a target="_blank" href="http://www.vancl.com/help/Complainting.htm">
                            投诉与建议
                        </a>
                    </dd>
                </dl>
                <dl class="Nosty">
                  <dd>
                        <strong>
                            订购热线                        </strong>
                        （免长途费）
                        <br />
                      <strong class="wdSty">
                          010-58693870                      </strong>                    </dd>
                    <dt>                    </dt>
                    <dd>
                        <strong>
                            客户服务热线                        </strong>
                        （免长途费）
                        <br />
                        <strong class="wdSty">010-58693870</strong></dd>
                </dl>
            </div>
            <div id="bottoms" align="center">
                <p class="about">
                    <a href="index.html" target="_blank">
                        首页
                    </a>
                    |
                    <a href="http://www.fendoujiaoyu.com" target="_blank">
                        公司简介
                    </a>
                    |
                    <a href="#" target="_blank">
                        隐私申明
                    </a>
                    
                    |
                    <a href="#" target="_blank">
                        投诉与建议
                    </a>
                    |
                    
                </p>
                <p class="bZp3">
                    Copyright 2007 - 2011 fendoujiaoyu.com All Rights Reserved 京ICP证100557号
                </p>
                <p class="bZp2">
                    <a href="http://www.ectrustprc.org.cn/seal/splash/1000020.htm" target="_blank">
                        <img src="images/redlogo.gif" width="156" height="46"
                        border="0" />
                    </a>
                    <img src="images/costumeorg.gif" width="156"
                    border="0" height="45" />
                    <a href="http://www.315online.com.cn/member/315090053.html" target="_blank">
                        <img src="images/wsjybzzx.gif" border="0"
                        />
                    </a>
                    <a href="http://www.hd315.gov.cn/beian/view.asp?bianhao=010202010081900017"
                    target="_blank">
                        <img border="0" src="images/vanclMsg.gif">
                    </a>
                </p>
                　　
            </div>
       </div>
        <script type="text/javascript" src="js/site_nav.js">
        </script>
        <script type="text/JavaScript" src="js/org.js.jquery.plugins.bgiframe.js">
        </script>
        <script type="text/JavaScript" src="js/org.js.jquery.plugins.hoverintent.js">
        </script>
        <script type="text/JavaScript" src="js/AccountManage.js">
        </script>
        <script type="text/JavaScript" src="js/cookies_oper.js">
        </script>
        <script type="text/javascript">
            if ( + "" != "") {
                $(".floors a").removeClass("selected");
                $("#link_").addClass("selected");
            }
            if ($("#hot_").html() != null) {
                $(".hotCategory").hide();
                $("#hot_").show();
            }
        </script>
    </body>

</html>
