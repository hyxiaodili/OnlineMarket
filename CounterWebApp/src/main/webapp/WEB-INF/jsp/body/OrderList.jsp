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
            �ܶ��̳ǣ����ѡ��
        </title>
        <meta name="keywords" content="�ܶ� �̳�" />
        <meta name="description" content="�ܶ� �̳�" />
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
   <!--ͷ����ʼ -->
        <div id="Head">
            <div class="Lheadtop">
                <div class="Lsmallnav">
                    <div class="Llsmallnav">
                        <ul>
							<li>
                                <a class="track" name="head-myaccount" href="a href="#" onclick="this.style.behavior='url(#default#homepage)';this.sethomepage('http://www.fendoujiaoyu.com')">
                                    ��Ϊ��ҳ
                                </a>
                            </li>
                            <li class="Lfgbar">
                            <!-- <li>
                                <a class="track" name="head-member" href="OrderList.html">
                                    ��Ա����
                                </a>
                            </li>
                            <li class="Lfgbar">
                            </li>
                            <li>
                                <a class="track" name="head-bbs" href="http://bbs.vancl.com/" target="_blank">
                                    ��̳
                                </a>
                            </li>
                            <li class="Lfgbar"> -->
                            </li>
                            <li>
                                <a class="track" name="head-help" href="javascript:window.external.AddFavorite('www.fendoujiaoyu.com','�ܶ�����')"
                                target="_blank">
                                    �ղر�վ
                                </a>
                            </li>
                            <li class="Lfgbar">
                            </li>
                            <li>
                                <a class="track" name="head-tousu" href="mailto:fendou@fendoujiaoyu.com"
                                target="_blank">
                                    ��ϵ����
                                </a>
                            </li>
                            <li class="Lfgbar">
                            </li>
                           <!--  <li>
                                <a class="track" name="head-customer" href="http://bbs.vancl.com/showforum-6.aspx"
                                target="_blank">
                                    ���߿ͷ�
                                </a>
                            </li>
                            <li class="Lfgbar">
                            </li> -->
							<li>
                                <a class="track" name="head-myaccount" href="OrderList.html">
                                    �ҵ��ʻ�
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
                                ���ã���ӭ��ܶ��̳ǡ�
                            </span>
                            <a href="login.html">
                                ��¼
                            </a>
                            <span class="Lloginfg">
                                &nbsp;
                            </span>
                            <a href="reg.html">
                                ע��
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
                                if (skeyval == " ������ؼ���") {
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
                                        ���ﳵ
                                    </span>
                                    ����
                                    <span id="prdCount" class="ba10000">
                                        0
                                    </span>
                                    ����Ʒ
                                </div>
                                <div>
                                    <p>
                                        �� ��
                                        <span id="price" class="ba10000">
                                           0
                                        </span>
                                        Ԫ
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
                                                    ��ҳ
                                                </a>
                                            </li>
                                            <li class="dotfgbg">
                                                &nbsp;
                                            </li>
                                            <li id="floor_1">
                                                <a class="track" name="head-floor-1" href="fbx.html">
                                                    ��װ
                                                </a>
                                            </li>
                                            <li class="dotfgbg">
                                                &nbsp;
                                            </li>
                                            <li id="floor_2">
                                                <a class="track" name="head-floor-2" href="fbx.html">
                                                    Ůװ
                                                </a>
                                            </li>
                                            <li class="dotfgbg">
                                                &nbsp;
                                            </li>
                                            <li id="floor_3">
                                                <a class="track" name="head-floor-3" href="fbx.html">
                                                    ͯװ
                                                </a>
                                            </li>
                                            <li class="dotfgbg">
                                                &nbsp;
                                            </li>
                                            <li id="floor_4">
                                                <a class="track" name="head-floor-4" href="fbx.html">
                                                    Ь
                                                </a>
                                            </li>
                                            <li class="dotfgbg">
                                                &nbsp;
                                            </li>
                                            <li id="floor_5">
                                                <a class="track" name="head-floor-5" href="fbx.html">
                                                    �Ҿ�
                                                </a>
                                            </li>
                                            <li class="dotfgbg">
                                                &nbsp;
                                            </li>
                                            <li id="floor_6">
                                                <a class="track" name="head-floor-6" href="fbx.html">
                                                    ����
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
                                                                    ����
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    ���޷�
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    �п�
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    ����
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    ����
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    �޷�
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    ����
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    ����
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    �������
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    �������
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    ���
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    POLO��/T��
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    ����POLO��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    ����POLO��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    ����T��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    ����T��
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    ����
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    ����������
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    ʱ�п�����
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    ���������
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="fbx_index.html">
                                                                    ��֯��
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    ��֯����
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    ��ͷ��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    ��֯����
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    ��ë��
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    �˶�װ
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    �˶�װ
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    �˶�Ь
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    ����
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    ����
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    ���п�
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    ţ�п�
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    �˶���
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    ���¿�
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    ƽ�ǿ�
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    ����
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-1" href="fbx_index.html">
                                                                    ����
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
                                                                    ����
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-2" href="fbx_index.html">
                                                                    ���޷�
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="fbx_index.html">
                                                                    �޷�
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="fbx_index.html">
                                                                    ����
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="fbx_index.html">
                                                                    ����
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="fbx_index.html">
                                                                    ����
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="fbx_index.html">
                                                                    �п�
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="fbx_index.html">
                                                                    ���
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-2" href="fbx_index.html">
                                                                    ����
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-2" href="fbx_index.html">
                                                                    �������
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="fbx_index.html">
                                                                    �������
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="fbx_index.html">
                                                                    ѩ����
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-2" href="fbx_index.html">
                                                                    ��֯��
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-2" href="fbx_index.html">
                                                                    ������֯��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="fbx_index.html">
                                                                    ������֯��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="fbx_index.html">
                                                                    ë��ȹ
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="fbx_index.html">
                                                                    ��ë/������
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-2" href="fbx_index.html">
                                                                    T��
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2591">
                                                                    ӡ��T��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="#pcid=1549">
                                                                    POLO��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2305">
                                                                    ����T��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2306">
                                                                    ����T��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2559">
                                                                    ����T��
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2783">
                                                                    ����
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2787">
                                                                    ����������
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2788">
                                                                    ʱ�п�����
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2903">
                                                                    ���������
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-2" href="http://www.vancl.com/channel/sport/">
                                                                    �˶�װ
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-2" href="http://www.vancl.com/channel/sport/search.mvc?cateid=2929">
                                                                    �˶�װ
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="#pcid=1535&s=1&d=0&b=0&p=1&r=40">
                                                                    �˶�Ь
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-2" href="#pcid=1551">
                                                                    ����
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-2" href="#pcid=1525">
                                                                    ���п�
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="#pcid=1773">
                                                                    ţ�п�
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2344">
                                                                    ����
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2964">
                                                                    �˶���
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="#pcid=1748">
                                                                    �ֿ�̿�
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-2" href="#pcid=1553">
                                                                    ȹ��
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2682">
                                                                    ��ȹ
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2683">
                                                                    ����ȹ
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-2" href="#pcid=1554">
                                                                    ����
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2026">
                                                                    �ڿ�
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2336">
                                                                    ������װ
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2372">
                                                                    ����
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="#pcid=3334">
                                                                    ��������
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2399">
                                                                    ����/����
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2580">
                                                                    Ӿװ
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2580">
                                                                    Ӿװ
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-2" href="#pcid=1902">
                                                                    ����
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2626">
                                                                    ��׿�
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2627">
                                                                    ������
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-2" href="#pcid=2628">
                                                                    Ͳ��
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
                                                                    ����װ
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-3" href="#pcid=2972">
                                                                    T��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=2973">
                                                                    ����
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3333">
                                                                    ����Ь
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3123">
                                                                    0-3��/��ͯ
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3131">
                                                                    ��Ʒװ
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3129">
                                                                    ����
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3133">
                                                                    ������
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3130">
                                                                    ����
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3132">
                                                                    ����
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3272">
                                                                    �޷�
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3124">
                                                                    0-3��/Ůͯ
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3137">
                                                                    ��Ʒװ
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3135">
                                                                    ����
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3139">
                                                                    ������
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3136">
                                                                    ����
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3138">
                                                                    ����
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3273">
                                                                    �޷�
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3125">
                                                                    4-8��/��ͯ
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3142">
                                                                    T��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3141">
                                                                    polo��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3150">
                                                                    ����
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3152">
                                                                    ��֯��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3144">
                                                                    �п�
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3146">
                                                                    �޷�
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3151">
                                                                    ���޷�
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3145">
                                                                    ����
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3147">
                                                                    ����
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3126">
                                                                    4-8��/Ůͯ
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3154">
                                                                    T��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3153">
                                                                    polo��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3163">
                                                                    ����
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3165">
                                                                    ��֯��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3157">
                                                                    �п�
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3159">
                                                                    �޷�
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3164">
                                                                    ���޷�
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3158">
                                                                    ����
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3160">
                                                                    ����
                                                                </a>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3162">
                                                                    ȹ��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3161">
                                                                    ����
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3127">
                                                                    8������/��ͯ
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3168">
                                                                    T��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3167">
                                                                    polo��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3173">
                                                                    ����
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3175">
                                                                    ��֯��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3169">
                                                                    �п�
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3171">
                                                                    �޷�
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3174">
                                                                    ���޷�
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3170">
                                                                    ����
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3172">
                                                                    ����
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3128">
                                                                    8������/Ůͯ
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3177">
                                                                    T��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3176">
                                                                    polo��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3184">
                                                                    ����
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3186">
                                                                    ��֯��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3178">
                                                                    �п�
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3180">
                                                                    �޷�
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3185">
                                                                    ���޷�
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3179">
                                                                    ����
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3181">
                                                                    ����
                                                                </a>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3183">
                                                                    ȹ��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-3" href="#pcid=3182">
                                                                    ����
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
                                                                    ��Ь
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-4" href="#pcid=1592">
                                                                    ����Ь
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-4" href="#pcid=1405">
                                                                    ����ƤЬ
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-4" href="#pcid=1534">
                                                                    �˶�����Ь
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-4" href="#pcid=1407">
                                                                    ��Ь
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-4" href="#pcid=3018">
                                                                    ѥ��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-4" href="#pcid=1532">
                                                                    ��װƤЬ
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-4" href="#pcid=1941">
                                                                    ����Ь
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-4" href="#pcid=1581">
                                                                    ŮЬ
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-4" href="#pcid=1533">
                                                                    ����ƤЬ
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-4" href="#pcid=1593">
                                                                    ����Ь
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-4" href="#pcid=1535">
                                                                    �˶�����Ь
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-4" href="#pcid=2437">
                                                                    ��Ь
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-4" href="#pcid=2438">
                                                                    ��Ь
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-4" href="#pcid=2907">
                                                                    ѥ��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-4" href="#pcid=1955">
                                                                    ѩ��ѥ
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <br/>
                                                                <a class="track" name="head-subfloor-4" href="#pcid=1942">
                                                                    ����Ь
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-4" href="#pcid=2555">
                                                                    ͯЬ
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-4" href="#pcid=2652">
                                                                    ����Ь
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-4" href="#pcid=2770">
                                                                    �˶�����Ь
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-4" href="#pcid=1231">
                                                                    �Ҿ�Ь
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-4" href="#pcid=1231&s=1&d=0&b=0&p=1&r=40&attrid_sex_=4655">
                                                                    �п�Ҿ�Ь
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-4" href="#pcid=1231&s=1&d=0&b=0&p=1&r=40&attrid_sex_=4654">
                                                                    Ů��Ҿ�Ь
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-4" href="http://www.vancl.com/channel/fbx/">
                                                                    ����Ь
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-4" href="http://www.vancl.com/channel/fbx/">
                                                                    ����Ь
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-4" href="http://www.vancl.com/channel/lover/search.mvc?t=xie">
                                                                    ����Ь
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-4" href="http://www.vancl.com/channel/lover/search.mvc?t=xie">
                                                                    ����Ь
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-4" href="#pcid=3333">
                                                                    ����Ь
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-4" href="#pcid=3333">
                                                                    ����Ь
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
                                                                    ������Ʒ
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2674">
                                                                    ���ʺ�
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2672">
                                                                    ����
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2673">
                                                                    Χȹ
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-5" href="#pcid=1225">
                                                                    ԡ����Ʒ
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-5" href="#pcid=1284">
                                                                    ë��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=1596">
                                                                    ԡ��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=1636">
                                                                    ɳ̲��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=1961">
                                                                    �ɷ���
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2864">
                                                                    �ֹ���
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=3338">
                                                                    �¼�
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-5" href="#pcid=1228">
                                                                    ������Ʒ
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-5" href="#pcid=1231">
                                                                    �Ҿ�Ь
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=1299">
                                                                    ��Ʒ��װ
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=1518">
                                                                    �յ�̺
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2126">
                                                                    ��ͷ
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2602">
                                                                    �ص�
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2981">
                                                                    Ь��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2904">
                                                                    �Ҿ�̺
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2676">
                                                                    ������Ʒ
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2677">
                                                                    ���ɴ�
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2678">
                                                                    ��Ϲ�
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2679">
                                                                    ���ɺ�/��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2680">
                                                                    ��Я��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2681">
                                                                    �����
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2712">
                                                                    ���°�
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-5" href="#pcid=1853">
                                                                    ��������
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-5" href="#pcid=1856">
                                                                    ϴ����
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=3350">
                                                                    ���°�
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-5" href="#pcid=1963">
                                                                    ������
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2684">
                                                                    ���ӳ�
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2816">
                                                                    �ֹ���
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2840">
                                                                    ������
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2842">
                                                                    ����
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2905">
                                                                    ů��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=3262">
                                                                    Ь��
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a href="#pcid=3353">
                                                                    װ����Ʒ
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-5" href="#pcid=3354">
                                                                    ���
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=3355">
                                                                    �ӱ�
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=3356">
                                                                    ���ν���
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=3357">
                                                                    ë�����
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-5" href="#pcid=2764">
                                                                    �˶�����
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-5" href="#pcid=3312">
                                                                    �٤��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-5" href="#pcid=3313">
                                                                    ����
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
                                                                    ��Ʒ
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2703">
                                                                    ����/��׹
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2855">
                                                                    ����
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2436">
                                                                    �ֻ�/����/����
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2858">
                                                                    Կ�׿�/�ֻ���
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2857">
                                                                    ����
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <br/>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2856">
                                                                    ��ָ/�䶤
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-6" href="#pcid=3037">
                                                                    ñ��
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-6" href="#pcid=3038">
                                                                    ë��ñ
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=3041">
                                                                    ��ñ
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=3040">
                                                                    ����ñ
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=3039">
                                                                    ��ñ
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-6" href="#pcid=1282">
                                                                    Χ��/Χ��
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-6" href="#pcid=1282">
                                                                    Χ��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=3166">
                                                                    Χ��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2970">
                                                                    ����
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-6" href="#pcid=1595">
                                                                    ����
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2067">
                                                                    �п�
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2068">
                                                                    Ů��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2577">
                                                                    ���Կ�ʽ
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-6" href="#pcid=1997">
                                                                    ����
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-6" href="#pcid=1997">
                                                                    ����
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2653">
                                                                    ̫����
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2653">
                                                                    ̫����
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div style="background: url(&quot;http://images.vancl.com/header/20110117/childdotbg.gif&quot;) repeat-x scroll 0% 0% transparent; height: 1px; font-size: 1px; clear: both;">
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-6" href="#pcid=1587">
                                                                    ���
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2298">
                                                                    Ů��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=3061">
                                                                    ������
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2616">
                                                                    �˶����а�
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2426">
                                                                    ���԰�
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=3060">
                                                                    �а�
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2365">
                                                                    ��ױ��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=1588">
                                                                    Ǯ��
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2018">
                                                                    ����
                                                                </a>
                                                            </div>
                                                            <div class="childdetail">
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2019">
                                                                    ������
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2370">
                                                                    Ů����
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2906">
                                                                    ͯ����
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2649">
                                                                    ������
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2647">
                                                                    ��׿�
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=2648">
                                                                    Ͳ��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=3011">
                                                                    ѥ��
                                                                </a>
                                                                <span>
                                                                    |
                                                                </span>
                                                                <a class="track" name="head-subfloor-6" href="#pcid=3012">
                                                                    ����
                                                                </a>
                                                            </div>
                                                        </div>
                                                        
                                                        <div class="childli">
                                                            <div class="childclass">
                                                                <a class="track" name="head-subfloor-6" href="#pcid=1279">
                                                                    ���
                                                                </a>
                                                            </div>
                                                           <div class="childdetail">
                                                                <a class="track" name="head-subfloor-6" href="#pcid=1279">
                                                                    ���
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
                                                ����ר����&nbsp;&nbsp;
                                            </span>
                                        </li>
                                        <li class="dotfgbg">
                                            &nbsp;
                                        </li>
                                        <li>
                                            <a class="track" name="head-rmzq-1" href="salesrank.html">
                                                ��������
											</a>
										</li>
                                        <li class="dotfgbg">
                                            &nbsp;
                                        </li>
                                        <li>
                                            <a class="track" name="head-rmzq-5" href="search_k.html">
                                                �ػ�����
										  </a>
										</li>
										<li class="dotfgbg">
                                            &nbsp;
                                        </li>
										<li>
                                            <a class="track" name="head-rmzq-5" href="product_saleout.html">
                                                ��Ʒ�ϼ�
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
	<!--ͷ������  -->
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
			<dt>��������</dt>
			<dd>&gt; <span id="UserMap"></span></dd>
		</dl>
		<div id="welcome"> <!--���ã�whj1028@126.com
			<input type="button" class="btn" style="cursor:pointer;" value="�˳���¼" onclick="location.href='/Login/UserLoginOut.aspx';" />-->
		</div>
    <div id="sidebar">
            <div id="grmes">
                <p>&nbsp;</p>
				<ul>
					<li>
					
					<span class="jfstyel4">dahai</span><br />
				���ã���ӭ���ٷܶ��̳ǡ�<br />
				<br />
				<!-- <span id="PartUserTxt" style="display:none">������VJIA�û���<br /></span>
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
					<h3><span>��������</span></h3>
					<ul>
						<li id="User_Order_List"><a href="OrderList.html">�ҵĶ���</a></li>
					</ul>
				</div>
				<!-- <div class="hyjf">
					<h3><span>��Ա���ֹ���</span></h3>
					<ul>
						<li id="User_Score"><a href="https://www.vancl.com/Usercenter/UserPoints.aspx">�ҵĻ�Ա����</a></li>
						<li id="User_Change"><a href="http://www.vancl.com/channel/jf.html">���ֻ����</a></li>
						<li id="User_ConvertJF"><a href="/Usercenter/ConvertJF.aspx">��Ҫ����ת��</a></li>
					</ul>
				</div> -->
				<div class="prod">
					<h3><span>��Ʒ����</span></h3>
					<ul>
						<li id="User_Product_Cart"><a href="UserFavorite.html">�ҵ��ղأ��ݴ�ܣ�</a></li>					</ul>
				</div>
				<div class="personal">
					<h3><span>������Ϣ����</span></h3>
					<ul>
						<li id="User_Info"><a href="Edit_Userinfo.html">�༭���˵���</a></li>
						<li id="Change_PWD"><a href="Edit_password.html">�޸�����</a></li>
						<li id="User_TransferWay" ><a href="Edit_DeliveryInfo.html">�޸��ͻ���Ϣ</a></li>
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
				  <p><br />���� 2011��02��14�գ������� <span class="jfSTYLE1" id="OrderCount">0</span> �Ŷ�����ɽ��ף��ۼ����� <span class="jfSTYLE1" id="OrderSum">0.00</span> Ԫ��<br /><br />
		          <p style="border-top:1px dotted #CCCCCC; padding-top:15px; margin-top:8px;">&nbsp;</p>
					<h3><span>���ж���</span></h3>
					<div class="listtable" id="listtable" style="position: relative;">
						<span id="ctl00_ContentPlaceHolder1_label"><table><thead><tr><th width="37">������</th>
						<th width="50">�µ�ʱ��</th>
						<th width="24">�ܼ�</th>
						<th width="24">״̬</th>
						<th width="50">�鿴����</th>
						<th width="28">����</th>
				
						</tr></thead><tr><td colspan='9'>����ʱû�ж���</td></tr> </table></span>
						<p></p>
						<span id="ctl00_ContentPlaceHolder1_Label_Page"><table border='0' cellpadding='0' style='border-collapse: collapse' width='100%' height='20'><tr><td align='right'>��<b>0</b>����¼&nbsp;ÿҳ:<b>10</b>��&nbsp;��<b>0</b>ҳ&nbsp;ҳ��:<b>1</b>/<b>0</b>&nbsp;&nbsp;&nbsp;&nbsp;��ҳ:&nbsp;</td></tr></table></span>
					</div>
			  </div>
			</div>
		</div>
	</div>
</div>
<!--2010-10-12���begin-->
<div id="light" canceltop="40" style="position:absolute;display:none;background-color:#fff; text-align:center; top:45px;*top:40px; left:
550px;height:125px; color:#666;">
	<div><img src="https://sslimg.vancl.com/AlterOrder/cztop.gif" style="width:170px;" /></div>
    <div style="border:1px solid #c9c9c9; border-top:none; width:153px;padding:5px 8px 18px;">
	<h2 style="font-size:13px; color:#a10000; font-weight:bold; line-height:25px; border-bottom:1px solid #c9c9c9;">�����Խ������²��� <img src="https://sslimg.vancl.com/AlterOrder/cancel.gif" style="cursor:pointer;" onclick="CloseMenu();" /></h2>
    <p style="text-align:left; line-height:20px; padding-left:10px; padding-top:5px; background:url(https://sslimg.vancl.com/AlterOrder/czleft.gif) no-repeat left center; height:20px;"><a id="MH_1" style="color:#666;" href="#" >�޸Ķ�����Ʒ��Ϣ</a></p>
    <p style="text-align:left; line-height:20px;  padding-left:10px; background:url(https://sslimg.vancl.com/AlterOrder/czleft.gif) no-repeat left center; height:20px;"><a id="MH_2" style="color:#666;" href="#">�޸Ķ�������Ʒ����Ϣ</a></p>
    <p style="text-align:left; line-height:20px;  padding-left:10px; background:url(https://sslimg.vancl.com/AlterOrder/czleft.gif) no-repeat left center; height:20px;"><a id="MH_3"  href="#">ȡ������</a></p>
    </div>
</div>
<!--������1begin-->
<div id='canceDiv'  style="position:absolute; min-width:306px;max-width:306px; width:306px; min-height:128px; display:none;  border:1px solid #c9c9c9; background-color:#f4f7f9; top:50px;*top:40px; padding:5px 18px 18px;">
	<div style="width:100%; line-height:25px;float: left;"><div style="float:left;margin-left: 90px;"><h2 style="font-size:14px; color:#a10000; font-weight:bold; line-height:25px; text-align:center; margin:0 auto;">ȡ��������ԭ��</h2></div><div style="float:right"><img src="https://sslimg.vancl.com/AlterOrder/cancel.gif" style="cursor:pointer;" onclick="CloseMenu();" /></div></div>
    <div style="color:#000; line-height:20px;">�����ţ�  <span id="OrderTxt">310092815243 ����ȡ��</span></div>
    <div style="color:#666; text-align:left; line-height:20px;">ȡ��������ԭ��
    <select name='Info_List' id='Info_List'  Onchange='block_Cancel()'><option value='-1'>��ѡ��ԭ��</option><option value='1'>��ѡ�Ż�Ʒ</option><option value='2'>֧��ʧ��</option><option value='3'>��ȱ����Ʒ</option><option value='4'>�ȴ�̫��</option><option value='5'>�������� </option><option value='6'>���ڱ𴦹���</option><option value='7'>�۸�̫��</option><option value='8'>����������Ʒ</option><option value='9'>�����ظ�</option><option value='10'>���Զ��� </option><option value='11'>����</option></select>
    </div>
    <div style="padding-top:15px; display:none;" id="Cancel_txt"><textarea name="txt"  id="txt" style="width: 250px; height: 50px" ></textarea></div>
	<div style="padding-top:15px;">
	<img id="btnSubmit" style="cursor:pointer;vertical-align:middle; margin-left: 120px;" src="https://sslimg.vancl.com/AlterOrder/submitbtn.gif" onclick="return ordercance();"/>
	<span id="Loading" style="display:none">����Ϊ���ύ�����Ժ�...<img src="https://sslimg.vancl.com/AlterOrder/loading.gif" class="imglodding"/></span>
	</div>
	<input type="hidden" id="Cance" name="Cance" value="true" />
	<input type="hidden" id="TxtOid" name="TxtOid" value="0" />
</div>
<!--������1end-->
 
<!--������2begin-->
<div id='alertOrderDiv'  style="display:none;position:absolute; min-width:306px;max-width:306px; width:306px; min-height:85px;border:1px solid #c9c9c9; background-color:#f4f7f9; top:50px; padding:14px 18px 18px;text-align:center;">
    <div style="color:#000; line-height:20px;">��Ǹ�����Ķ���ϵͳ��ʱ�޷��޸ģ�������ͷ���ϵ��</div>
    <div style="color:#666; line-height:20px;">��ϵ�绰��400  650  7099 </div>
	<div style=" padding-top:15px;"><input type="image" src="https://sslimg.vancl.com/AlterOrder/confirm.gif"/>&nbsp; &nbsp;</div>
</div>
<!--������2end-->
<!--2010-10-12���end-->
<script language="javascript"> 
var isIE = $.browser.msie;
document.getElementById("User_Order_List").className = "current";//����CSS
document.getElementById("UserMap").innerHTML = "�ҵĶ���"; //����CSS
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
    
    var _msg = '<div style="color:#000; line-height:20px;">��Ǹ�����Ķ���ϵͳ��ʱ�޷��޸ģ�������ͷ���ϵ��</div>'
                + '<div style="color:#666; line-height:20px;">��ϵ�绰��400  650  7099 </div>'
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
    
    $("#OrderTxt").html("������.....");
    GetOrderTxt(oid);
    $("#alertOrderDiv").css({ display: "none" });
    $("#canceDiv").css({ display: "block" });
}
 
//��ȡ����״̬
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
                if (data.indexOf("��Ч") > 0) {
                    var _html = '<h2 id=\"TxtTitle\" style=\"font-size:14px; color:#a10000; font-weight:bold; line-height:25px; text-align:center;\">����ʧ��</h2>'
                        + '<div style="color:#000; line-height:20px;">' + data + '</div>'
                        + '<div style=" padding-top:15px;"><input type="image" src="https://sslimg.vancl.com/AlterOrder/confirm.gif" onclick="CloseAlertOrderDiv();"/>&nbsp; &nbsp;</div>';
 
                    $("#alertOrderDiv").html(_html);
 
                    $("#canceDiv").css({ display: "none" });
                    $("#alertOrderDiv").css({ display: "block" });
                    return;
                }
            }
            else {
                alert("����û�е�¼���¼�ѹ��ڣ����¼�����ԣ�");
            }
        },
        error: function() { }
    });
}
 
//��¼�޸���־
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
 
//�����޸�״̬
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
 
//�ύȡ����Ϣ
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
                    alert("����ȡ��ʧ�ܣ����Ժ����ԣ�");
                }
            }
            else {
                alert("����û�е�¼���¼�ѹ��ڣ����¼�����ԣ�");
            }
        },
        error: function() { }
    });
}
 
//ȡ���������
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
                alert("����û�е�¼���¼�ѹ��ڣ����¼�����ԣ�");
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
        beforeSend: function() { $("#TxtMsg").html("<img src=\"images/loading.gif\" class=\"imglodding\" />����Ϊ���ύ�����Ժ�..."); },
        success: function(data) {
            var status = parseInt(data, 10);
            var updatePanelId;
            if (status != undefined) {
                switch (status) {
                    case 0:
                        break;
 
                    case 1:
                        $("#TxtTitle").html("����ʧ��");
                        $("#TxtMsg").html("�޷�ȡ��������ȡ����������ͷ���ϵ����");
                        $("#TxtSrv").css({ display: "block" });
                        $("#TxtCnt").css({ display: "block" });
                        clearInterval(b);
                        break;
 
                    case 2:
                        $("#TxtMsg").html("��ȡ����");
                        $("#TxtTitle").html("�����ɹ�");
                        $("#TxtSrv").css({ display: "block" });
                        $("#TxtCnt").css({ display: "block" });
                        clearInterval(b);
                        break;
 
                    case 9:
                        $("#TxtTitle").html("����ʧ��");
                        $("#TxtMsg").html("�޷�ȡ��������ȡ����������ͷ���ϵ����");
 
                        $("#TxtSrv").css({ display: "block" });
                        $("#TxtCnt").css({ display: "block" });
                        clearInterval(b);
                        break;
 
                    default:
                        $("#TxtMsg").html("�޷�ȡ��������ȡ����������ͷ���ϵ����");
                        $("#TxtTitle").html("����ʧ��");
                        $("#TxtSrv").css({ display: "block" });
                        $("#TxtCnt").css({ display: "block" });
                        clearInterval(b);
                        break;
 
                }
            }
            else {
                $("#TxtTitle").html("����ʧ��");
                $("#TxtMsg").html("��Ǹ������ϵͳ������ԭ���޷�ȡ��ȡ����Ϣ������ϵ�ͷ���");
                clearInterval(b);
            }
        },
        error: function() {
            $("#TxtTitle").html("����ʧ��");
            $("#TxtMsg").html("��Ǹ������ϵͳ������ԭ���޷�ȡ��ȡ����Ϣ������ϵ�ܶ��ͷ���");
            clearInterval(b);
        }
    });
}
 
function ordercance() {
    var txtvalue = $("#txt").val();
    if ($("#Cancel_txt").css("display") == "block" && (txtvalue == "" || txtvalue.length < 1)) {
        alert('����дԭ��');
        return false;
    }
    if ($("#Cancel_txt").css("display") == "none" && $("#Info_List option:selected").val() == '-1') {
        alert('��ѡ��ԭ��');
        return false;
    }
    if (txtvalue.length > 300) {
        alert('����д�����������������');
        return false;
    }
    $("#Loading").css({ display: "block" });
    CancelOrder();
}
 
function block_Cancel() {
    if ($("#Info_List option:selected").text() == '����') {
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
 <!--�ײ�DIV��ʼ  -->
        <div id="bottom" align="center">
            <div id="helpIntro" align="left">
                <dl class="helpLeft">
                    <dt>
                        <strong>
                            ����ָ��
                        </strong>
                    </dt>
                    <dd>
                        <img src="images/point.gif" width="5"
                        height="8" />
                        <a target="_blank" href="reg.htm">
                            ע�����û�
                        </a>
                    </dd>
                </dl>
                <dl>
                    <dt>
                        <strong>
                            ���ͷ�ʽ
                        </strong>
                    </dt>
                    <dd>
                        <img src="images/point.gif" width="5"
                        height="8" />
                        <a target="_blank" href="#">
                            ���ͷ�Χ������ʱ��
                        </a>
                    </dd>
                    <dd>
                        <img src="images/point.gif" width="5"
                        height="8" />
                        <a target="_blank" href="http://www.vancl.com/help/Trans_1.htm">
                            ���ͷ���ȡ��׼
                        </a>
                    </dd>
                </dl>
                <dl>
                    <dt>
                        <strong>
                            �ۺ����
                        </strong>
                    </dt>
                    <dd>
                        <img src="images/point.gif" width="5"
                        height="8" />
                        <a target="_blank" href="#">
                            �˻�������
                        </a>
                    </dd>
                    <dd>
                        <img src="images/point.gif" width="5"
                        height="8" />
                        <a target="_blank" href="#">
                            ��ΰ����˻���
                        </a>
                    </dd>
                </dl>
                <dl>
                    <dt>
                        <strong>
                            ��������
                        </strong>
                    </dt>
                    <dd>
                        <img src="images/point.gif" width="5"
                        height="8" />
                        <a target="_blank" href="#">
                            �����ȵ�����
                        </a>
                    </dd>
                    <dd>
                        <img src="images/point.gif" width="5"
                        height="8" />
                        <a target="_blank" href="mailto:fendou@fendoujiaoyou.com">
                            ��ϵ����
                        </a>
                    </dd>
                    <dd>
                        <img src="images/point.gif" width="5"
                        height="8" />
                        <a target="_blank" href="http://www.vancl.com/help/Complainting.htm">
                            Ͷ���뽨��
                        </a>
                    </dd>
                </dl>
                <dl class="Nosty">
                    <dd>
                        <strong>
                            ��������
                        </strong>
                        ���ⳤ;�ѣ�
                        <br />
                        <strong class="wdSty">
                            010-58693870
                        </strong>
                    </dd>
                    <dt>
                    </dt>
                    <dd>
                        <strong>
                            �ͻ���������
                        </strong>
                        ���ⳤ;�ѣ�
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
                        ��ҳ
                    </a>
                    |
                    <a href="http://www.fendoujiaoyu.com" target="_blank">
                        ��˾���
                    </a>
                    |
                    <a href="#" target="_blank">
                        ��˽����
                    </a>
                    
                    |
                    <a href="#" target="_blank">
                        Ͷ���뽨��
                    </a>
                    |
                    
                </p>
                <p class="bZp3">
                    Copyright 2007 - 2011 fendoujiaoyu.com All Rights Reserved ��ICP֤100557��
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
                ����
            </div>
        </div>
<!--�ײ�DIV����  -->
        <!--�����������-->
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
                    <img src="images/close.gif" alt="�ر�"
                    title="�ر�" />
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

