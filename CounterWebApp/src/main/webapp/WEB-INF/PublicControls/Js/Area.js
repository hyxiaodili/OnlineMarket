// JScript 文件
function createXMLHTTPRequest(objct)
{
    if (window.ActiveXObject)
    {
    // Microsoft Way
     objct = new ActiveXObject("Microsoft.XMLHTTP");
    }
    else if (window.XMLHttpRequest)
    {
     // Others
     objct = new XMLHttpRequest();
    }
    return objct;

}
var get_PostalCode;
function LoadedComment()
{
	if(get_PostalCode.readyState==4)
	{
		if(get_PostalCode.status == 200) 
		{
			var bi=get_PostalCode.responseText;
            if(bi!=null &&bi!="")
            {
                var obj = bi.split("$");
                if(obj.length>4)
                {
                    var Province=obj[0];
                    var City=obj[1];
                    var Area=obj[2];
                    var PostalCode=obj[3];
                    var ZoneCode=obj[4];
                    var txt = "根据我们的资料，"+Province+" "+City+" "+Area+"的邮编为 <span class=\"reusableColor4\">"+PostalCode+"</span>&nbsp;<span class=\"reusableColor1\"><a href=\"javascript:SetCode('"+PostalCode+"')\" > 使用此邮编 </a></span>"
                    //document.getElementById("Zip").value=PostalCode;
                    document.getElementById("SetPostalCode").innerHTML=txt;
                    document.getElementById("PhoneCode").innerHTML=Area+"的区号为<span class=\"reusableColor4\">"+ZoneCode+"</span><a href=\"javascript:SetPhoneCode('"+ZoneCode+"')\" >  使用此区号  </a>"
                }
            }
		   
		}
	}
}
function LoadGetPostalCode(Province,City,Area)
{
	var Url="/PublicControls/GetPostalCode.aspx?Province="+encodeURI(Province)+"&City="+encodeURI(City)+"&Area="+encodeURI(Area);
	get_PostalCode = createXMLHTTPRequest(get_PostalCode);
	get_PostalCode.open('GET',Url,true);
    get_PostalCode.onreadystatechange=LoadedComment;
    get_PostalCode.send(null);
}

function GetPostalCode(area) 
{
    var Form_Consignee=document.getElementById("Form_Consignee"); 
    var Area = area;
    var City = Form_Consignee.City.options[Form_Consignee.City.selectedIndex].text;
    var Province = Form_Consignee.Province.options[Form_Consignee.Province.selectedIndex].text;
    if(Province!="" && City!="" && Area!="")
    {
        LoadGetPostalCode(Province,City,Area);
    }
}
//马亮 2009.09.1增加
function GetPostalCodeNew(area,cityId,provinceId)
{  
    var Form_Consignee=document.getElementById("Form_Consignee"); 
    var Area = area;
    var cityV=document.getElementById(cityId);  
    var proV=document.getElementById(provinceId);  
    var City = cityV.options[cityV.selectedIndex].text;
    var Province = proV.options[proV.selectedIndex].text; 
    if(Province!="" && City!="" && Area!="")
    {
        LoadGetPostalCode(Province,City,Area);
    }
}
function SetCode(Code)
{
    document.getElementById("Zip").value=Code;
}
function SetPhoneCode(Code)
{
    document.getElementById("Tel").value=Code;
}