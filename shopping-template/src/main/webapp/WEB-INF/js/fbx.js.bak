var arrayFbx = {};
arrayFbx["1592"] = { index: 1, className: "02", url: "http://images.vancl.com/Others/2010/7/14/nanxie_03.jpg" };
arrayFbx["1593"] = { index: 2, className: "03", url: "http://images.vancl.com/Others/2010/7/14/fbx-03.jpg" };
arrayFbx["3393"] = { index: 3, className: "04", url: "http://images.vancl.com/Others/2010/7/14/gaobang_03.jpg" };
arrayFbx["3395"] = { index: 4, className: "05", url: "http://images.vancl.com/Others/2010/7/14/dibang_03.jpg" };
arrayFbx["6084"] = { className: "06", url: "http://images.vancl.com/channel/Fbx/jidianbaida.jpg" };
arrayFbx["6085"] = { className: "07", url: "http://images.vancl.com/channel/Fbx/yundongsecai.jpg" };
arrayFbx["6086"] = { className: "08", url: "http://images.vancl.com/channel/Fbx/shishangfugu.jpg" };
arrayFbx["6087"] = { className: "09", url: "http://images.vancl.com/channel/Fbx/jietouyaogun.jpg" };


$(document).ready(function() {

	var Request = new QueryString();
	var attrid = $.trim(Request["attrid_series"]);

	if (attrid.length < 1) {
		attrid = Request["attrid_style"];
	}

	var cateid = Request["cateid"];
	var compareid;

	var isNav;

	$.each(arrayFbx, function(key, info) {
		if (attrid != null) {
			compareid = attrid;
		}
		else {
			compareid = cateid;
		}
		if (decodeURIComponent(compareid) == key) {
			isNav = true;
			$(".focusImgArea").replaceWith("<img src='" + info.url + "' />");
			document.getElementById("fbxnav01").style.backgroundColor = '#FFDFB9';
			document.getElementById("fbxnav" + info.className).style.backgroundColor = '#E8E8E8';
			return;
		}
	});

	if (!isNav) {
		var url = document.location.href;
		if (url.indexOf("search.mvc") > 0) {
			document.getElementById("fbxnav10").style.backgroundColor = '#E8E8E8';
			$(".focusImgArea").replaceWith("<img src='http://images.vancl.com/channel/Fbx/allstyle.jpg' />");
		}
		else {
			//document.getElementById("fbxnav01").style.backgroundColor = '#E8E8E8';
		}
	}
});