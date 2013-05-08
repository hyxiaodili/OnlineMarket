<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
        <meta http-equiv="X-UA-Compatible" content="IE=7" />
        <title>
            奋斗商城：你的选择
        </title>
        <meta name="keywords" content="奋斗 商城" />
        <meta name="description" content="奋斗 商城" />
        <link href="css/kpple.css" rel="stylesheet" type="text/css" charset="utf-8"
        />
		<link id="ctl00_CSS_Comm" href="css/commssl.css" type="text/css" rel="stylesheet" />
		<link id="ctl00_CSS_Comm" href="css/index2.css" type="text/css" rel="stylesheet" />
        <link href="css/index.css" rel="stylesheet" type="text/css" charset="utf-8"
        />
        <link href="css/comm.css" type="text/css" rel="stylesheet" charset="utf-8"
        />
        <link href="css/app.css" type="text/css" rel="stylesheet" charset="utf-8"
        />
        <script type="text/javascript" src="js/jquery-1.2.3.pack.js">
        </script>
        <script type="text/javascript" src="js/RandomimgPlayer.js">
        </script>
        <script type="text/javascript" src="js/jquery-extend-AdAdvance.js">
        </script>
        <script type="text/javascript" src="js/jquery-extend-TrunAd2.js">
        </script>
        <script type="text/javascript" src="js/ProductsPrice.js">
        </script>
        <script type="text/JavaScript" src="js/ShoppingUrl.js">
        </script>
        <script type="text/JavaScript" src="js/cookies_oper.js">
        </script>
        <script>
            setShoppingUrl();
            $(document).ready(function() {
                $(".p_img").each(function(i) {
                    $(this).mouseover(function() {
                        $(this).attr("class", "p_img_hover")
                    }).mouseout(function() {
                        $(this).attr("class", "p_img")
                    })
                })
            });
        </script>
        <script type="text/JavaScript" src="js/google-analytics.js">
        </script>
        <script type="text/javascript" language="javascript" src="js/union_websource.js">
        </script>
    </head>
    
    <body>
        <script type="text/javascript" src="js/Common.js">
        </script>
   <!--头部开始 -->
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
                                    &nbsp;
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
	<!--头部结束  -->
	<!-- center begin -->
<div style="height:15px; clear:both;overflow:hidden"></div>
 
<!-- <script language="javascript" src="/js/topad.js"></script>
 --> 
	
<link href="css/vanclssl.css" type="text/css" rel="stylesheet" />
<link  href="css/manage.css" type="text/css" rel="stylesheet"/>
<style type="text/css"> 
<!--
.imglodding{width:25px;margin-bottom:-7px;padding-right:3px;}
-->
</style>
<div style="position: absolute;margin-left:1000px;margin-top: 220px;"><a class="track" name="u_o_om_sv" href="#"></a></div>
<div id="wrap">
	<div id="body">
		<!--User_Interface-->
        
		<dl id="position">
			<dt>订单管理</dt>
			<dd>&gt; <span id="UserMap"></span></dd>
		</dl>
		<div id="welcome"> <!--您好，whj1028@126.com
			<input type="button" class="btn" style="cursor:pointer;" value="退出登录" onclick="location.href='/Login/UserLoginOut.aspx';" />-->
		</div>
    <div id="sidebar">
            <div id="grmes">
                <p>&nbsp;</p>
				<ul>
					<li>
					
					<span class="jfstyel4">dahai</span><br />
				您好！欢迎光临奋斗商城。<br />
				<br />
				<!-- <span id="PartUserTxt" style="display:none">关联的VJIA用户：<br /></span>
				<span class="jfstyel4" id="PartUser"></span> -->
				</li>
				</ul>
	  	    </div>
	  	    <script language="javascript" type="text/javascript">
                var parturl = "";
                var IsPartner = "False";
                function GetPartUser() {
                    $.ajax({
                        type: "GET",
                        cache: false,
                        dataType: "jsonp",
                        jsonp: "callback",
                        url: parturl,
                        beforeSend: function() { },
                        success: function(data) {
                        if (data != "") {
                            $("#PartUser").html(data.UserName);
                            $("#PartUserTxt").css("display", "");
                            }
                        },
                        error: function() { }
                    });
                }
                if (IsPartner){GetPartUser();}
            </script>
			<div id="managenav">
				<div class="account">
					<h3><span>订单管理</span></h3>
					<ul>
						<li id="User_Order_List"><a href="OrderList.html">我的订单</a></li>
					</ul>
				</div>
				<!-- <div class="hyjf">
					<h3><span>会员积分管理</span></h3>
					<ul>
						<li id="User_Score"><a href="https://www.vancl.com/Usercenter/UserPoints.aspx">我的会员积分</a></li>
						<li id="User_Change"><a href="http://www.vancl.com/channel/jf.html">积分回馈活动</a></li>
						<li id="User_ConvertJF"><a href="/Usercenter/ConvertJF.aspx">我要积分转换</a></li>
					</ul>
				</div> -->
				<div class="prod">
					<h3><span>商品管理</span></h3>
					<ul>
						<li id="User_Product_Cart"><a href="UserFavorite.html">我的收藏（暂存架）</a></li>					</ul>
				</div>
				<div class="personal">
					<h3><span>个人信息管理</span></h3>
					<ul>
						<li id="User_Info"><a href="Edit_Userinfo.html">编辑个人档案</a></li>
						<li id="Change_PWD"><a href="Edit_password.html">修改密码</a></li>
						<li id="User_TransferWay" ><a href="Edit_DeliveryInfo.html">修改送货信息</a></li>
					</ul>
				</div>
				
				
			</div>
	  </div>
		<script language="javascript">
		$(".floors a").removeClass("selected");
		</script>
        <!--User_Interface End-->
		<div id="main">
			<div id="orderform" class="mngbox">
				<div class="main">
				  <p><br />截至 2011年02月14日，您共有 <span class="jfSTYLE1" id="OrderCount">0</span> 张订单完成交易，累计消费 <span class="jfSTYLE1" id="OrderSum">0.00</span> 元。<br /><br />
		          <p style="border-top:1px dotted #CCCCCC; padding-top:15px; margin-top:8px;">&nbsp;</p>
					<h3><span>所有订单</span></h3>
					<div class="listtable" id="listtable" style="position: relative;">
						<span id="ctl00_ContentPlaceHolder1_label"><table><thead><tr><th width="37">订单号</th>
						<th width="50">下单时间</th>
						<th width="24">总价</th>
						<th width="24">状态</th>
						<th width="50">查看详情</th>
						<th width="28">操作</th>
				
						</tr></thead><tr><td colspan='9'>您暂时没有订单</td></tr> </table></span>
						<p></p>
						<span id="ctl00_ContentPlaceHolder1_Label_Page"><table border='0' cellpadding='0' style='border-collapse: collapse' width='100%' height='20'><tr><td align='right'>共<b>0</b>条记录&nbsp;每页:<b>10</b>条&nbsp;共<b>0</b>页&nbsp;页次:<b>1</b>/<b>0</b>&nbsp;&nbsp;&nbsp;&nbsp;分页:&nbsp;</td></tr></table></span>
					</div>
			  </div>
			</div>
		</div>
	</div>
</div>
<!--2010-10-12添加begin-->
<div id="light" canceltop="40" style="position:absolute;display:none;background-color:#fff; text-align:center; top:45px;*top:40px; left:
550px;height:125px; color:#666;">
	<div><img src="https://sslimg.vancl.com/AlterOrder/cztop.gif" style="width:170px;" /></div>
    <div style="border:1px solid #c9c9c9; border-top:none; width:153px;padding:5px 8px 18px;">
	<h2 style="font-size:13px; color:#a10000; font-weight:bold; line-height:25px; border-bottom:1px solid #c9c9c9;">您可以进行以下操作 <img src="https://sslimg.vancl.com/AlterOrder/cancel.gif" style="cursor:pointer;" onclick="CloseMenu();" /></h2>
    <p style="text-align:left; line-height:20px; padding-left:10px; padding-top:5px; background:url(https://sslimg.vancl.com/AlterOrder/czleft.gif) no-repeat left center; height:20px;"><a id="MH_1" style="color:#666;" href="#" >修改订单商品信息</a></p>
    <p style="text-align:left; line-height:20px;  padding-left:10px; background:url(https://sslimg.vancl.com/AlterOrder/czleft.gif) no-repeat left center; height:20px;"><a id="MH_2" style="color:#666;" href="#">修改订单除商品外信息</a></p>
    <p style="text-align:left; line-height:20px;  padding-left:10px; background:url(https://sslimg.vancl.com/AlterOrder/czleft.gif) no-repeat left center; height:20px;"><a id="MH_3"  href="#">取消订单</a></p>
    </div>
</div>
<!--弹出层1begin-->
<div id='canceDiv'  style="position:absolute; min-width:306px;max-width:306px; width:306px; min-height:128px; display:none;  border:1px solid #c9c9c9; background-color:#f4f7f9; top:50px;*top:40px; padding:5px 18px 18px;">
	<div style="width:100%; line-height:25px;float: left;"><div style="float:left;margin-left: 90px;"><h2 style="font-size:14px; color:#a10000; font-weight:bold; line-height:25px; text-align:center; margin:0 auto;">取消订单的原因</h2></div><div style="float:right"><img src="https://sslimg.vancl.com/AlterOrder/cancel.gif" style="cursor:pointer;" onclick="CloseMenu();" /></div></div>
    <div style="color:#000; line-height:20px;">订单号：  <span id="OrderTxt">310092815243 可以取消</span></div>
    <div style="color:#666; text-align:left; line-height:20px;">取消订单的原因：
    <select name='Info_List' id='Info_List'  Onchange='block_Cancel()'><option value='-1'>请选择原因</option><option value='1'>忘选优惠品</option><option value='2'>支付失败</option><option value='3'>有缺货商品</option><option value='4'>等待太久</option><option value='5'>订购错误 </option><option value='6'>已在别处购买</option><option value='7'>价格太贵</option><option value='8'>更换其他商品</option><option value='9'>订单重复</option><option value='10'>测试订单 </option><option value='11'>其他</option></select>
    </div>
    <div style="padding-top:15px; display:none;" id="Cancel_txt"><textarea name="txt"  id="txt" style="width: 250px; height: 50px" ></textarea></div>
	<div style="padding-top:15px;">
	<img id="btnSubmit" style="cursor:pointer;vertical-align:middle; margin-left: 120px;" src="https://sslimg.vancl.com/AlterOrder/submitbtn.gif" onclick="return ordercance();"/>
	<span id="Loading" style="display:none">正在为您提交，请稍后...<img src="https://sslimg.vancl.com/AlterOrder/loading.gif" class="imglodding"/></span>
	</div>
	<input type="hidden" id="Cance" name="Cance" value="true" />
	<input type="hidden" id="TxtOid" name="TxtOid" value="0" />
</div>
<!--弹出层1end-->
 
<!--弹出层2begin-->
<div id='alertOrderDiv'  style="display:none;position:absolute; min-width:306px;max-width:306px; width:306px; min-height:85px;border:1px solid #c9c9c9; background-color:#f4f7f9; top:50px; padding:14px 18px 18px;text-align:center;">
    <div style="color:#000; line-height:20px;">抱歉，您的订单系统暂时无法修改，请您与客服联系。</div>
    <div style="color:#666; line-height:20px;">联系电话：400  650  7099 </div>
	<div style=" padding-top:15px;"><input type="image" src="https://sslimg.vancl.com/AlterOrder/confirm.gif"/>&nbsp; &nbsp;</div>
</div>
<!--弹出层2end-->
<!--2010-10-12添加end-->
<script language="javascript"> 
var isIE = $.browser.msie;
document.getElementById("User_Order_List").className = "current";//控制CSS
document.getElementById("UserMap").innerHTML = "我的订单"; //控制CSS
function OrderPageClosePoint() {
    $("#light").slideUp("slow");
}
function OrderPageAlert() {
//    $("#light").slideUp("slow");
//    $("#alertOrderDiv").slideUp("slow");
}
 
function DisplayMenu(id,isEdit) {
    var _o = $("#ord_" + id);
    var _top = _o.offset().top + 10;
    var _left = _o.offset().left - 225;
 
    $("#light").css({ top: _top + "px" });
    $("#light").css({ left: _left + "px" });
    $("#light").attr("canceltop", _top);
    $("#light").attr("cancelleft", _left);
    $("#alertOrderDiv").css({ display: "none" });
    $("#canceDiv").css({ display: "none" });
    
    if ($("#light").css("display") == "none") {
        $("#light").css({ display: "block" });
    }
 
    $('#MH_1').attr('href', '/AlterOrder/AlterShoppingChangePage.aspx?selectCode=' + id);
    $('#MH_2').attr('href', '/AlterOrder/AlterShoppingChangePage.aspx?selectCode=' + id + '&type=1');
    $('#MH_3').attr('href', 'javascript:DisplayCanceDiv("' + id + '")');
    $("#TxtOid").attr("value", id);
    AlterOrderIsEdit(id, isEdit);
}
 
function CloseMenu() {
    $("#light").css({ display: "none" });
    $("#alertOrderDiv").css({ display: "none" });
    $("#canceDiv").css({ display: "none" });
}
 
function NoEditMsg() {
    var _top = parseInt($("#light").attr("canceltop")) + 5;
    var _left = parseInt($("#light").attr("cancelleft"));
    
    $("#alertOrderDiv").css({ top: _top + "px" });
    if (isIE) {
        $("#alertOrderDiv").css({ left: _left - 355 + "px" });
    }
    else {
        $("#alertOrderDiv").css({ left: _left - 356 + "px" });
    }
    $("#canceDiv").css({ display: "none" });
    
    var _msg = '<div style="color:#000; line-height:20px;">抱歉，您的订单系统暂时无法修改，请您与客服联系。</div>'
                + '<div style="color:#666; line-height:20px;">联系电话：400  650  7099 </div>'
                + '<div style=" padding-top:15px;"><input type="image" src="https://sslimg.vancl.com/AlterOrder/confirm.gif" onclick="CloseMenu();" />&nbsp; &nbsp;</div>';
    $("#alertOrderDiv").html(_msg);
    $("#alertOrderDiv").css({ display: "block" });
}
 
function CloseAlertOrderDiv() {
    $("#light").css({ display: "none" });
    $("#alertOrderDiv").css({ display: "none" });
    $("#canceDiv").css({ display: "none" });
    location.reload();
}
 
function DisplayCanceDiv(oid) {
    $("#Loading").css({ display: "none" });
    //var top = parseInt($("#light").attr("canceltop")) + 5;
    var _top = parseInt($("#light").attr("canceltop")) + 5;
    
 
    $("#canceDiv").css({ top: _top + "px" });
    $("#alertOrderDiv").css({ top: _top + "px" });
 
    var _left = parseInt($("#light").attr("cancelleft"));
    if(isIE)
    {
        $("#canceDiv").css({ left: _left - 355 + "px" });
        $("#alertOrderDiv").css({ left: _left - 355 + "px" });
    }
    else
    {
        $("#canceDiv").css({ left: _left - 356 + "px" });
        $("#alertOrderDiv").css({ left: _left - 356 + "px" });
    }
    
    $("#OrderTxt").html("加载中.....");
    GetOrderTxt(oid);
    $("#alertOrderDiv").css({ display: "none" });
    $("#canceDiv").css({ display: "block" });
}
 
//获取订单状态
function GetOrderTxt(oid) {
    var _url = "Order_Status.ashx?Order=" + oid;
    $.ajax({
        type: "GET",
        cache: false,
        dataType: "html/text",
        jsonp: "callback",
        url: _url,
        beforeSend: function() { },
        success: function(data) {
            if (data != "") {
                $("#OrderTxt").html(data);
                if (data.indexOf("无效") > 0) {
                    var _html = '<h2 id=\"TxtTitle\" style=\"font-size:14px; color:#a10000; font-weight:bold; line-height:25px; text-align:center;\">操作失败</h2>'
                        + '<div style="color:#000; line-height:20px;">' + data + '</div>'
                        + '<div style=" padding-top:15px;"><input type="image" src="https://sslimg.vancl.com/AlterOrder/confirm.gif" onclick="CloseAlertOrderDiv();"/>&nbsp; &nbsp;</div>';
 
                    $("#alertOrderDiv").html(_html);
 
                    $("#canceDiv").css({ display: "none" });
                    $("#alertOrderDiv").css({ display: "block" });
                    return;
                }
            }
            else {
                alert("您还没有登录或登录已过期，请登录后再试！");
            }
        },
        error: function() { }
    });
}
 
//记录修改日志
function AlterOrderLog(oid) {
    var _url = "AlterOrderLog.ashx?OrderCode=" + oid;
    $.ajax({
        type: "GET",
        cache: false,
        dataType: "html/text",
        jsonp: "callback",
        url: _url,
        beforeSend: function() { },
        success: function(data) {
        },
        error: function() { }
    });
}
 
//订单修改状态
function AlterOrderIsEdit(oid, isEdit) {
    if (isEdit == 0) {
        $('#MH_1').attr("href", "javascript:NoEditMsg();");
        $('#MH_1').attr("disabled", "true");
        $('#MH_1').removeAttr("onclick");
        $('#MH_1').css({ color: "#D8D8D8" });
 
        $('#MH_2').attr("href", "javascript:NoEditMsg();");
        $('#MH_2').attr("disabled", "true");
        $('#MH_2').removeAttr("onclick");
        $('#MH_2').css({ color: "#D8D8D8" });
    }
    else {
        var _url = "AlterOrderIsEdit.ashx?OrderCode=" + oid;
        $.ajax({
            type: "GET",
            cache: false,
            dataType: "html/text",
            jsonp: "callback",
            url: _url,
            beforeSend: function() { },
            success: function(data) {
                if (parseInt(data) != 1) {
                    $('#MH_1').attr("href", "javascript:NoEditMsg();");
                    $('#MH_1').attr("disabled", "true");
                    $('#MH_1').css({ color: "#D8D8D8" });
 
                    $('#MH_2').attr("href", "javascript:NoEditMsg();");
                    $('#MH_2').attr("disabled", "true");
                    $('#MH_2').css({ color: "#D8D8D8" });
                    //$('#MH_1').removeAttr("onclick");
                }
                else {
                    //$("#MH_1").click(function() { AlterOrderLog(oid); });
                    $('#MH_1').css({ color: "" });
                    $('#MH_1').removeAttr("disabled");
                    $('#MH_2').css({ color: "" });
                    $('#MH_2').removeAttr("disabled");
                }
            },
            error: function() { }
        });
    }
}
 
//提交取消信息
function CancelOrder() {
    var _oid = $("#TxtOid").val();
    var _txt = $("#txt").val();
    var _info = $("#Info_List option:selected").val();
    var _cance = $("#Cance").val();
    var _params = "Order=" + _oid + "&txt=" + _txt + "&Info_List=" + _info + "&Cance=" + _cance;
    var _url = "Cancel_Order.ashx";
    $.ajax({
        type: "POST",
        cache: false,
        dataType: "html/text",
        jsonp: "callback",
        url: _url,
        data: _params,
        beforeSend: function() { },
        success: function(data) {
            if (data != "") {
                if (parseInt(data) > 0) {
                    CancelOrderProcess(_oid, data);
                    $("#Loading").css({ display: "none" });
                }
                else {
                    alert("订单取消失败，请稍后再试！");
                }
            }
            else {
                alert("您还没有登录或登录已过期，请登录后再试！");
            }
        },
        error: function() { }
    });
}
 
//取消处理过程
function CancelOrderProcess(oid,status) {
    var _params = "Order=" + oid + "&CanceStatus=" + status;
    var _url = "Cance_Order_Status.ashx";
    $.ajax({
        type: "POST",
        cache: false,
        dataType: "html/text",
        jsonp: "callback",
        url: _url,
        data: _params,
        beforeSend: function() { },
        success: function(data) {
            if (data != "") {
                $("#canceDiv").css({ display: "none" });
                $("#Loading").css({ display: "none" });
                $("#alertOrderDiv").html(data + "<div style=\" padding-top:15px;\"><input type=\"image\" src=\"images/confirm.gif\" onclick=\"CloseAlertOrderDiv();\"/>&nbsp; &nbsp;</div>");
 
//                var _left = parseInt($("#light").attr("cancelleft"));
//                var _width;
//                if (isIE) {
//                    _width = $("#alertOrderDiv").css("max-width") + 15;
//                }
//                else {
//                    _width = parseInt($("#alertOrderDiv").css("max-width")) + 54;
//                }
//                alert(_width);
                //$("#alertOrderDiv").css({ left: _left - _width + "px" });
                $("#alertOrderDiv").css({ display: "block" });
            }
            else {
                alert("您还没有登录或登录已过期，请登录后再试！");
            }
        },
        error: function() { }
    });
}
 
function GetStatus() {
    var _oid = $("#TxtOid").val();
    $.ajax({
        type: "GET",
        cache: false,
        dataType: "html/text",
        url: "/UserCenter/GetOrderCancelStatus.ashx?order=" + _oid,
        beforeSend: function() { $("#TxtMsg").html("<img src=\"images/loading.gif\" class=\"imglodding\" />正在为您提交，请稍后..."); },
        success: function(data) {
            var status = parseInt(data, 10);
            var updatePanelId;
            if (status != undefined) {
                switch (status) {
                    case 0:
                        break;
 
                    case 1:
                        $("#TxtTitle").html("操作失败");
                        $("#TxtMsg").html("无法取消。如需取消，请您与客服联系处理。");
                        $("#TxtSrv").css({ display: "block" });
                        $("#TxtCnt").css({ display: "block" });
                        clearInterval(b);
                        break;
 
                    case 2:
                        $("#TxtMsg").html("已取消。");
                        $("#TxtTitle").html("操作成功");
                        $("#TxtSrv").css({ display: "block" });
                        $("#TxtCnt").css({ display: "block" });
                        clearInterval(b);
                        break;
 
                    case 9:
                        $("#TxtTitle").html("操作失败");
                        $("#TxtMsg").html("无法取消。如需取消，请您与客服联系处理。");
 
                        $("#TxtSrv").css({ display: "block" });
                        $("#TxtCnt").css({ display: "block" });
                        clearInterval(b);
                        break;
 
                    default:
                        $("#TxtMsg").html("无法取消。如需取消，请您与客服联系处理。");
                        $("#TxtTitle").html("操作失败");
                        $("#TxtSrv").css({ display: "block" });
                        $("#TxtCnt").css({ display: "block" });
                        clearInterval(b);
                        break;
 
                }
            }
            else {
                $("#TxtTitle").html("操作失败");
                $("#TxtMsg").html("抱歉，由于系统或网络原因，无法取得取消信息，请联系客服。");
                clearInterval(b);
            }
        },
        error: function() {
            $("#TxtTitle").html("操作失败");
            $("#TxtMsg").html("抱歉，由于系统或网络原因，无法取得取消信息，请联系奋斗客服。");
            clearInterval(b);
        }
    });
}
 
function ordercance() {
    var txtvalue = $("#txt").val();
    if ($("#Cancel_txt").css("display") == "block" && (txtvalue == "" || txtvalue.length < 1)) {
        alert('请填写原因');
        return false;
    }
    if ($("#Cancel_txt").css("display") == "none" && $("#Info_List option:selected").val() == '-1') {
        alert('请选择原因');
        return false;
    }
    if (txtvalue.length > 300) {
        alert('您填写的字数超了最大限制');
        return false;
    }
    $("#Loading").css({ display: "block" });
    CancelOrder();
}
 
function block_Cancel() {
    if ($("#Info_List option:selected").text() == '其他') {
            $("#Cancel_txt").css({display :"block"});
        try {
           // $("#Cancel_txt").css({ display: "table-row" });
        } catch (e) { }
    }
    else {
        $("#Cancel_txt").css({ display: "none" });
    }
}
</script>

 <!-- center end -->
 <!--底部DIV开始  -->
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
                            订购热线
                        </strong>
                        （免长途费）
                        <br />
                        <strong class="wdSty">
                            010-58693870
                        </strong>
                    </dd>
                    <dt>
                    </dt>
                    <dd>
                        <strong>
                            客户服务热线
                        </strong>
                        （免长途费）
                        <br />
                        <span class="wdSty">
                            <strong>
                                010-58693870
                            </strong>
                        </span>
                    </dd>
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
<!--底部DIV结束  -->
        <!--内容区域结束-->
        <script type="text/javascript" src="js/site_nav.js">
        </script>
        <script type="text/JavaScript" src="js/org.js.jquery.plugins.bgiframe.js">
        </script>
        <script type="text/JavaScript" src="js/org.js.jquery.plugins.hoverintent.js">
        </script>
        <script type="text/JavaScript" src="js/AccountManage.js">
        </script>
        <script type="text/javascript" src="js/ValidateInput.js">
        </script>
        <script type="text/javascript" src="js/o_code.js">
        </script>
        <script type="text/javascript" src="js/ct.js">
        </script>
        <script type="text/javascript">
            var CurPopPub = 1;
            var PopPubHandle = null;
            function SetPopPubhandle() {
                setTab('style', CurPopPub, 4);
                PopPubHandle = setInterval(function() {
                    setTab('style', CurPopPub, 4);
                    CurPopPub++;
                    if (CurPopPub == 5) CurPopPub = 1;
                },
                3000);
            }
            $(function() {
                $("[id^='style']").each(function(i) {
                    $(this).mouseover(function() {
                        if (PopPubHandle) clearInterval(PopPubHandle);
                        CurPopPub = parseInt(i) + 1;
                        setTab('style', CurPopPub, 4);
                    }).mouseout(function() {
                        SetPopPubhandle();
                    });
                });
                $("[id^='con_one_']").each(function() {
                    $(this).mouseover(function() {
                        if (PopPubHandle) clearInterval(PopPubHandle);
                    }).mouseout(function() {
                        SetPopPubhandle();
                    });
                });
                SetPopPubhandle();
            });
        </script>
        <script type="text/javascript">
            function setTab(name, cursel, n) {
                for (i = 1; i <= n; i++) {
                    var menu = document.getElementById(name + i);
                    var con = document.getElementById("con_" + name + "_" + i);
                    menu.className = i == cursel ? "floatad-hover": "";
                    con.style.display = i == cursel ? "block": "none";
                }
            }
        </script>
        <script type="text/javascript">
            window.onscroll = function() {
                if (document.getElementById("floatad-winpop")) {
                    var scrollTop = 0;
                    if (typeof document.compatMode != 'undefined' && document.compatMode != 'BackCompat') {
                        scrollTop = document.documentElement.scrollTop;
                    } else {
                        scrollTop = document.body.scrollTop;
                    }
                }
            }
            function tips_pop() {
                var MsgPop = document.getElementById("floatad-winpop");
                var popH = parseInt(MsgPop.style.height);
                if (popH == 0) {
                    MsgPop.style.display = "block";
                    show = setInterval("changeH('up')", 2);
                } else {
                    hide = setInterval("changeH('down')", 2);
                }
            }
            function changeH(str) {
                var MsgPop = document.getElementById("floatad-winpop");
                var popH = parseInt(MsgPop.style.height);
                if (str == "up") {
                    if (popH <= 293) {
                        MsgPop.style.height = (popH + 4).toString() + "px";
                    } else {
                        clearInterval(show);
                    }
                }
                if (str == "down") {
                    if (popH >= 4) {
                        MsgPop.style.height = (popH - 4).toString() + "px";
                    } else {
                        clearInterval(hide);
                        MsgPop.style.display = "none";
                    }
                }
            }
            window.onload = function() {
                document.getElementById('floatad-winpop').style.height = '0px';
                setTimeout("tips_pop()", 800);
            }
        </script>
		 <div id="floatad-winpop" style="z-index:9;right:0;bottom:0;overflow:hidden;POSITION:fixed;_position:absolute; _margin-top:expression(document.documentElement.clientHeight-this.style.pixelHeight+document.documentElement.scrollTop);">
            <div class="">
                <span class="floatad-close" onClick="tips_pop()">
                    <img src="images/close.gif" alt="关闭"
                    title="关闭" />
                </span>
            </div>
            <div class="floatad-windowBox">
                <span class="floatad-blank43">
                </span>
                <div class="floatad-setTab">
                    <div class="floatad-setTabMenu">
                        <strong>
                            <a href="#" target="_blank">
                            </a>
                        </strong>
                        <ul>
                            <li id="style1" onMouseOver="setTab('style',1,4)" class="floatad-hover">
                            </li>
                            <li id="style2" onMouseOver="setTab('style',2,4)">
                            </li>
                            <li id="style3" onMouseOver="setTab('style',3,4)">
                            </li>
                            <li id="style4" onMouseOver="setTab('style',4,4)">
                            </li>
                        </ul>
                    </div>
                    <div class="floatad-setTabCon">
                        <div id="con_style_1">
                            <a href="fbx.html"
                            target="_blank" title="">
                                <img src="images/float01_100212_01.jpg"
                                alt="" title="">
                            </a>
                            <a href="fbx.html"
                            target="_blank" title="">
                                <img src="images/float01_100212-0_02.jpg"
                                alt="" title="">
                            </a>
                            <a href="fbx.html"
                            target="_blank" title="">
                                <img src="images/float01_100212_03.jpg"
                                alt="" title="">
                            </a>
                        </div>
                        <div id="con_style_2" style="display:none;">
                            <div>
                                <a href="fbx.html"
                                target="_blank" title="">
                                    <img src="images/float02_100212.jpg"
                                    alt="" title="">
                                </a>
                            </div>
                            <ul>
                                <li>
                                    <a href="fbx.html"
                                    target="_blank" title="">
                                        <img src="images/NAN1-6.jpg" alt=""
                                        title="">
                                    </a>
                                </li>
                                <li>
                                    <a href="fbx.html"
                                    target="_blank" title="">
                                        <img src="images/NAN2-7.jpg" alt=""
                                        title="">
                                    </a>
                                </li>
                                <li>
                                    <a href="fbx.html"
                                    target="_blank" title="">
                                        <img src="images/NAN3.jpg" alt="" title="">
                                    </a>
                                </li>
                                <li style="margin-right:0;">
                                    <a href="fbx.html"
                                    target="_blank" title="">
                                        <img src="images/NAN4.jpg" alt="" title="">
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div id="con_style_3" style="display:none;">
                            <div>
                                <a href="fbx.html"
                                target="_blank" title="">
                                    <img src="images/float03_1010212.jpg"
                                    alt="" title="">
                                </a>
                            </div>
                            <ul>
                                <li>
                                    <a href="fbx.html"
                                    target="_blank" title="">
                                        <img src="images/nv-1.jpg" alt="" title="">
                                    </a>
                                </li>
                                <li>
                                    <a href="fbx.html"
                                    target="_blank" title="">
                                        <img src="images/NV2.jpg" alt="" title="">
                                    </a>
                                </li>
                                <li>
                                    <a href="fbx.html"
                                    target="_blank" title="">
                                        <img src="images/nv-333.jpg" alt=""
                                        title="">
                                    </a>
                                </li>
                                <li style="margin-right:0;">
                                    <a href="fbx.html"
                                    target="_blank" title="">
                                        <img src="images/nv-4.jpg" alt="" title="">
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div id="con_style_4" style="display:none;">
                            <div>
                                <a href="fbx.html"
                                target="_blank" title="">
                                    <img src="images/float04_10212.jpg"
                                    alt="" title="">
                                </a>
                            </div>
                            <ul>
                                <li>
                                    <a href="fbx.html"
                                    target="_blank" title="">
                                        <img src="images/yun-1.jpg" alt="" title="">
                                    </a>
                                </li>
                                <li>
                                    <a href="fbx.html"
                                    target="_blank" title="">
                                        <img src="images/yun-2.jpg" alt="" title="">
                                    </a>
                                </li>
                                <li>
                                    <a href="fbx.html"
                                    target="_blank" title="">
                                        <img src="images/YUN3.jpg" alt="" title="">
                                    </a>
                                </li>
                                <li style="margin-right:0;">
                                    <a href="fbx.html"
                                    target="_blank" title="">
                                        <img src="images/YUN4-9.jpg" alt=""
                                        title="">
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

