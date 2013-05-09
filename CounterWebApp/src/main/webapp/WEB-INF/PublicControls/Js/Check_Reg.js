function Check_Reg(){
    var checkOK = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_-";
	var checkStr = myform.UserName.value;
	var allValid = true;
	var validGroups = true;
	for (i = 0;  i < checkStr.length;  i++){
		ch = checkStr.charAt(i);
		for (j = 0;  j < checkOK.length;  j++)
		if (ch == checkOK.charAt(j))
			break;
		if (j == checkOK.length){
			allValid = false;
			break;
		}
	}
    return allValid;
}

//检查EMAIL
function Check_Email(){
    var span_CheckUsername = document.getElementById("span_CheckUsername");
    if(document.getElementById("Email").value.length<1){
		 $("#span_CheckUsername").addClass("Error").removeClass("rihtReg");
		 span_CheckUsername.innerHTML = '<font color=#A10000>此项为必填项，请输入你的Email地址</font>';
		 return false;
	}else if (!/^[\w-]+(\.[\w-]+)*@[\w-]+(\.(\w)+)*(\.(\w){2,3})$/.test(document.getElementById("Email").value)){
		 $("#span_CheckUsername").addClass("Error").removeClass("rihtReg");
		 span_CheckUsername.innerHTML = '<font color=#A10000>请输入有效的Email地址</font>';
		 return false;
	}
    else{
		return xmlcheckemail(document.getElementById("Email").value);
	}
    return true;
}
//检查密码
function ChangePassword(){
    var Password = document.getElementById("PassWord");
    if(Password.value.length<6){
        $("#CheckRePassWord").addClass("Error");
        $("#CheckRePassWord").html('<font color=#A10000>此项为必填项，密码不能小于6位</font>');
        return false;
    }else{
        $("#CheckRePassWord").removeClass("Error");
        $("#CheckRePassWord").html('');
    }
    return true;
}
//检查重新输出密码
function Check_RePassWord(){
    var Password = document.getElementById("PassWord");
    var RePassword = document.getElementById("RexPassWord");
	if(RePassword.value=="" || Password.value.trim()!=RePassword.value.trim()){
	    $("#ReCheckRePassWord").addClass("Error");
		$("#ReCheckRePassWord").html('<font color=#A10000>两次输入密码不一致，请重新输入！</font>');
        return false;
	}else{
	    $("#ReCheckRePassWord").removeClass("Error");
		$("#ReCheckRePassWord").html('');
	}
	return true;
}
//检查昵称
function CheckNewUserName() {
	var NewUserName = document.getElementById("NewUserName");
	if (NewUserName.value != "" && !/^[a-zA-Z0-9_\u4e00-\u9fa5]+$/.test(NewUserName.value)) {
		$("#CheckNewUserName").addClass("Error");
		$("#CheckNewUserName").html("<font color=#A10000>昵称只能含有中英文、数字和下划线</font>");
		return false;
	} else {
		$("#CheckNewUserName").removeClass("Error");
		$("#CheckNewUserName").html("");
	}
	return true;
}		
//检查验证码
function CheckValidateCode(){
    var Validate_Code = document.getElementById("Validate_Code");
	if(Validate_Code.value=="" || Validate_Code.value.trim().length<4){
	    $("#CheckValidateCode").addClass("Error");
	    $("#CheckValidateCode").html('<font color=#A10000>请输入正确的验证码</font>');
        return false;
	}else{
	    $("#CheckValidateCode").removeClass("Error");
	    $("#CheckValidateCode").html('');
	    return xmlcheckeVCode(Validate_Code.value);
	}
	return true;
}
//提交再次验证
function Check_User_Login(){
	if (!Check_Email()) return false;
	if (!ChangePassword()) return false;
	if (!Check_RePassWord()) return false;
	if (!CheckNewUserName()) return false;
	if (!CheckValidateCode()) return false;
	return true;;
}
function xmlcheckemail(Email)
	{
    var Url = "XmlCheckUserName.ashx?UserName="+Email;
    var bool=true;
    $.ajax({
        url:Url,
        cache:false,
        async:false,
        datatype: "json",
        contentType: "application/json",
        success: function(data) {
            if(data!=null && data!=""){
                data = eval("("+data+")");
                var error = data.Error;
                $("#span_CheckUsername").addClass("Error").removeClass("rihtReg");
                $("#span_CheckUsername").html("<font color=#A10000>"+error+"</font>");                
                bool=false;
            }else{
                $("#span_CheckUsername").removeClass("Error").addClass("rihtReg");
                $("#span_CheckUsername").html("该用户名可以使用");
			}
        },
        error: function(){
            $("#span_CheckUsername").removeClass("Error").removeClass("rihtReg");
            $("#span_CheckUsername").html("");
		}
    })   
    return bool;
}
	
function xmlcheckeVCode(Email){   
    var Url = "XmlCheckUserName.ashx?VCode="+Email;
    var bool=true;
    $.ajax({
        url:Url,
        cache:false,
        async:false,
        datatype: "json",
        contentType: "application/json",
        success: function(data) {
            if(data!=null && data!=""){
                data = eval("("+data+")");
                var error = data.Error;
                $("#CheckValidateCode").addClass("Error");
                $("#CheckValidateCode").html("<font color=#A10000>"+error+"</font>");
                bool=false;
            }else{
                $("#CheckValidateCode").removeClass("Error");
                $("#CheckValidateCode").html("");
			}
        },
        error: function(){
            $("#CheckValidateCode").removeClass("Error");
            $("#CheckValidateCode").html("");
		}
    })
    return bool;
}
function ChangeImg1(){
    $("#Img1").attr("src","/PublicControls/NewValidateCode.aspx?height=25&width=100&codeLen=5&photoType=2&t="+new Date().getTime());
}