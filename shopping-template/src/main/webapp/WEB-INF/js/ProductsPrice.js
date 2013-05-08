
//重新设置价格
function SetProductPrice() {
	var productIds = "";

	$("[id^='sku_']").each(function() {
		productIds += $(this).attr("id").replace("sku_","") + ",";
	});
	if (productIds != "") {
	    $.ajax({
	        async: true, cache: false, type: "post", dataType: "json",
	        url: "/public/ProductPrice.ashx",
	        data: "productIds=" + productIds,
	        success: function(productInfos) {
	            if (typeof productInfos != 'undefined' && productInfos != "") {
	                for (var i = 0; i < productInfos.length; i++) {
	                    var price = productInfos[i].Price;
	                    if (price.indexOf(".") > 0)
	                        price = price.substr(0, price.indexOf("."));
	                    //$("[@id=sku_" + productInfos[i].ProductCode + "]").html(price);
						$("#sku_" + productInfos[i].ProductCode).html(price);
	                }
	            }
	        }
	    });
	}

}

$(document).ready(function() {
    SetProductPrice();
    //setTimeout("SetProductPrice()", 1000);
    var url = decodeURIComponent(document.location.href);
    if (url.indexOf("zhuanti") > 0) {
        setSaleoutTag();
    }
})
function setSaleoutTag() {
    var productIds = "";

    $("[id^='sku_']").each(function() {
        productIds += $(this).attr("id").replace("sku_", "") + ",";
    });
    if (productIds != "") {
        $.ajax({
            async: true, cache: false, type: "post", dataType: "json",
            url: "/public/ProductSelector.ashx",
            data: { "productIds": productIds, "isoff": "1" },
            success: function(productInfos) {
                if (typeof productInfos != 'undefined' && productInfos != "" && productIds != null) {
                    for (var i = 0; i < productInfos.length; i++) {
                        var code = productInfos[i].ProductCode;
                        var $sku =$("[id=sku_" + code+"]");
			$sku.each(function(i,sku){
				var $td = $(sku).parent().parent("td");
                        	var old = $td.html();
                        	var $div = $("<div style='width:100%; position:relative;'></div>");
                        	$div.append(old).append("<p style='position:absolute; right:22px;top:178px;'><img src='http://images.vancl.com/NewVancl/Productlist/icon/saleout.png' alt='' /></p>");
                                $td.empty().append($div);
			});
                    }
                }
            }
        });
    }
}