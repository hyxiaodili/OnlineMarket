

var gineGrid = function(){
 
 this.ajaxGLOBAL = null;
}



gineGrid.version = "1.0.00.2008.2.28";


var HttpRequest = function()
{
    return Try.these(
      function() {return new XMLHttpRequest()},
      function() {return new ActiveXObject('Msxml2.XMLHTTP')},
      function() {return new ActiveXObject('Microsoft.XMLHTTP')}
    ) || false;
}

var Try = {
  these: function() {
    var returnValue;

    for (var i = 0, length = arguments.length; i < length; i++) {
      var lambda = arguments[i];
      try {
        returnValue = lambda();
        break;
      } catch (e) { }
    }

    return returnValue;
  }
};

//读取缓存文本
gineGrid.prototype.cacheText = function(i,u,P){

  this.eAA(true,i,u,"Text",true,P);
}
//读取缓存XML
gineGrid.prototype.cacheXML = function(i,u,P){
 
  this.eAA(true,i,u,"XML",true,P);
}
//读取文本
gineGrid.prototype.ajaxText = function(i,u,p){
  this.eAT(i,u,p);
}
//读取XML
gineGrid.prototype.ajaxXML = function(i,u,p){
 
  this.eAX(i,u,p);
}
//同步读取文本
gineGrid.prototype.loadText = function(u,p){

  return this.ajaxT(u,p);
}
//同步读取XML
gineGrid.prototype.loadXML = function(u,p){
 
  return this.ajaxX(u,p);
}

gineGrid.prototype.eAT = function(i,u,P){

  this.eAA(false,i,u,"Text",true,P);
}

gineGrid.prototype.eAX = function(i,u,P){
 
  this.eAA(false,i,u,"XML",true,P);
}

gineGrid.prototype.ajaxT = function(u,P){

  return this.eAA(false,{},u,"Text",false,P).responseText;this.eAA = null;ajaxfree(this.eAA);
}

gineGrid.prototype.ajaxX = function(u,P){
 
  return this.eAA(false,{},u,"XML",false,P).responseXML;this.eAA = null;ajaxfree(this.eAA);
}

gineGrid.prototype.url = null;


function   ajaxfree(a)   
{   
  a=null;   
  return  ajaxnull;
     
  function ajaxnull()
  {   
  }   
}   

//警告！不要在项目中直接使用这个函数
//参数：是否读取缓存（true表示读取缓存文件|false则保证每次都重新请求）、回调函数、URL、文本或XML、同步或异步、POST参数
gineGrid.prototype.eAA = function(cache,it,u,rt,asy,sv){
     
    var st  = "GET";
    var s = "";
    
    if(sv)
    { 
      s  = sv ;
      st  = "POST";
     
     }
    
    var eA = HttpRequest();
    
    if(asy)//保证了异步模式才会设置这个函数，主要是为了设置内存释放的执行点。
    {
        eA.onreadystatechange = function(){

            if(eA.readyState==4){
              
       //可以在这里添加更多的状态码判断信息,一般没有这个必要.会加大运算量.
       
                if (eA.status == 200) {
                  
                    if(rt=="Text"){o(eA.responseText);}
                    else if(rt=="XML"){o(eA.responseXML);}
                    ajaxfree(eA);
                  //  CollectGarbage();
                } 
                else 
                {
                    document.write("<p>执行错误，错误状态码："+eA.status+"</p><p>详细信息：</p>");
                    document.write(eA.responseText);
                }
            }

        }
    }
    
    var o = function(v){
    
        this.ajaxGLOBAL = v;
    
        if(typeof(it)=="function"){ it.call();}
        else
        {it = v;}
        eA = null;//内存释放，异步专用，如果没有上面的if(asy),则该步骤会导致同步模式在返回消息前便失效。
        
    }
    
    if(u.indexOf('?') > -1)
    { 
        u+="&rd=";
    }

    else{u+="?rd=";}
      
    if(!cache){
        u += Math.round(Math.random()*10000)*Math.round(Math.random()*10000) ;
    }
    
    this.url = u;
   
   eA.open(st,u,asy); 
   eA.setRequestHeader("content-length",s.length); 
   eA.setRequestHeader("content-type","application/x-www-form-urlencoded");
   
   eA.send(s);
   
        return eA ;
  }
var net = new gineGrid();
