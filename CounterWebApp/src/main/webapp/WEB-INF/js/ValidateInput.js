//增加字符串的一个Trim属性
String.prototype.Trim = function()
{
    return this.replace(/(^\s*)|(\s*$)/g, "");
}
//var temp=document.getElementById("Email");
// temp.value="请输入E-mail地址";
// temp.style.color="#5e5e5e";
//防止SQl注入
function checkSqlStr(text)
{
    var repWord="|and|exec|insert|select|delete|update|count|*|chr|mid|master|truncate|char|declare|set|;|from";
    var repWords=repWord.split('|');
    var appIndex;
    for(var i=0;i<repWords.length;i++)
    {
        appIndex=text.indexOf(repWords[i]);
        if(appIndex!=-1)
        {
            text=text.replace(repWords[i],"");
        }
    }
    return text;
}
//防止脚本攻击
function checkScriptStr(text)
{
    var flag=true;
    var scriptWord="<|>|script|alert|{|}|(|)|#|$|'|\"|:|;|&|*|@|%|^|?";    
    var words=scriptWord.split('|');
    for(var i=0;i<words.length;i++)
    {
        if(text.indexOf(words[i])!=-1)
        {            
            flag=false;
            break;
        }
    }
    return flag;
}
//邮箱订阅
function emailAdd()
{
    
    if(temp.value.Trim().length>50)
    {
        alert("对不起，您的E_mail字符过长！");        
        temp.focus();        
    }
    else
    {
        var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
        if(temp.value.Trim()!="")
        {
            if(!myreg.test(temp.value.Trim()))
            {
               alert('请您输入有效的E_mail！');
               temp.focus();                          
            }
            else
            {
                 var url="/EmailOrder/EmailAdd.aspx?tb_email="+temp.value.Trim();	
                 window.open(url);
            }
        }
    }
}
//打开索取目录页面
function receiveRoot()
{
    var url="/EmailOrder/IndexRequire.aspx";    
   window.open(url);
    void(0);
}