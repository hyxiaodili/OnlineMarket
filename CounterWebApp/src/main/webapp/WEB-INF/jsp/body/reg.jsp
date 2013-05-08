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
        </div>
	<!--头部结束  -->
        <div class="mainBox">   
    <link href="css/LoginAndReg.css" type="text/css" rel="stylesheet" />
    <script src="PublicControls/Js/Check_Reg.js" language="javascript"></script>
    <script src="PublicControls/Js/StringTrim.js" language="javascript"></script>

<!-- 注册表单开始 --> 
	<form method="post" name="myform" id="myform" onsubmit="return Check_User_Login()">
            <input type="hidden" name="Reg" value="true" />
            <center>
                <div id="Login">
                    <h1 align="left">
                        <img src="images/pic_title.gif" />
                    </h1>
                    <table width="880" border="0" cellpadding="0" cellspacing="0" class="lineJL">
                        <tr>
                            <td width="236" align="right" valign="top" class="sty03">
                                请填写您的Email地址：
                            </td>
                            <td width="219" valign="top" class="sty01">
                                <input name="Email" id="Email" type="text" onblur="Check_Email()" />
                                <span class="Reginput" id="span_CheckUsername">
                                </span>
                            </td>
                            <td width="425" align="left" valign="top" class="sty04">
                                　请填写有效的 Email地址作为下次登录的用户名，
                                <br />
                                　同时我们也会给这个地址发送您的帐户信息、订单通知等。
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="top" class="sty03">
                                请设定密码：
                            </td>
                            <td valign="top" class="sty01">
                                <input type="password" id="PassWord" name="PassWord" maxlength="16" onchange="ChangePassword();"
                                value="" />
                                <span id="CheckRePassWord" class="Reginput">
                                </span>
                            </td>
                            <td align="left" valign="top" class="sty03 sty04">
                                　密码请设为6-16位字母或数字
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="top" class="sty03">
                                请再次输入设定密码：
                            </td>
                            <td valign="top" class="sty01">
                                <input type="password" id="RexPassWord" name="RexPassWord" maxlength="16"
                                onchange="Check_RePassWord()" value="" />
                                <span id="ReCheckRePassWord" class="Reginput">
                                </span>
                            </td>
                            <td align="left">
                                　
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="top" class="sty03">
                                用户名：
                            </td>
                            <td valign="top" class="sty01">
                                <input type="text" id="NewUserName" name="NewUserName" maxlength="16"
                                onchange="CheckNewUserName()" value="" />
                                <span id="CheckNewUserName" class="Reginput">
                                </span>
                            </td>
                            <td align="left" valign="top" class="sty03 sty04">
                                　请输入中英文、数字、下划线或它们的组合
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="top" class="sty03">
                                请输入验证码：
                            </td>
                            <td valign="top" class="sty02" colspan="2">
                                <input name="Validate_Code" id="Validate_Code" type="text" class="inputSty01"
                                onchange="CheckValidateCode()" style="width:70px;" />
                                
                                <span class="sty03 sty04">
                                    <a href="javascript:ChangeImg1()">
                                        看不清，换一张
                                    </a>
                                </span>
                                <span class="Reginput" id="CheckValidateCode" style=" width:220px;">
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                　
                            </td>
                            <td align="right">
                                <input type="image" src="images/button_wczc.gif"
                                style="width:91px; height:25px;border:0px;" alt="完成注册" />
                            </td>
                            <td>
                                　
                            </td>
                        </tr>
                    </table>
                </div>
            </center>
    </form>
 <!--注册表单结束  -->
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
                    <img src="http://images.vancl.com/vjiafloatad/20100906/close.gif" alt="关闭"
                    title="关闭" />
                </span>
            </div>
            <div class="floatad-windowBox">
                <span class="floatad-blank43">
                </span>
                <div class="floatad-setTab">
                    <div class="floatad-setTabMenu">
                        <strong>
                            <a href="http://www.vjia.com" target="_blank">
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
                            <a href="http://www.vjia.com/StyleList-2347-1--1/2347.html?source=vanclfc1-a"
                            target="_blank" title="">
                                <img src="images/float01_100212_01.jpg"
                                alt="" title="">
                            </a>
                            <a href="http://www.vjia.com/StyleList-2762-1--1/2762.html?source=vanclfc1-b"
                            target="_blank" title="">
                                <img src="images/float01_100212-0_02.jpg"
                                alt="" title="">
                            </a>
                            <a href="http://www.vjia.com/StyleList-2150-1--1/2150.html?source=vanclfc1-c"
                            target="_blank" title="">
                                <img src="images/float01_100212_03.jpg"
                                alt="" title="">
                            </a>
                        </div>
                        <div id="con_style_2" style="display:none;">
                            <div>
                                <a href="http://www.vjia.com/StyleList-2710-1--1/2710.html?source=vanclfc2"
                                target="_blank" title="">
                                    <img src="images/float02_100212.jpg"
                                    alt="" title="">
                                </a>
                            </div>
                            <ul>
                                <li>
                                    <a href="http://www.vjia.com/StyleList-2598-1--1/2598.html?source=vanclfc"
                                    target="_blank" title="">
                                        <img src="images/NAN1-6.jpg" alt=""
                                        title="">
                                    </a>
                                </li>
                                <li>
                                    <a href="http://www.vjia.com/StyleList-2626-1--1/2626.html?source=vanclfc"
                                    target="_blank" title="">
                                        <img src="images/NAN2-7.jpg" alt=""
                                        title="">
                                    </a>
                                </li>
                                <li>
                                    <a href="http://www.vjia.com/StyleList-2609-1--1/2609.html?source=vanclfc"
                                    target="_blank" title="">
                                        <img src="images/NAN3.jpg" alt="" title="">
                                    </a>
                                </li>
                                <li style="margin-right:0;">
                                    <a href="http://www.vjia.com/StyleList-2536-1--1/2536.html?source=vanclfc"
                                    target="_blank" title="">
                                        <img src="images/NAN4.jpg" alt="" title="">
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div id="con_style_3" style="display:none;">
                            <div>
                                <a href="http://www.vjia.com/StyleList-2747-1--1/2747.html?source=vanclfc3"
                                target="_blank" title="">
                                    <img src="images/float03_1010212.jpg"
                                    alt="" title="">
                                </a>
                            </div>
                            <ul>
                                <li>
                                    <a href="http://www.vjia.com/StyleList-2577-1--1/2577.html?source=vanclfc"
                                    target="_blank" title="">
                                        <img src="images/nv-1.jpg" alt="" title="">
                                    </a>
                                </li>
                                <li>
                                    <a href="http://www.vjia.com/StyleList-2618-1--1/2618.html?source=vanclfc"
                                    target="_blank" title="">
                                        <img src="images/NV2.jpg" alt="" title="">
                                    </a>
                                </li>
                                <li>
                                    <a href="http://www.vjia.com/StyleList-2663-1--1/2663.html?source=vanclfc"
                                    target="_blank" title="">
                                        <img src="images/nv-333.jpg" alt=""
                                        title="">
                                    </a>
                                </li>
                                <li style="margin-right:0;">
                                    <a href="http://www.vjia.com/StyleList-2442-1--1/2442.html?source=vanclfc"
                                    target="_blank" title="">
                                        <img src="images/nv-4.jpg" alt="" title="">
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div id="con_style_4" style="display:none;">
                            <div>
                                <a href="http://www.vjia.com/StyleList-2713-1--1/2713.html?source=vanclfc4"
                                target="_blank" title="">
                                    <img src="images/float04_10212.jpg"
                                    alt="" title="">
                                </a>
                            </div>
                            <ul>
                                <li>
                                    <a href="http://www.vjia.com/StyleList-2448-1--1/2448.html?source=vanclfc"
                                    target="_blank" title="">
                                        <img src="images/yun-1.jpg" alt="" title="">
                                    </a>
                                </li>
                                <li>
                                    <a href="http://www.vjia.com/StyleList-2450-1--1/2450.html?source=vanclfc"
                                    target="_blank" title="">
                                        <img src="images/yun-2.jpg" alt="" title="">
                                    </a>
                                </li>
                                <li>
                                    <a href="http://www.vjia.com/StyleList-2439-1--1/2439.html?source=vanclfc"
                                    target="_blank" title="">
                                        <img src="images/YUN3.jpg" alt="" title="">
                                    </a>
                                </li>
                                <li style="margin-right:0;">
                                    <a href="http://www.vjia.com/StyleList-2544-1--1/2544.html?source=vanclfc"
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

