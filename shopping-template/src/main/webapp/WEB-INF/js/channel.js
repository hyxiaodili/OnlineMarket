function ImgTextChangeProductColor(styleID, productCode, dataType) {
	$.getJSON("/Product/GetProductInfo.aspx?ProductCode=" + productCode + "&dataType=" + dataType,
	function(data) {
		var productInfo = data;
		productInfo.VPrice = productInfo.VPrice.replace(".00", "");
		productInfo.Price = productInfo.Price.replace(".00", "");
		productInfo.SPrice = productInfo.SPrice.replace(".00", "");
		var item = $("#item_" + styleID);

		item.find("a").eq(0).attr("href", productInfo.ProductInfoUrl);
		item.find("a img").eq(0).attr("src", productInfo.PhotoPath170);
		item.find("a img").eq(0).attr("pop", productCode);
		initProductPop(productCode);

		item.find(".colorBlock li").each(function(i) {
			if ($(this).attr("id") == "color_" + styleID + "_" + productCode) {
				$(this).attr("class", "onlickBlock");
				$(this).find("a").blur();
			}
			else {
				$(this).removeClass("onlickBlock");
			}

		});
		item.find(".pic .teshui").remove();
		item.find(".pic .qianggou").remove();
		item.find(".pic .duanma").remove();
		item.find(".pic .newview").remove();
		item.find(".pic .qingcang").remove();

		if (productInfo.SalesFlag == "1") {
			item.find(".pic").eq(0).append("<div class=\"teshui\">" + productInfo.SPrice.replace(".00", "") + "</div> ");
		}
		else if (productInfo.SalesFlag == "2") {
			item.find(".pic").eq(0).append("<div class=\"qianggou\">" + productInfo.SPrice.replace(".00", "") + "</div> ");
		}
		else if (productInfo.SalesFlag == "3") {
			item.find(".pic").eq(0).append("<div class=\"qingcang\">" + productInfo.SPrice.replace(".00", "") + "</div> ");
		}

		if (productInfo.IsNew == "1")
			item.find(".pic").eq(0).append("<div class=\"newview\"></div>");
		if (productInfo.SPrice == productInfo.Price) {
			if (productInfo.IsDuanma == "True") {
				item.find(".pic").eq(0).append("<div class=\"duanma\"></div>");
			}
		}
	});
}

function showImg(index) {
	$(".focusImgLeft div").stop(true, true).hide().eq(index).fadeIn('slow');
	$(".focusImgSmall").eq(index).append('<img class="focusTag" src="images/focusTag.png" alt="" />');
	$("#current .focusTag").remove();
	$(".focusImgSmall").attr("id", "").eq(index).attr("id", "current");
}

function InitFocus() {
	var adTimer;
	var index = 1;
	var len = $(".focusImgSmall").length;
	$(".focusImgSmall").mouseover(function() {
		index = $(".focusImgSmall").index(this);
		showImg(index);
	});
	$('.focusImgArea').hover(function() {
		clearInterval(adTimer);
	}, function() {
		adTimer = setInterval(function() {
			showImg(index);
			index++;
			if (index == len) { index = 0; }
		}, 5000);
	}).trigger("mouseleave");

	$(".centerSelMenu li").css("font-size", "14px");
}

//start of 分页
function initCurrentPageText() {

	var request = new QueryString();
	var pageText = request["page"];

	$("#vanclPageText").val(pageText);
}

function initEvent() {

	//页码改变事件绑定
	$("#vanclPageText").keyup(function() {
		//用正则表达式来验证页码是否为正整数
		var reg = /^(-|\+)?\d+$/;
		var pageCode = $("#vanclPageText").val();
		var result = reg.test(pageCode);
		//当不匹配时，需要清空输入
		if (!result) {
			$("#vanclPageText").val("");
		}
	});

	//确定事件绑定
	$("#vanclPageButton").click(function() {
		var choicePageNo = Number($("#vanclPageText").val());
		var totalPageNo = Number($("#vanclPageCount").html());
		var curPageNo = Number($(".currentpage").text());

		//当前页就是要跳转的页
		if (choicePageNo == curPageNo)
			return false;

		//超出正常页码范围
		if (choicePageNo < 1 || choicePageNo > totalPageNo)
			return false;

		if (choicePageNo <= totalPageNo) {
			document.location.href = AddParameter("page", $("#vanclPageText").val(), "");
		}
	});
}

//验证是否有分页
function validation() {
	if ($("#vanclPageButton").length == 0) {
		$(".pageArea").hide();
	}
}

function initDownCoat() {
	initEvent();
	initCurrentPageText();
	validation();
}
//end of 分页

//start of OrderBy
function initSportEvent() {

	//点击事件绑定
	$("#spanSportOrder").click(function() {
		$("#ulSportOrder").show();
	});

	$("#spanSportOrder").hover(function() {
		//$("#ulSportOrder").show();
	}, function() {
		$("#ulSportOrder").hide();
	});

	$("#ulSportOrder").hover(function() {
		$("#ulSportOrder").show();
	}, function() {
		$("#ulSportOrder").hide();
	});

	$(".aOrderItem").each(function(i, obj) {
		$(obj).click(
			function() {
				$("#ulSportOrder").hide();
			});
	});
}

//判断当前显示模式
function GetViewMode() {
	var request = new QueryString();
	var status = request["view"];
	if (status == "1") {
		$("#ulSportOrder").css("margin-top", -73);
	}
}

function initSportOrder() {
	$("#ulSportOrder").hide();
	initSportEvent();
	GetViewMode();
}
//end of OrderBy

function setTab(name, cursel, n) {
	for (i = 1; i <= n; i++) {
		var menu = document.getElementById(name + i);
		var con = document.getElementById("con_" + name + "_" + i);
		menu.className = i == cursel ? "hover" : "";
		con.style.display = i == cursel ? "block" : "none";

		var more = document.getElementById(name + i + n + "M");
		if (more)
			more.style.display = i == cursel ? "block" : "none";
	}
}
//筛选类别大于5就隐藏掉
function checkFilter() {
	if ($(".kindArea:visible").length > 5) {
		$(".kindArea").each(function(i, item) {
			if (i > 4) {
				$(item).hide();
				$(item).prev(".searchLine").first().hide();
			}
		});
		$(".kindBtnBelow").show();
		$(".kindBtnBelow").prev(".kindBorder").first().show();
	}

	$(".kindBtnBelow").click(function() {
		$(".kindArea").each(function(i, item) {
			if (i > 4) {
				$(item).show();
				$(item).prev(".searchLine").first().show();
			}
		});
		$(".kindBtnAbove").show();
		$(".kindBtnBelow").hide();
	});

	$(".kindBtnAbove").click(function() {
		$(".kindArea").each(function(i, item) {
			if (i > 4) {
				$(item).hide();
				$(item).prev(".searchLine").first().hide();
			}
		});
		$(".kindBtnAbove").hide();
		$(".kindBtnBelow").show();
	});

	$(".kindBtnAbove").mouseover(function() {
		$(this).css("cursor", "hand");
	});

	$(".kindBtnBelow").mouseover(function() {
	$(this).css("cursor", "hand");
	});
}

$(document).ready(function() {
	InitFocus();

	//筛选类别大于5就隐藏掉
	checkFilter();
});