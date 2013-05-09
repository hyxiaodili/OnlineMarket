// JScript 文件  
function changesource(str,stype)
{   
    if (stype=="getAddressContent")
	{  
	    document.getElementById("AddressContent").innerHTML=str;
	}    
	  	
	    show_search_result(str,"rcont",stype);
} 
var InputnewChange;
var userId;
var pageNoC;
function getAddressContent(pageNo)
{    
var _InputnewChange = document.getElementById("InputnewChange");
var _userId=document.getElementById("userIDvalue"); 
     
     var _InputnewChange=document.getElementById("InputnewChange");   
     if ((_InputnewChange!=null)&&(_InputnewChange!="undefined"))
      {
            InputnewChange=_InputnewChange.value;
      }
   // showinfo();
     var _userId=document.getElementById("userIDvalue");   
     if ((_userId!=null)&&(_userId!="undefined"))
      {
            userId=_userId.value;
      } 
		net.ajaxText(
		function()
		{ 
			changesource(ajaxGLOBAL,"getAddressContent"); 
		}
		,
		"Shopping_AddressContent.aspx"
		,
		"userId="+userId+"&nowPageNo="+pageNo+"&newChangeC="+InputnewChange
		);
//		to=document.getElementById("infodiv");
//  if ((to!=null)&&(to!="undefined"))
//  { 
//		to.style.visibility="hidden"; 
//	}
 
}
 
function show_search_result(str,id,type_category)
{//获取当前页码和记录总数
     var nowPageNo;
     var recordCountv;
 
    
     var nowPageNoIntinsit=document.getElementById("nowPageNo");
     if ((nowPageNoIntinsit!=null)&&(nowPageNoIntinsit!="undefined"))
      {
            nowPageNo=parseInt(nowPageNoIntinsit.value);
      }
      
     var recordCount=document.getElementById("RecordCount");   
     if ((recordCount!=null)&&(recordCount!="undefined"))
      {
            recordCountv=parseInt(recordCount.value);
      } 
    setpagebtn(recordCountv,nowPageNo,"address");
 
}
 
var pageCount;
function setpagebtn(rc,n,type_category)
{ 
    //生成分页
    var pagebtnstr="";
	var nowPageNo=n; 
	var lastPageList=0,nextPageList=0,pageListCount,nowPageList=0,pageSize=0,pageListSize=0;
	var tInt=0;
	var sResultInfo="";
	var sStartNo=0,sEndNo=0; 
	var psStr="";
	var loadtype="1";
	 pageNoC=n;
	 var _pageSize=document.getElementById("pageSize");   
     if ((_pageSize!=null)&&(_pageSize!="undefined"))
      {
            pageSize=parseInt(_pageSize.value);
      }
     var _pageListSize=document.getElementById("pageListSize");   
     if ((_pageListSize!=null)&&(_pageListSize!="undefined"))
      {
            pageListSize=parseInt(_pageListSize.value);
      }
	 
	 
	if (rc>0)
	{	
	    pageCount=Math.ceil(rc/pageSize);  
	    nowPageList=Math.floor(nowPageNo/pageListSize); 
	 
	    if ((nowPageNo%pageListSize)==0)
	    {
		    nowPageList=nowPageList-1;
	    }
	    if (nowPageNo>pageCount)
	    {
		    nowPageNo=pageCount;
	    }
	    sStartNo=(nowPageNo-1)*pageSize+1;
	    if (nowPageNo*pageSize>rc)
	    {
		    sEndNo=rc;
	    }
	    else
	    {
		    sEndNo=(nowPageNo)*pageSize;
	    }	
		pagebtnstr="<div  class='pagebtn'>";
		
		if (nowPageNo>1)
		{
			pagebtnstr+="<a href=\"javascript:gopage("+(nowPageNo-1)+",'"+type_category+"');\" target=_self>上一页</a>&nbsp;";
		}  
		for (var i=1;i<=pageCount;i++)
		{  
			    if (i>pageCount)
			    {
				    break;
			    }  
		        if (nowPageNo==i)
		        { 
			        pagebtnstr+="<span class='current'>"+i+"</span>";	
		        }
		        else if(i<2)
		        {
			        pagebtnstr+="<a href=\"javascript:gopage("+i+",'"+type_category+"');\" class='currenta' target=_self>"+i+"</a>";	
			if (nowPageNo > 4 && i == 1 ) pagebtnstr+="... ";       	        
		        }  
		        else if (i > nowPageNo - 3 && i < nowPageNo)
                { 
                    pagebtnstr+="<a href=\"javascript:gopage("+i+",'"+type_category+"');\" class='currenta' target=_self>"+i+"</a>";	
                }
                 else if (i < nowPageNo + 3 && i > nowPageNo)
                {
                    pagebtnstr+="<a href=\"javascript:gopage("+i+",'"+type_category+"');\" class='currenta' target=_self>"+i+"</a>";	
                }
                else if (i > pageCount - 1)
                {
                    if (nowPageNo < pageCount - 2 && i > nowPageNo+3)
                        pagebtnstr+="... ";    
                    pagebtnstr+="<a href=\"javascript:gopage("+i+",'"+type_category+"');\" class='currenta' target=_self>"+i+"</a>";	
                }  
		} 
		if (nowPageNo<pageCount)
		{
			pagebtnstr+="&nbsp;<a href=\"javascript:gopage("+(nowPageNo+1)+",'"+type_category+"');\" target=_self>下一页</a>";
		}
		pagebtnstr+="&nbsp;共"+pageCount+"页";	
		pagebtnstr+="</div>";			
         
         
            document.getElementById("all_main_down_bottom").innerHTML=pagebtnstr;
               
 	    
	}
	else
	{
   	    document.getElementById("all_main_down_bottom").style.display="block";
	}
}

//分页
function gopage(n,type_category)
{
   
    switch(type_category)
    {
        
        case "address":
       net.ajaxText(
		function()
		{ 
			changesource(ajaxGLOBAL,"getAddressContent"); 
		}
		,
		"Shopping_AddressContent.aspx"
		,
		"userId="+userId+"&nowPageNo="+n+"&newChangeC="+InputnewChange
		);
    }
}

function DeleteAddress(ID)
{    
   net.ajaxText(
	function()
	{ 
		changesource(ajaxGLOBAL,"getAddressContent"); 
	}
	,
	"Shopping_AddressContent.aspx"
	,
	"userId="+userId+"&nowPageNo="+pageNoC+"&newChangeC="+InputnewChange+"&OperID="+ID+"&OperType=Delete"
	);
      
}
function showinfo()
{ 
	var to=document.createElement("div");
	to.setAttribute("id","infodiv");
	if ((to==null)||(to=="undefined"))
	{
		return false;
	}
    var scrollPos;
    if (typeof window.pageYOffset != 'undefined') { 
       scrollPos = window.pageYOffset;
    }
    else if (typeof document.compatMode != 'undefined' &&
                 document.compatMode != 'BackCompat') { 
       scrollPos = document.documentElement.scrollTop;
    }
    else if (typeof document.body != 'undefined') {
               scrollPos = document.body.scrollTop;
    }
	to.style.border="1px solid #963e00";
	to.style.backgroundColor="#FFFFFF";
  to.style.position="absolute";	
  to.style.textalign="left";
	to.style.visibility="hidden";  
  document.body.appendChild(to);
  to=document.getElementById("infodiv");
  if ((to!=null)&&(to!="undefined"))
  {
		to.style.top=Math.floor(window.screen.availHeight/2)+scrollPos+10;	
		to.style.left=Math.floor(window.screen.availWidth/2)-70;
		to.style.width=200;
		to.style.height=30;
	  var tWidth=to.style.width-2;
	  var tHeight=to.style.height-2;	
		to.innerHTML="<img src=../images/loading1.gif> 正在获取地址薄，请稍候…"+"<iframe src='JavaScript:false' style=\"position:absolute; visibility:inherit; top:2px; left:2px; width:"+tWidth+"px; height:"+tHeight+"px; z-index:-1; filter='progid:DXImageTransform.Microsoft.Alpha(style=0,opacity=0)';\"></iframe>";
		to.style.visibility="visible";
	}
}