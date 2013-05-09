function Check_Tel(theForm) {
    return /^((\d{3,4})\-{0,1}){0,1}(\d{7,8})$/.test(theForm);
//    var checkOK = "0123456789_-+";
//	var checkStr = theForm;
//	var allValid = true;
//	var validGroups = true;
//	if(checkStr!="")
//	{ 
//	    if(checkStr.length>=7)
//	    {
//	        for (i = 0;  i < checkStr.length;  i++)
//	        {
//		        ch = checkStr.charAt(i);
//		        for (j = 0;  j < checkOK.length;  j++)
//		        {
//		            if (ch == checkOK.charAt(j))
//			            break;
//		            if (j == (checkOK.length-1))
//		            {
//		            allValid = false;
//		            break;
//		            }
//		        }
//	        }
//	    }
//	    else
//	    {
//		      allValid = false;
//	    }
//	}
//    return allValid;
} 
function Check_Mobiles(theForm) {
    return /^((13|15|18|14)+\d{9})$/.test(theForm);
    
//    var checkOK = "0123456789_-+";
//	var checkStr = theForm;
//	var allValid = true;
//	var validGroups = true;
//	if(checkStr!="")
//	{
//	    if(checkStr.length==11)
//	    {
//	        if(checkStr.substring(0,1)=="1")
//	        {
//	            for (i = 0;  i < checkStr.length;  i++)
//	            {
//		            ch = checkStr.charAt(i);
//		            for (j = 0;  j < checkOK.length;  j++)
//		            {
//		                if (ch == checkOK.charAt(j))
//			                break;
//		                if (j == (checkOK.length-1))
//		                {
//		                allValid = false;
//		                break;
//		                }
//		            }
//	            }
//	        }else
//	        {
//		        allValid = false;
//	        }
//	    }else
//	    {
//		      allValid = false;
//	    }
//	}
//    return allValid;
}
 
function Check_Meth(nodevalue)
{ 
    var checkOK = "0123456789";
	var checkStr = nodevalue.trim();
	var allValid = true;
	var validGroups = true; 
	for (i = 0;  i < checkStr.length;  i++)
    { 
        ch = checkStr.charAt(i);
        for (j = 0;  j < checkOK.length;  j++)
        { 
            if (ch == checkOK.charAt(j))
                break;
            if (j == (checkOK.length-1))
            {
            allValid = false;
            break;
            }
        }
    } 
    return allValid;
}
 function ChecktheForm_Name()
 { 
 var Name = document.getElementById("Name");
	if(Name.value.trim()=="")
	{   
		$("#errorName").addClass("Error2");
        $("#errorName").html("<font color=#A10000>请填写收货人姓名</font>");
		Name.focus();
		return false;
	} 
	else
	{
	    $("#errorName").removeClass("Error2");
		$("#errorName").html("");
	} 
	return true;
 }
 function ChecktheForm_PCA()
 {
 //var Name = document.getElementById("Name"); 
    if(!Form_Check_ProductArea())
	{   
		return false;
	}
	else
	{
	  $("#errorArea").removeClass("Error2");
		$("#errorArea").html(""); 
	}
    return true;
 }
  function ChecktheForm_Address()
  {  
  var Address = document.getElementById("Address");
    if(Address.value.trim()=="")
	{ 
	 $("#errorAddress").addClass("Error2");
	 $("#errorAddress").html("<font color=#A10000>请填写详细的收货地址</font>");
		Address.focus();
		return false;
	}
	else if(Address.value.length>50)
	{
	    $("#errorAddress").addClass("Error2");
	    $("#errorAddress").html("<font color=#A10000>详细地址过长，请您最多输入50个字。</font>");  
	    Address.focus();
	    return false;			    	
	}
	else
	{
	    $("#errorAddress").removeClass("Error2");
		$("#errorAddress").html("");
	} 
	return true;
  }
  function ChecktheForm_Zip()
  {
  var Zip = document.getElementById("Zip");
    if(Zip.value.trim()=="")
	{
	$("#errorPostal").addClass("Error2");
	$("#errorPostal").html("<font color=#A10000>邮政编码不能为空</font>"); 
		Zip.focus();
		return false;
	}
	else if(!Check_Meth(Zip.value.trim()))
	{
	$("#errorPostal").addClass("Error2");
	$("#errorPostal").html("<font color=#A10000>邮政编码只能为数字</font>");
		Zip.focus();
		return false;
	}
	else if(Zip.value.trim().length!=6)
	{
	$("#errorPostal").addClass("Error3");
	$("#errorPostal").html("<font color=#A10000>邮政编码必须为6位</font>");
	    Zip.focus();
	    return false;			    	
	}
	else
	{
	    $("#errorPostal").removeClass("Error3");
	    $("#errorPostal").removeClass("Error2");
		$("#errorPostal").html("");
	} 
	return true;
  }
  function ChecktheForm_Tel() {
      var Tel = document.getElementById("Tel");
      var Mobile = document.getElementById("Mobile");
      if (Mobile.value.trim()!="" && Check_Mobiles(Mobile.value.trim()) == false) {
          $("#errorMobile").addClass("Error2");
          $("#errorMobile").html("<font color=#A10000>请输入正确的手机号码</font>");
          Mobile.focus();
          return false;
      }
      else if (Mobile.value.trim() != "" && Mobile.value.trim().length != 11) {
          $("#errorMobile").addClass("Error2");
          $("#errorMobile").html("<font color=#A10000>手机号码必须11位</font>");
          Mobile.focus();
          return false;
      }
      else {
          $("#errorMobile").removeClass("Error2");
          $("#errorMobile").html("");
      }

      if (Tel.value.trim().length > 18) {
          $("#errorPhone").addClass("Error2");
          $("#errorPhone").html("<font color=#A10000>电话号码过长</font>");
          Tel.focus();
          return false;
      }
      else if (Tel.value.trim() != "" && Check_Tel(Tel.value.trim()) == false) {
          $("#errorPhone").addClass("Error2");
          $("#errorPhone").html("<font color=#A10000>请输入正确的电话号码</font>");
          Tel.focus();
          return false;
      }
      else {
          $("#errorPhone").removeClass("Error2");
          $("#errorPhone").html("");
      }

      if (Tel.value.trim() == "" && Mobile.value.trim() == "") {
          $("#errorMobile").addClass("Error2");
          $("#errorMobile").html("<font color=#A10000>手机和电话至少有一项必填</font>");
          Tel.focus();
          return false;
      }
      
      return true;
  }
  //提交再次验证
function Check_Consignee(theForm)
{  
    if(!ChecktheForm_Name()) return false; 
 	if(!ChecktheForm_PCA()) return false;  
	if(!ChecktheForm_Address()) return false; 
	if(!ChecktheForm_Zip()) return false;
	if(!ChecktheForm_Tel()) return false; 
	return true;
}
