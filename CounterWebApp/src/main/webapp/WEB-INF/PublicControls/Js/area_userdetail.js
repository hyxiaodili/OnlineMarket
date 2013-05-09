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
                     var txt = "根据我们的资料，"+Province+" "+City+" "+Area+"的邮编为 <span class=\"reusableColor4\">"+PostalCode+"</span>(<span class=\"reusableColor1\"><a href=\"javascript:SetCode('"+PostalCode+"')\" >使用此邮编</a></span>)"
                    //document.getElementById("Zip").value=PostalCode;
                    document.getElementById("SetPostalCode").innerHTML=txt;
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
    var Area = area;
    
    cityForm = document.getElementById("City");
    provinceForm = document.getElementById("Province")
    
    var City = cityForm.options[cityForm.selectedIndex].text
    var Province = provinceForm.options[provinceForm.selectedIndex].text
  
    if(Province!="" && City!="" && Area!="")
    {
        LoadGetPostalCode(Province,City,Area);
    }
}
function SetCode(Code)
{
    document.getElementById("PostalCode").value=Code;
}
function SetPhoneCode(Code)
{
    document.getElementById("Tel").value=Code;
}