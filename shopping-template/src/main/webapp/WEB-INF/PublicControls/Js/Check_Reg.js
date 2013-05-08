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

//���EMAIL
function Check_Email(){
    var span_CheckUsername = document.getElementById("span_CheckUsername");
    if(document.getElementById("Email").value.length<1){
		 $("#span_CheckUsername").addClass("Error").removeClass("rihtReg");
		 span_CheckUsername.innerHTML = '<font color=#A10000>����Ϊ��������������Email��ַ</font>';
		 return false;
	}else if (!/^[\w-]+(\.[\w-]+)*@[\w-]+(\.(\w)+)*(\.(\w){2,3})$/.test(document.getElementById("Email").value)){
		 $("#span_CheckUsername").addClass("Error").removeClass("rihtReg");
		 span_CheckUsername.innerHTML = '<font color=#A10000>��������Ч��Email��ַ</font>';
		 return false;
	}
    else{
		return xmlcheckemail(document.getElementById("Email").value);
	}
    return true;
}
//�������
function ChangePassword(){
    var Password = document.getElementById("PassWord");
    if(Password.value.length<6){
        $("#CheckRePassWord").addClass("Error");
        $("#CheckRePassWord").html('<font color=#A10000>����Ϊ��������벻��С��6λ</font>');
        return false;
    }else{
        $("#CheckRePassWord").removeClass("Error");
        $("#CheckRePassWord").html('');
    }
    return true;
}
//��������������
function Check_RePassWord(){
    var Password = document.getElementById("PassWord");
    var RePassword = document.getElementById("RexPassWord");
	if(RePassword.value=="" || Password.value.trim()!=RePassword.value.trim()){
	    $("#ReCheckRePassWord").addClass("Error");
		$("#ReCheckRePassWord").html('<font color=#A10000>�����������벻һ�£����������룡</font>');
        return false;
	}else{
	    $("#ReCheckRePassWord").removeClass("Error");
		$("#ReCheckRePassWord").html('');
	}
	return true;
}
//����ǳ�
function CheckNewUserName() {
	var NewUserName = document.getElementById("NewUserName");
	if (NewUserName.value != "" && !/^[a-zA-Z0-9_\u4e00-\u9fa5]+$/.test(NewUserName.value)) {
		$("#CheckNewUserName").addClass("Error");
		$("#CheckNewUserName").html("<font color=#A10000>�ǳ�ֻ�ܺ�����Ӣ�ġ����ֺ��»���</font>");
		return false;
	} else {
		$("#CheckNewUserName").removeClass("Error");
		$("#CheckNewUserName").html("");
	}
	return true;
}		
//�����֤��
function CheckValidateCode(){
    var Validate_Code = document.getElementById("Validate_Code");
	if(Validate_Code.value=="" || Validate_Code.value.trim().length<4){
	    $("#CheckValidateCode").addClass("Error");
	    $("#CheckValidateCode").html('<font color=#A10000>��������ȷ����֤��</font>');
        return false;
	}else{
	    $("#CheckValidateCode").removeClass("Error");
	    $("#CheckValidateCode").html('');
	    return xmlcheckeVCode(Validate_Code.value);
	}
	return true;
}
//�ύ�ٴ���֤
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
                $("#span_CheckUsername").html("���û�������ʹ��");
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