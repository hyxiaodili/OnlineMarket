function setShoppingUrl()
{
    if (checkurl(location.href)) {
        delCookie("ShoppingBackUrl");
        expire = new Date((new Date()).getTime() + 30 * 86400000);
        expire = "; expires=" + expire.toGMTString();
        document.cookie = "ShoppingBackUrl=" + escape(location.href) + ";domain=vancl.com;path=/" + expire;
    }
}

//function backShoppingUrl(urls)
//{
//    var Url=getCookie("ShoppingBackUrl");
//    if(Url=="" || Url==undefined)Url="/";
//    location.href=Url;
//}
function backShoppingUrl(urls)
{
    setTimeout("GoCompeltes();",10);
} 
function GoCompeltes()
{
    if (changeSuccess) {
        var Url = getCookie("ShoppingBackUrl");
        if (Url == "" || Url == undefined) Url = "/";
        setTimeout("GoCompeltes();", 10);
    }
} 
function GoCompeltes()
{ 
	if(changeSuccess)
	{ 
		var Url=getCookie("ShoppingBackUrl");
		if(Url=="" || Url==undefined)Url="http://www.vancl.com/";	
		location.href = Url;
	}
	else
	{
		setTimeout("GoCompeltes();",10);
	}

}
function checkurl(url)
{
    if(url.indexOf("Edit_InRow")>-1)
    {
        return false;
    }
    return true;
}
function ForOrderConctrol()
{
    $("#ForOrderFhoto").slideDown("slow").click(function(){$("#ForOrderFhoto").slideUp("slow")});
    $("#ForOrderProduct").show();
}
//
function savaLargessAndBackUrl()
{
    //先保存非必选赠品
    var non_Product = get_non_Product();
    setCookie("noLargessSelected",non_Product,7);
    //先保存必选赠品
    var Rules_Product = Save_Product();
    var Url = "/Product/xmldata/Save_Product.aspx?Rules_Product=" + Rules_Product;
    SaveProduct = createXMLHTTPRequest(SaveProduct);
    SaveProduct.open('GET',Url,true);
    SaveProduct.send(null);
    //回到最后商品页面
    backShoppingUrl();
}
//检查购物车限时抢购的规则是否正常
function SelectProductIsLimit()
{
	 b = true;
	 var Url =  "/Product/xmldata/CheckShoppingCart.ashx";
		$.ajax({ 
			url: Url, 
			cache: false, 
			async:false,
			datatype: "xml",
			contentType: "text/xml",
			success: function(data) {
					if(typeof(data)=='object')
					{
						var Limit = $(data).find("Limit").text();
						if(Limit != '0') b = false;
					}
			}
	   });
	 return b;
}
//检查插入、修改购物车，限时抢购的规则是否正常
function InsertProductIsLimit(ProductCode,num)
{
	 var b = "";
	 var Url =  "/Product/xmldata/CheckShoppingCart.ashx?ProductCode=" + ProductCode + "&num=" + num;
		$.ajax({ 
			url: Url, 
			cache: false, 
			async:false,
			datatype: "xml",
			contentType: "text/xml",
			success: function(data) {
					if(typeof(data)=='object')
					{
						var Limit = $(data).find("Limit").text();
                        b=Limit;
					}
			}
	   });
	 return b;
}