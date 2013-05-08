function RandomimgPlayer()
{
   var randomPlayList=new Object();
   randomPlayList.imgAry=new Array();
   randomPlayList.max=0;
   randomPlayList.Add=function(_url,_scale,_link)
   {
	var imgView =new Object();
   	imgView.url=_url;
   	imgView.scale=_scale;
   	imgView.link=_link;
	index=randomPlayList.imgAry.length;
   	randomPlayList.imgAry[index]=imgView;
	randomPlayList.imgAry[index].scalemin=randomPlayList.max;
	randomPlayList.max=randomPlayList.max+randomPlayList.imgAry[index].scale;
	randomPlayList.imgAry[index].scalemax=randomPlayList.max;
   }
   randomPlayList.GetFirstImg=function()
   {
	ran=parseInt(Math.random()*randomPlayList.max)+1;
	if(ran>randomPlayList.max)
	{
		return randomPlayList.imgAry[randomPlayList.imgAry.length-1];
	}
	else
	{
		for(i=0;i<randomPlayList.imgAry.length;i++)
		{
			if(ran>randomPlayList.imgAry[i].scalemin&&ran<=randomPlayList.imgAry[i].scalemax)
			{
				return randomPlayList.imgAry[i];
			}
		}
	}
   }
   randomPlayList.GetFirstImgHTML=function(__traceMark)
   {
	var obj =randomPlayList.GetFirstImg();
	return "<A href='"+obj.link+"' "+__traceMark+" target='_blank'><img src='"+obj.url+"'/></a>";
   }
   randomPlayList.GetImgHtml=function(__traceMark)
   {
	var first=randomPlayList.GetFirstImg();
	var html="";
	html=html+"<A href='"+first.link+"' "+_traceMark+" target=_blank><img src='"+first.url+"'/></a>";
	randomPlayList.imgAry.sort(function(a,b){if(a.scale!=b.scale){return b.scale-a.scale;}else{return a.Index-b.Index;}});
	var index=2;
	for(i=0;i<randomPlayList.imgAry.length;i++)
	{
		if(randomPlayList.imgAry[i].url!=first.url)
		{
			html=html+"<A href='"+randomPlayList.imgAry[i].link+"' "+_traceMark+" target=_blank><img src='"+randomPlayList.imgAry[i].url+"'/></a>";
			index=index+1;
		}
	}
	return html;
   }
   var ShowMark=function()
   {
    alert(_traceMark);
   }
    return randomPlayList;
}