<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    
    <head>
        <title>
            ���ﳵ-�ܶ��̳�
        </title>
        <meta name="keywords" content=" ��װ,ֱ��,����,����,ţ���,��γ80����ȫ�޳���,���,ë����,�����"
        />
        <meta name="description" content="��ŷ���������ʦ�����󻮣����ᶥ����װƷ�ƾ����ʽ֮������ͬʱ�ο�������ʿ�����ص㣬��ѡ��֧�����������������û����еȼ�λ�����ݳ�Ʒ�ʣ��ᳫ��Լ��������ڡ�������"
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
                        <img src="images/pic_gwc__r2_c2.jpg" alt="�ҵĹ��ﳵ" />
                    </div>
                    <div class="title">
                        <span id="transferSpan">
                        </span>
                    </div>
                    <div class="jl">
                        <a href="shopping_addr.html">
                            <img src="images/pic_gwc__r2_c10.jpg" alt="ȥ����" />
                        </a>
                    </div>
                    <div id="divPointError" style="margin:0 0 10px 0; float:left; display:none">
                        <div class="pointErrorMsg">
                            ��Ŀǰ�Ļ���Ϊ��
                            <span id="myPointNumber">
                                0
                            </span>
                            �֣����ι�����֧����
                            <span id="needPointNumber">
                                0
                            </span>
                            �֣����޸Ĺ��ﳵ�еĻ��ֻ�����Ʒ��
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
                                    ��Ʒ
                                </td>
                                <td width="260" height="32" align="center">
                                    ����
                                </td>                               
                                <td width="66" height="32" align="center">
                                    ����
                                </td>
                                <td width="81" height="32" align="center">
                                    ����
                                </td>
                                
                                <td width="106" height="32" align="center">
                                    С��
                                </td>
                                <td width="60" align="center">
                                    ����
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
                                    ��Ʒ�����ܼƣ�
                                    <span class="colSty " id="spTotalCount">
                                        0
                                    </span>
                                    <span class="colSty sty008">
                                        ��
                                    </span>
                                   ��Ʒ����ܼƣ�
                                    <span id="giftPoint" class="colSty ">
                                        0
                                    </span>
                                    <span class="colSty sty008">
                                        ��
                                    </span>
                                   ʵ�ʽ���ܼƣ�
                                    <span id="totalPoint" class="colSty ">
                                        0
                                    </span>
                                    <span class="colSty sty010">
                                        ��
                                    </span>
                                </td>
                            </tr>
                        </table>
                        <table border="0" cellspacing="0" cellpadding="0" class="tabSty01">
                            <tr>
                                <td colspan="2" align="left" valign="top" class="tdSty03">
                                    <a href="index.html">
                                        <img src="images/pic_gwc__r10_c3.jpg" width="95" height="25" alt="��������"
                                        />
                                    </a>
                                    <a href="javascript:ClearShoppingCar();">
                                        <img src="images/pic_gwc__r10_c8.jpg" width="95" height="25" class="jl02"
                                        alt="��չ��ﳵ" />
                                    </a>
                                </td>
                                <td align="left">&nbsp;
                                    
                                </td>
                                <td align="center">&nbsp;
                                    
                                </td>
                                <td colspan="3" align="right" valign="top" class="tdSty04">
                                   <!--  <a href="javascript:ShoppingCarPay();"> -->
								   <a href="shopping_addr.html">
                                        <img src="images/pic_gwc__r2_c10.jpg" alt="ȥ����" />
                                    </a>
                                </td>
                            </tr>
                        </table>
                        <!--Product end-->
                    </div>
                    <div id="OffProductList">
                    </div>
                    <!-- E ��������ʽ������ -->
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
                        ���ڹ�����������κ����ʣ������
                        <a href="#" target="_blank">
                            <span class="reusableColor1">
                                ��������
                            </span>
                        </a>
                        ��
                        <a href="mailto:fendou@fendoujiaoyu.com" target="_blank">
                            <span class="reusableColor1">
                                ��ϵ�ͷ�
                            </span>
                        </a>
                    </div>
                    <dl class="dobuleBorder">
                        <dt>
                            <strong>
                                ���ڡ��ҵĹ��ﳵ��
                            </strong>
                        </dt>
                        <dd>
                            ��Ϊ�������ύ����������������ҵĹ��ﳵ�����Ѿ�ѡ��ġ���δ�ύ��������Ʒ�嵥�����ǽ�Ϊ������15�졣
                            <br />
                            ������Ʒ�����ڼ䣬����ѡ����Ʒ�ļ۸��Ż����ߡ���桢����ʱ�����Ϣ���ܻ������仯��������ҳ������ϢΪ׼��
                        </dd>
                    </dl>
                </div>
                <div id="bottom" align="center">
                    <div id="bottoms">
                        <p class="bZp3">
                            Copyright 2007 - 2011 fendoujiaoyu.com All Rights Reserved ��ICP֤100557��
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

