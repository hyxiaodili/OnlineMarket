<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    
    <head>
        <title>
            ѡ���ͻ�ʱ��-�ܶ��̳�
        </title>
        <meta name="keywords" content="VANCL  ���ͳ�Ʒ ��װ,ֱ��,����,����,ţ���,��γ80����ȫ�޳���,���,ë����,�����"
        />
        <meta name="description" content="VANCL��Ʒ����ŷ���������ʦ�����󻮣����ᶥ����װƷ�ƾ����ʽ֮������ͬʱ�ο�������ʿ�����ص㣬��ѡ��֧�����������������û����еȼ�λ�����ݳ�Ʒ�ʣ��ᳫ��Լ��������ڡ�������"
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
                        <!--Title-->
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
                                                </a>
                                                </span>
                                                </a>
                                            </span>
                                        </h2>
                                        <h3 align="left">
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
                                            ������&nbsp;&nbsp;-&nbsp;&nbsp;��������&nbsp;&nbsp;-&nbsp;&nbsp;������
                                            <br/>
                                            <span class="reusableColor3">
                                                �ջ���ַ��
                                            </span>
                                            fdsfsf
                                            <br/>
                                            <span class="reusableColor3">
                                                �������룺
                                            </span>
                                            234234
                                            <br>
                                            <span class="reusableColor3">
                                                ��ϵ��ʽ��
                                            </span>
                                            32432433 / 13223232323
                                        </h3>
                                    </span>
                                    <h2 class="h2new" align="left">
                                        ���ͷ�ʽ&nbsp;
                                        <span class="reusableColor4 modiSty" style="margin-left:635px; font:100 12px/1 '����';">
                                            <a href="Shopping_DeliveryType.html">
                                                <span class="addFontCol">
                                                    �޸�
                                                </span>
                                            </a>
                                        </span>
                                    </h2>
                                    <span id="TransferString">
                                        <h3 align="left">
                                            ��ݣ�֧�ֻ������ȫ��������59Ԫ���˷ѡ�
                                        </h3>
                                    </span>
                                    <h2 class="h2new" align="left">
                                        ֧����ʽ&nbsp;
                                        <span class="reusableColor4 modiSty" style="margin-left:635px; font:100 12px/1 '����';">
                                            <a href="Shopping_PayType.html">
                                                <font color='#a10000'>
                                                    �޸�
                                                </font>
                                            </a>
                                        </span>
                                    </h2>
                                    <h4 align="left">
                                        <span id="PaymentsString">
                                            ����֧��-����ͨ
                                        </span>
                                    </h4>
                                </div>
                            </td>
                        </tr>
                        <tr bgcolor="#7a7f89" class="trSty01">
                            <td align="left" class="reusableColor5 xxSty01 typeBottom">
                                &nbsp;&nbsp;&nbsp;&nbsp;��ѡ��
                                <strong>
                                    �ͻ�ʱ��
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
                                                �����ա�˫��������վ����ͻ�
                                            </li>
                                            <li>
                                                <input type="radio" name="Transfer_Time" value="1" style="border:none;"
                                                />
                                                ֻ��˫���ա������ͻ��������ղ����ͻ���
                                            </li>
                                            <li>
                                                <input type="radio" name="Transfer_Time" value="2" style="border:none;"
                                                />
                                                ֻ�й������ͻ���˫���ա����ղ����ͣ�&nbsp;&nbsp;&nbsp;&nbsp;
                                                <span class="reusableColor3">
                                                    д��¥/���õ�ַ�ͻ�ѡ��
                                                </span>
                                            </li>
                                            <li>
                                                <input type="radio" name="Transfer_Time" value="3" style="border:none;"
                                                />
                                                ѧУ��ַ���õ�ַ����û�ˣ��뾡����������ʱ���ͻ���&nbsp;&nbsp;&nbsp;&nbsp;
                                                <span class="reusableColor3">
                                                    �ر��ſ��ܳ���Ԥ���ͻ�����
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
                                $("#errorTime").html("<font color=#A10000>��ѡ���ͻ�ʱ��</font>");
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

