<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    
    <head>
        <title>
            ѡ���ͻ���ʽ-�ܶ��̳�
        </title>
        <meta name="keywords" content=" ��װ,ֱ��,����,����,ţ���,��γ80����ȫ�޳���,���,ë����,�����"
        />
        <meta name="description" content="��ŷ���������ʦ�����󻮣����ᶥ����װƷ�ƾ����ʽ֮������ͬʱ�ο�������ʿ�����ص㣬��ѡ��֧�����������������û����еȼ�λ�����ݳ�Ʒ�ʣ��ᳫ��Լ��������ڡ�������"
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
                                            �ջ�����Ϣ
                                            <span class="reusableColor4 typeH2">
                                                <a href="Shopping_Address.html">
                                                    <span class="addFontCol">
                                                        �޸�
                                                    </span>
                                                </a>
                                            </span>
                                        </h2>
                                        <h4 align="left">
                                            <span class="reusableColor3 letterSpac">
                                                �ջ���
                                            </span>
                                            <span class="reusableColor3 letterSpac1">
                                                ��
                                            </span>
                                            whj
                                            <br/>
                                            <span class="reusableColor3">
                                                �ء�������
                                            </span>
                                            ������&nbsp;&nbsp;-&nbsp;&nbsp;��������&nbsp;&nbsp;-&nbsp;&nbsp;�㷻��
                                            <br/>
                                            <span class="reusableColor3">
                                                �ջ���ַ��
                                            </span>
                                            ���������㷻��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <br/>
                                            <span class="reusableColor3">
                                                �������룺
                                            </span>
                                            234234
                                            <br>
                                            <span class="reusableColor3">
                                                ��ϵ��ʽ��
                                            </span>
                                            12345678 / 13223232323
                                            </h3>
                                    </span>
                                </div>
                            </td>
                        </tr>
                        <form method="post" name="Myform" id="Myform" action="Shopping_PayType.html"><!-- �˴���Ҫjsʵ�� -->
                            <tr bgcolor="#7a7f89" class="trSty01">
                                <td valign="middle" align="left" class="reusableColor5 xxSty01 typeBottom">
                                    &nbsp;&nbsp;&nbsp;&nbsp;��ѡ��
                                    <strong>
                                        ���ͷ�ʽ��
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
                                                ��ݣ�֧�ֻ������ȫ��������59Ԫ���˷ѡ�
                                                <span class="reusableColor1">
                                                    <a href='#' target='_blank'>
                                                        �鿴�����������ͷ�Χ
                                                    </a>
                                                </span>
                                                <br/>
                                                <br/>
                                                <span class="typeSpan1">
                                                    ��������������������򣬲�֧���������������EMS�����
                                                </span>
                                            </li>
                                            <li align="left">
                                                <input type='radio' name='Transfer' value='05'>
                                                EMS����֧�ֻ��������
                                                <span class="reusableColor3">
                                                    </br>
                                                    </br>
                                                    ������"����"���ԭ"ƽ��"�ͻ���ʽ���ͻ����졣ȫ��������59Ԫ���˷ѡ�
                                                </span>
                                                <span class="reusableColor1">
                                                    <a href='/help/Transfer.htm' target='_blank'>
                                                        �鿴�����������ͷ�Χ
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
                                &nbsp;&nbsp;&nbsp;&nbsp;������������Ҫѡ�� ֧����ʽ �ͻ�ʱ�䡣
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
    </body>

</html>

