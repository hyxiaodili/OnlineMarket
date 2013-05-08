// JScript 文件
//参数
var CurSSL = "http://images.vancl.com";
//var CurSSL = "../images";
if (/https:/.test(location.href)) CurSSL = "https://sslimg.vancl.com";

function AdParams() { };
AdParams.DisplayType = 1; //显示方式 0为大图和flash；1为大图和小图
AdParams.IsShowBigImg = false;    //是否显示大图的收回效果 true显示 false不显示
AdParams.FlashUrl = CurSSL + "/Others/2011/1/14/8974.swf"; //flash路径
AdParams.BigImgUrl = CurSSL + "/Others/2010/12/31/stripe_banner_20101231.jpg"; //大图路径
AdParams.SamllImgUrl_1 = CurSSL + "/stripebanner_110209_01.jpg"; //小图路径1
AdParams.SamllImgUrl_2 = CurSSL + "/Others/2011/2/9/stripebanner_110209_02.jpg"; //小图路径1
AdParams.ImgLink_1 = "http://www.vancl.com/zhuanti/jieri/qrj_20110209.htm"; //图片链接地址1
AdParams.ImgLink_2 = "http://www.vancl.com/zhuanti/jieri/qrj_20110209.htm"; //图片链接地址2
AdParams.IsShow = true; //是否显示 true显示 false不显示

var CurPathL = location.href
if (location.href.indexOf("?") > 0)
    CurPathL = location.href.substr(0, location.href.indexOf("?"));

function TopAd() {
    var strTopAd = "";
    var topFlash = "<object classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" " +
                    "codebase=\"//download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0\" width=\"980\" height=\"70\">" +
                    "<param name=\"movie\" value=\"" + AdParams.FlashUrl + "\">" +
                    "<param name=\"quality\" value=\"high\">" +
                    " <param name=\"wmode\" value=\"opaque\">" +
                    "<embed src=\"" + AdParams.FlashUrl + "\" quality=\"high\" " +
                    "pluginspage=\"//www.macromedia.com/go/getflashplayer\" type=\"application/x-shockwave-flash\" " +
                    "width=\"980\" height=\"70\" wmode=\"opaque\"></></embed></object>";
    if (AdParams.ImgLink_1 == "") {
        var topSmallBanner = "<div><img src=\"" + AdParams.SamllImgUrl_1 + "\" />";
    }
    else { var topSmallBanner = "<div><a href=\"" + AdParams.ImgLink_1 + "\" target=_blank><img src=\"" + AdParams.SamllImgUrl_1 + "\" /></a>"; }
    if (AdParams.ImgLink_2 == "") {
        topSmallBanner += "<img src=\"" + AdParams.SamllImgUrl_2 + "\" /></div>";
    }
    else { topSmallBanner += "<a href=\"" + AdParams.ImgLink_2 + "\" target=_blank><img src=\"" + AdParams.SamllImgUrl_2 + "\" /></a></div>"; }
    
    if ((CurPathL == "http://new.vancl.com" || CurPathL == "http://new.vancl.com/" || CurPathL == "http://www.vancl.com/" || CurPathL == "http://www.vancl.com" || CurPathL == "http://demowww.vancl.com/" || CurPathL == "http://mywww.vancl.com/") && AdParams.IsShowBigImg) {
        //大图不加载了  2010-4-26  郑建生
        strTopAd = "<div id=adimage style=\"width:980px\">" +
                    "<div id=adBig ><a href=\" http://www.vancl.com/track.aspx?ref=&areaid=v-js&returl=" + AdParams.ImgLink + "\" " +
                    "target=_blank><img title=VANCL全场购物满200元免运费 " +
                    "src=\"" + AdParams.BigImgUrl + "\" " +
                    "border=0></A></div>" +
              "<div id=adSmall style=\"display:none \">";
        if (AdParams.DisplayType == 0) {
            strTopAd += topFlash;
        } else {
            strTopAd += topSmallBanner;
        }

        strTopAd += "</div></div>";
    }
    else {
        if (AdParams.DisplayType == 0) {
            strTopAd += topFlash;
        } else {
            strTopAd += topSmallBanner;
        }
    }
    strTopAd += "<div style=\"height:15px; clear:both;overflow:hidden\"></div>";
    return strTopAd;
}
if (AdParams.IsShow) {
    document.write(TopAd());
}

$(function() {
    setTimeout("showImage();", 2000);
});
function showImage() {
    $("#adBig").slideUp(1000, function() { $("#adSmall").slideDown(1000); });
}






