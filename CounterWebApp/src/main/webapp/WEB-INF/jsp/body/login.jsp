<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1">
<title>
	��¼ ע��
</title><link href="css/LoginAndReg.css" type="text/css" rel="stylesheet" />
<link href="css/footer.css" type="text/css" rel="stylesheet" />
    <script src="PublicControls/Js/jquery.js" language="javascript"></script>
    <script src="PublicControls/Js/StringTrim.js" language="javascript"></script>
    <script src="PublicControls/Js/setTab.js" language="javascript"></script>
    <script type="text/JavaScript" src="js/google-analytics.js"></script> 
<meta name="keywords" content="��¼ ע��, ��װ,ֱ��,����,����,ţ���,��γ80����ȫ�޳���,���,ë����,�����" /><meta name="description" content="��¼ ע����VANCLƷ��ϵ�в�Ʒ֮һ��VANCL��רҵ������������װ��Ʒ�ƣ�������װ���¡����г��¡�������¡�ȫ������ţ��ĳ�������γ80����ȫ�޳����������ë���ġ�����㡣" /></head>
<body>
 
<center>
 
<script src="PublicControls/Js/jquery.js" language="javascript"></script>
<div id="Head" align="left">
<a href="http://www.vancl.com/"><img src="images/log.gif" width="311" height="39" alt="Vancl" border="0" /></a>
</div>
<div align="left" id="step_">���㲽��: <span id="shoppingstep_0" >1.��¼ע��</span> &gt;&gt  <span id="shoppingstep_2" >2.��д�˶Զ�����Ϣ</span> &gt;&gt <span id="shoppingstep_3">3.�ύ����</span></div>
<script> 
var shoppingstep = '0';
if(shoppingstep=="0")
{
    DelClass();
    $('#step_ span[@id=shoppingstep_0]').addClass("shoppingstepcontrol");
}
if(shoppingstep=="1")
{
    DelClass();
    $('#step_ ').hide();
}
 
if(shoppingstep=="2")
{
    DelClass();
    $('#step_ span[@id=shoppingstep_2]').addClass("shoppingstepcontrol");
}
 
if(shoppingstep=="3")
{
    DelClass();
    $('#step_ span[@id=shoppingstep_3]').addClass("shoppingstepcontrol");
}
function DelClass()
{
    $('#step_ span[@id^=shoppingstep_]').removeClass("shoppingstepcontrol");
}
</script>
 
<div id="dl">
	<div class="dl">
		<h2 align="left"><img src="images/pic_dl.gif" /></h2>
		<div align="left" class="dlC">
			<!--   S �޸� 2010-8-31     -->
          <span class="blank20"></span>
          <span class="errorword" id="errorword" style="clear:both;"></span>
          <div class="regSetTabBox">
		   <div class="regSetTabCon">
		    <div id="con_one_1">
			 <span class="blank20"></span>
             <div class="FTextArea"><span>�û�����</span><input type="text" name="UserName" id="UserName" class="" /></div>
			 <span class="blank20"></span>
             <div class="FTextArea"><span>��&nbsp;&nbsp;�룺</span><input type="password" name="PassWord" id="PassWord" class="" onkeypress="LoginKeyDown(event);" /></div>
             <span class="blank15"></span>
			 <div class="btnReg"><button type="button" class="" onclick="checkshopinglogin();"></button><span><a href="#" title="">���������ˣ�</a></span></div>
             <span class="blank20"></span>
            </div>
            
			<div id="con_one_2" style="display:none;">
             <span class="blank20"></span>
             <form name="PartnerForm" id="PartnerForm" method="post" style="margin:0px;">
             <div class="FTextArea"><span>�û�����</span><input type="text" name="PartnerUserName" id="PartnerUserName" class="" /></div>
			 <span class="blank20"></span>
             <div class="FTextArea"><span>��&nbsp;&nbsp;�룺</span><input type="password" name="PartnerPassword" id="PartnerPassword" class="" onkeypress="PartLoginKeyDown(event);" /></div>
             <span class="blank15"></span>
			 <div class="btnReg"><button type="button" onclick="CheckPartLogin();" class=""></button></div>
             <input type="hidden" name="Logintrue" value="true" />
			 <input type="hidden" name="IsVjia" id="IsVjia" />
			 <input type="hidden" name="IsLogIn"  value="1"/>
			 </form>
             <span class="blank20"></span>
            </div>
            
		   </div>  
		   <span class="blank20"></span>
		   <div class="tishiArea">
		    <div class="tishiHead">��ܰ��ʾ��</div>
			<ul>
			 <li>1�������������û�����������е�½��</li>
			 <li>2�������δע��ܶ��û����������Ƚ���ע�ᡣ</li>
			</ul>
			
			<div class="">�������������<a href="#" target="_blank">��������</a>��<a href="#" target="_blank">��ϵ�ͷ�</a></div>
		   </div>
		  </div>
<!--   E �޸� 2010-8-31     -->		
		</div>
	</div>
      <form method="post" name="myform1" onsubmit="return Check_User_Login()">
      <input type="hidden" name="Reg" value="true"/>
	<div class="zc">
		<h2 align="left" ><img src="images/pic_zc.gif"/></h2>
		<div align="right" class="dlC edlC">
		    <ul>
		    <span class="errorword" id="Regerrorword"></span>
			<li class="sty08">����д����Email��ַ��<input name="Email" id="Email"   onblur="Check_Email()"  type="text" /></li>
			<li class="pwdli emailli" ><span>����д��Ч��Email��ַ��Ϊ�´ε�¼</span><span>���û�����ͬʱ����Ҳ��������ַ</span><span>���������ʻ���Ϣ������֪ͨ�ȡ�&nbsp;&nbsp;</span></li>
			<li class="sty088">���趨���룺<input id="RexPassWord" name="RexPassWord" maxlength="16" type="password" onchange="CheckPassword();" /></li>
			<li class="pwdli"><span>��������Ϊ6-16λ��ĸ������&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br /></li>
			<li class="sty088">���ٴ������趨���룺<input id="RePassWord" name="RePassWord" maxlength="16" onchange="Check_RePassWord()" type="password" /></li>
			<li class="sty088">�û�����<input id="NewUserName" name="NewUserName" maxlength="16" type="text"  onchange="CheckNewUserName()" /></li>
			<li class="pwdli newusername"><span>��������Ӣ�ġ����֡��»��߻�����</span><span>�����</span></li>
			
	        <li class="sty088" style=" padding-top:7px;"><div style=" margin-right:29px;">��������֤�룺<input name="Validate_Code" id="Validate_Code" type="text" class="inputSty01" onchange="CheckValidateCode()" style="width:70px;" /><img id="Img1" style="vertical-align:top; padding:0 0 0 8px;  vertical-align:bottom;" src="/PublicControls/NewValidateCode.aspx?height=25&width=93&codeLen=5&photoType=2" onclick="this.src='images/NewValidateCode.aspx?height=25&width=93&codeLen=5&photoType=2&t='+new Date().getTime()" border="0" /></div></li>		
			<div style=" margin-top:-6px;*padding-top:10px; margin-right:38px;"><a href="javascript:ChangeImg1()" style=" padding-bottom:0px;vertical-align:bottom;">�����壬��һ��</a></div>
			<li class="sty10" style=" margin-top:5px;*margin-top:-7px;"><input type="image" src="images/button_wc.gif" style="width:80px; height:25px;border:0;" /></li>
			</ul>
      </div>
      </div>
	</form>
</div>
<!--Bottom-->
 
<div id="bottom" align="center">
		<div id="bottoms">
			<p class="bZp3">Copyright 2007 - 2011 fendoujiaoyu.com All Rights Reserved ��ICP֤100557��</p>
			<p class="bZp2">
				<a href="http://www.ectrustprc.org.cn/seal/splash/1000020.htm" target="_blank"><img src="images/redlogo.gif" border="0" /></a><img src="images/costumeorg.gif" border="0"  /><a href="http://www.315online.com.cn/member/315090053.html" target="_blank"><img src="images/wsjybzzx.gif" border="0" /></a>
			</p>
		</div>
	</div>
<!--Bottom End-->
</center>
<script language="javascript" type="text/javascript"> 
    function LoginKeyDown(event) {
        if (event.keyCode == 13) { checkshopinglogin() }
    }
    function PartLoginKeyDown(event) {
        if (event.keyCode == 13) { CheckPartLogin() }
    }
    function CheckUserName() {
        IFRAME.Chehck_UserName.src = "#";
    }
    function worr(txt) {
        $("#Regerrorword").addClass("Error");
        $("#Regerrorword").html("<font color=#A10000>" + txt + "</font>");
    }
    function Check_UserName(Username) {
        Iframe1.location.href = "#" + Email;
    }
    function CheckPartLogin() {
        var UserName = document.getElementById("PartnerUserName");
        var PassWord = document.getElementById("PartnerPassword");
        var PartnerForm = document.getElementById("PartnerForm");
        if (UserName.value == "" || PassWord.value == "" || UserName.value.trim() == "" || PassWord.value.trim() == "") {
            $("#errorword").addClass("Error");
            $("#errorword").html("<font color=#A10000>�����������û���������</font>");
            return false;
        } else {
            $("#errorword").removeClass("Error");
            $("#errorword").html("");
        }
        document.getElementById("IsVjia").value = 2;
        PartnerForm.action = "#";//�ύ��ַ
        PartnerForm.method = "post";
        PartnerForm.submit();
    }
    //����¼
    function checkshopinglogin() {
        var UserName = document.getElementById("UserName");
        var PassWord = document.getElementById("PassWord");
        if (UserName.value == "" || PassWord.value == "" || UserName.value.trim() == "" || PassWord.value.trim() == "") {
            $("#errorword").addClass("Error");
            $("#errorword").html("<font color=#A10000>�����������û���������</font>");
            return false;
        } else {
            $("#errorword").removeClass("Error");
            $("#errorword").html("");
        }
        return Loginasync();
        return true;
    }
    //���Ϸ���Email
    function Check_Email() {
        var span_CheckUsername = document.getElementById("Email");
        var Regerrorword = document.getElementById("Regerrorword");
        if (span_CheckUsername.value == "" || !/^[\w-]+(\.[\w-]+)*@[\w-]+(\.(\w)+)*(\.(\w){2,3})$/.test(span_CheckUsername.value)) {
            $("#Regerrorword").addClass("Error").removeClass("rihtReg");
            $("#Regerrorword").html("<font color=#A10000>��������Ч��Email��ַ</font>");
            return false;
        } else {
            return xmlcheckemail(span_CheckUsername.value);
        }
        return true;
    }
 
    function CheckNewUserName() {
        var NewUserName = document.getElementById("NewUserName");
 
        if (NewUserName.value != "" && !/^[a-zA-Z0-9_\u4e00-\u9fa5]+$/.test(NewUserName.value)) {
            $("#Regerrorword").addClass("Error").removeClass("rihtReg");
            $("#Regerrorword").html("<font color=#A10000>�ǳ�ֻ�ܺ�����Ӣ�ġ����ֺ��»���</font>");
            return false;
        } else {
            $("#Regerrorword").removeClass("Error").removeClass("rihtReg");
            $("#Regerrorword").html("");
        }
        return true;
    }
 
 
    //�������
    function CheckPassword() {
        var RexPassWord = document.getElementById("RexPassWord");
        if (RexPassWord.value == "" || RexPassWord.value.trim().length < 6) {
            $("#Regerrorword").addClass("Error").removeClass("rihtReg");
            $("#Regerrorword").html("<font color=#A10000>����������6λ������������</font>");
            return false;
        } else {
            $("#Regerrorword").removeClass("Error").removeClass("rihtReg");
            $("#Regerrorword").html("");
        }
        return true;
    }
    //�������
    function Check_RePassWord() {
        var RexPassWord = document.getElementById("RexPassWord");
        var RePassWord = document.getElementById("RePassWord");
        if (RePassWord.value == "" || RePassWord.value != RexPassWord.value.trim()) {
            $("#Regerrorword").addClass("Error").removeClass("rihtReg");
            $("#Regerrorword").html("<font color=#A10000>�������벻һ�£�����������</font>");
            return false;
        }
        else {
            $("#Regerrorword").removeClass("Error").removeClass("rihtReg");
            $("#Regerrorword").html("");
        }
        return true;
    }
 
    function Check_User_Login() {
        if (!Check_Email()) return false;
        if (!CheckPassword()) return false;
        if (!Check_RePassWord()) return false;
        if (!CheckNewUserName()) return false;
        if (!CheckValidateCode()) return false;
 
        return true;
    }
 
    function xmlcheckemail(Email) {
        var Url = "XmlCheckUserName.ashx?UserName=" + Email;
        var bool = true;
        $.ajax({
            url: Url,
            cache: false,
            async: false,
            datatype: "json",
            contentType: "application/json",
            success: function(data) {
                if (data != null && data != "") {
                    data = eval("(" + data + ")");
                    var error = data.Error;
                    if (error != "") {
                        $("#Regerrorword").addClass("Error").removeClass("rihtReg");
                        $("#Regerrorword").html("<font color=#A10000>" + error + "</font>");
                        bool = false;
                    }
                } else {
                    $("#Regerrorword").removeClass("Error").addClass("rihtReg");
                    $("#Regerrorword").html("���û�������ʹ��");
                }
            },
            error: function() {
                $("#Regerrorword").removeClass("Error").removeClass("rihtReg");
                $("#Regerrorword").html("");
            }
        })
        return bool;
    }
 
    function Loginasync() {
 
        var loginUrl = "XmlCheckUserName.ashx";
        var loginData = "Loginasync=true&LoginUserName=" + encodeURIComponent($("#UserName").attr("value")) + "&UserPassword=" + encodeURIComponent($("#PassWord").attr("value"));
        var b = true;
        $.ajax({
            type: "POST",
            url: loginUrl,
            cache: false,
            async: false,
            data: loginData,
            success: function(data) {
                if (data != null && data != "" && typeof (data) == "string") {
                    data = eval("(" + data + ")");
                    var error = data.Error;
                    if (error != "") {
                        $("#errorword").addClass("Error").removeClass("rihtReg");
                        $("#errorword").html("<font color=#A10000>" + error + "</font>");
                        b = false;
                    }
                }
            }
        });
 
        //��֤�Ƿ�����ں������У�����֤��¼��Ȼ����ȥ��
        if (CheckUserInblacklist(escape($("#UserName").attr("value"))) && b) CreateLink(RedirectUrl());
        /*
	
    var b = true;
        $.post("XmlCheckUserName.ashx", {
        Loginasync: true,
        LoginUserName: escape($("#UserName").attr("value")),
        UserPassword: escape($("#PassWord").attr("value"))
        }, function(data) {
        if (data != null && data != "" && typeof (data) == "string") {
        data = eval("(" + data + ")");
        var error = data.Error;
        if (error != "") {
        $("#errorword").addClass("Error").removeClass("rihtReg");
        $("#errorword").html("<font color=#A10000>" + error + "</font>");
        b = false;
        }
        }
        if (CheckUserInblacklist(escape($("#UserName").attr("value"))) && b) CreateLink(RedirectUrl());
        })
        */
 
    }
 
 
    //�����֤��
    function CheckValidateCode() {
        var Validate_Code = document.getElementById("Validate_Code");
        if (Validate_Code.value == "" || Validate_Code.value.trim().length < 4) {
            $("#Regerrorword").addClass("Error").removeClass("rihtReg");
            $("#Regerrorword").html("<font color=#A10000>��������ȷ����֤��</font>");
            return false;
        } else {
            $("#Regerrorword").removeClass("Error").removeClass("rihtReg");
            $("#Regerrorword").html("");
            return xmlcheckeVCode(Validate_Code.value);
        }
        return true;
    }
    function xmlcheckeVCode(Email) {
        var Url = "XmlCheckUserName.ashx?VCode=" + Email;
        var bool = true;
        $.ajax({
            url: Url,
            cache: false,
            async: false,
            datatype: "json",
            contentType: "application/json",
            success: function(data) {
                if (data != null && data != "") {
                    data = eval("(" + data + ")");
                    var error = data.Error;
                    $("#Regerrorword").addClass("Error").removeClass("rihtReg");
                    $("#Regerrorword").html("<font color=#A10000>" + error + "</font>");
                    bool = false;
                } else {
                    $("#Regerrorword").removeClass("Error").removeClass("rihtReg");
                    $("#Regerrorword").html("");
                }
            },
            error: function() {
                $("#Regerrorword").removeClass("Error").removeClass("rihtReg");
                $("#Regerrorword").html("");
            }
 
        })
        return bool;
    }
    function ChangeImg1() {
        $("#Img1").attr("src", "/PublicControls/NewValidateCode.aspx?height=25&width=93&codeLen=5&photoType=2&t=" + new Date().getTime());
    }
 
    //���������
    function CheckUserInblacklist(UserName) {
        var Url = "XmlCheckUserName.ashx?CheckUserInblack=true&blackUsername=" + UserName;
        var bool = true;
        $.ajax({
            url: Url,
            cache: false,
            async: false,
            datatype: "json",
            contentType: "application/json",
            success: function(data) {
                if (data != null && data != "") {
                    data = eval("(" + data + ")");
                    var Inblack = data.Inblack;
                    if (Inblack == "true")
                    { bool = false; }
 
                }
            }
        })
        return bool;
    }
    function GetUserName() {
 
        var Url = "XmlCheckUserName.ashx?GetUsername=true";
        $.ajax({
            url: Url,
            cache: false,
            async: false,
            datatype: "json",
            contentType: "application/json",
            success: function(data) {
 
                if (data != null && data != "") {
                    data = eval("(" + data + ")");
                    var Username = data.Username;
                    if (Username != "") {
                        $("#UserName").val(Username);
                        $("#PassWord").focus();
                    }
 
                } else $("#UserName").focus();
            }
        })
    }
    //����ȥ��
    function RedirectUrl() {
        var Url = location.href;
        var Url_ = Url.split("?");
        var NewUrl = "";
        if (Url_.length > 1) {
            NewUrl = Url_[1];
            for (var i = 2; i < Url_.length; i++) {
                NewUrl += "?" + Url_[i];
            }
        } else {
            NewUrl = "index.html";//Ҫ�޸ĵĵط�
        }
        return NewUrl;
    }
    //�������ӣ�Ϊ֧��weblog
    function CreateLink(Url) {
        location.href = Url;
    }
    GetUserName();
</script>
</body>
</html>

