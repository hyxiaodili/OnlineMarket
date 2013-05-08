imglist = new RandomimgPlayer("class='track' name='h-sp-01'");
imglist.Add("http://images.vancl.com/Others/2011/1/24/advsport_left_110124_01.jpg", 0, "http://www.vancl.com/zhuanti/integrated/cfy_20101015.htm");
imglist.Add("http://images.vancl.com/Others/2011/1/28/advsport_left_110128_02.jpg", 100, "http://www.vancl.com/zhuanti/integrated/ydyrf_20101217.htm");
$("#randomadver_sport_1").html(imglist.GetFirstImgHTML("class='track' name='h-sp-01'"));
