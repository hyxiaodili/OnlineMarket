<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1">
<title>
	登录 注册
</title><link href="css/LoginAndReg.css" type="text/css" rel="stylesheet" />
<link href="css/footer.css" type="text/css" rel="stylesheet" />
    <script src="PublicControls/Js/jquery.js" language="javascript"></script>
    <script src="PublicControls/Js/StringTrim.js" language="javascript"></script>
    <script src="PublicControls/Js/setTab.js" language="javascript"></script>
    <script type="text/JavaScript" src="js/google-analytics.js"></script> 
<meta name="keywords" content="登录 注册, 服装,直销,衬衣,衬衫,牛津纺,经纬80公里全棉衬衫,领带,毛背心,卡其裤" /><meta name="description" content="登录 注册是VANCL品牌系列产品之一，VANCL是专业生产和销售男装的品牌，包括正装衬衣、休闲衬衣、短袖衬衣、全棉免烫牛津纺衬衫、经纬80公里全棉衬衫、领带、毛背心、卡其裤。" /></head>
<body>
 
<center>
 
<script src="PublicControls/Js/jquery.js" language="javascript"></script>
<div id="Head" align="left">
<a href="http://www.vancl.com/"><img src="images/log.gif" width="311" height="39" alt="Vancl" border="0" /></a>
</div>
<div align="left" id="step_">结算步骤: <span id="shoppingstep_0" >1.登录注册</span> &gt;&gt  <span id="shoppingstep_2" >2.填写核对订单信息</span> &gt;&gt <span id="shoppingstep_3">3.提交订单</span></div>
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
			<!--   S 修改 2010-8-31     -->
          <span class="blank20"></span>
          <span class="errorword" id="errorword" style="clear:both;"></span>
          <div class="regSetTabBox">
		   <div class="regSetTabCon">
		    <div id="con_one_1">
			 <span class="blank20"></span>
             <div class="FTextArea"><span>用户名：</span><input type="text" name="UserName" id="UserName" class="" /></div>
			 <span class="blank20"></span>
             <div class="FTextArea"><span>密&nbsp;&nbsp;码：</span><input type="password" name="PassWord" id="PassWord" class="" onkeypress="LoginKeyDown(event);" /></div>
             <span class="blank15"></span>
			 <div class="btnReg"><button type="button" class="" onclick="checkshopinglogin();"></button><span><a href="#" title="">密码忘记了？</a></span></div>
             <span class="blank20"></span>
            </div>
            
			<div id="con_one_2" style="display:none;">
             <span class="blank20"></span>
             <form name="PartnerForm" id="PartnerForm" method="post" style="margin:0px;">
             <div class="FTextArea"><span>用户名：</span><input type="text" name="PartnerUserName" id="PartnerUserName" class="" /></div>
			 <span class="blank20"></span>
             <div class="FTextArea"><span>密&nbsp;&nbsp;码：</span><input type="password" name="PartnerPassword" id="PartnerPassword" class="" onkeypress="PartLoginKeyDown(event);" /></div>
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
		    <div class="tishiHead">温馨提示：</div>
			<ul>
			 <li>1、请输入您的用户名及密码进行登陆；</li>
			 <li>2、如果还未注册奋斗用户名，请您先进行注册。</li>
			</ul>
			
			<div class="">如有疑问请进入<a href="#" target="_blank">帮助中心</a>或<a href="#" target="_blank">联系客服</a></div>
		   </div>
		  </div>
<!--   E 修改 2010-8-31     -->		
		</div>
	</div>
      <form method="post" name="myform1" onsubmit="return Check_User_Login()">
      <input type="hidden" name="Reg" value="true"/>
	<div class="zc">
		<h2 align="left" ><img src="images/pic_zc.gif"/></h2>
		<div align="right" class="dlC edlC">
		    <ul>
		    <span class="errorword" id="Regerrorword"></span>
			<li class="sty08">请填写您的Email地址：<input name="Email" id="Email"   onblur="Check_Email()"  type="text" /></li>
			<li class="pwdli emailli" ><span>请填写有效的Email地址作为下次登录</span><span>的用户名，同时我们也会给这个地址</span><span>发送您的帐户信息、订单通知等。&nbsp;&nbsp;</span></li>
			<li class="sty088">请设定密码：<input id="RexPassWord" name="RexPassWord" maxlength="16" type="password" onchange="CheckPassword();" /></li>
			<li class="pwdli"><span>密码请设为6-16位字母或数字&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br /></li>
			<li class="sty088">请再次输入设定密码：<input id="RePassWord" name="RePassWord" maxlength="16" onchange="Check_RePassWord()" type="password" /></li>
			<li class="sty088">用户名：<input id="NewUserName" name="NewUserName" maxlength="16" type="text"  onchange="CheckNewUserName()" /></li>
			<li class="pwdli newusername"><span>请输入中英文、数字、下划线或它们</span><span>的组合</span></li>
			
	        <li class="sty088" style=" padding-top:7px;"><div style=" margin-right:29px;">请输入验证码：<input name="Validate_Code" id="Validate_Code" type="text" class="inputSty01" onchange="CheckValidateCode()" style="width:70px;" /><img id="Img1" style="vertical-align:top; padding:0 0 0 8px;  vertical-align:bottom;" src="/PublicControls/NewValidateCode.aspx?height=25&width=93&codeLen=5&photoType=2" onclick="this.src='images/NewValidateCode.aspx?height=25&width=93&codeLen=5&photoType=2&t='+new Date().getTime()" border="0" /></div></li>		
			<div style=" margin-top:-6px;*padding-top:10px; margin-right:38px;"><a href="javascript:ChangeImg1()" style=" padding-bottom:0px;vertical-align:bottom;">看不清，换一张</a></div>
			<li class="sty10" style=" margin-top:5px;*margin-top:-7px;"><input type="image" src="images/button_wc.gif" style="width:80px; height:25px;border:0;" /></li>
			</ul>
      </div>
      </div>
	</form>
</div>
<!--Bottom-->
 
<div id="bottom" align="center">
		<div id="bottoms">
			<p class="bZp3">Copyright 2007 - 2011 fendoujiaoyu.com All Rights Reserved 京ICP证100557号</p>
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
            $("#errorword").html("<font color=#A10000>请输入您的用户名和密码</font>");
            return false;
        } else {
            $("#errorword").removeClass("Error");
            $("#errorword").html("");
        }
        document.getElementById("IsVjia").value = 2;
        PartnerForm.action = "#";//提交地址
        PartnerForm.method = "post";
        PartnerForm.submit();
    }
    //检查登录
    function checkshopinglogin() {
        var UserName = document.getElementById("UserName");
        var PassWord = document.getElementById("PassWord");
        if (UserName.value == "" || PassWord.value == "" || UserName.value.trim() == "" || PassWord.value.trim() == "") {
            $("#errorword").addClass("Error");
            $("#errorword").html("<font color=#A10000>请输入您的用户名和密码</font>");
            return false;
        } else {
            $("#errorword").removeClass("Error");
            $("#errorword").html("");
        }
        return Loginasync();
        return true;
    }
    //检查合法的Email
    function Check_Email() {
        var span_CheckUsername = document.getElementById("Email");
        var Regerrorword = document.getElementById("Regerrorword");
        if (span_CheckUsername.value == "" || !/^[\w-]+(\.[\w-]+)*@[\w-]+(\.(\w)+)*(\.(\w){2,3})$/.test(span_CheckUsername.value)) {
            $("#Regerrorword").addClass("Error").removeClass("rihtReg");
            $("#Regerrorword").html("<font color=#A10000>请输入有效的Email地址</font>");
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
            $("#Regerrorword").html("<font color=#A10000>昵称只能含有中英文、数字和下划线</font>");
            return false;
        } else {
            $("#Regerrorword").removeClass("Error").removeClass("rihtReg");
            $("#Regerrorword").html("");
        }
        return true;
    }
 
 
    //检查密码
    function CheckPassword() {
        var RexPassWord = document.getElementById("RexPassWord");
        if (RexPassWord.value == "" || RexPassWord.value.trim().length < 6) {
            $("#Regerrorword").addClass("Error").removeClass("rihtReg");
            $("#Regerrorword").html("<font color=#A10000>密码必须大于6位，请重新输入</font>");
            return false;
        } else {
            $("#Regerrorword").removeClass("Error").removeClass("rihtReg");
            $("#Regerrorword").html("");
        }
        return true;
    }
    //检查密码
    function Check_RePassWord() {
        var RexPassWord = document.getElementById("RexPassWord");
        var RePassWord = document.getElementById("RePassWord");
        if (RePassWord.value == "" || RePassWord.value != RexPassWord.value.trim()) {
            $("#Regerrorword").addClass("Error").removeClass("rihtReg");
            $("#Regerrorword").html("<font color=#A10000>两次密码不一致，请重新输入</font>");
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
                    $("#Regerrorword").html("该用户名可以使用");
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
 
        //验证是否包含在黑名单中，再验证登录，然后处理去向。
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
 
 
    //检查验证码
    function CheckValidateCode() {
        var Validate_Code = document.getElementById("Validate_Code");
        if (Validate_Code.value == "" || Validate_Code.value.trim().length < 4) {
            $("#Regerrorword").addClass("Error").removeClass("rihtReg");
            $("#Regerrorword").html("<font color=#A10000>请输入正确的验证码</font>");
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
 
    //处理黑名单
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
    //处理去向
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
            NewUrl = "index.html";//要修改的地方
        }
        return NewUrl;
    }
    //创建连接，为支持weblog
    function CreateLink(Url) {
        location.href = Url;
    }
    GetUserName();
</script>
</body>
</html>

