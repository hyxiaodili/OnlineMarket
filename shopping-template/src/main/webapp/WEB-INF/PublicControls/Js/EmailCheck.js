//返回是否为非法字符函数
function Check_String(str,valid_char){
	if(!valid_char)
		var valid_char="0123456789abcdefghijklmnopqrstuvwxyz.@_-ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	for(i=0;i<str.length;i++)
	{
		if(valid_char.indexOf(str.charAt(i))==-1)
        return false;
	}
	return true;
}

//是否为合法电子邮件地址的函数
function IsEmail(email)
{
	//var the_form=eval("document."+form_name+"."+text_name);
	var str=email;
	if(str=="")
		return true
	if(str.indexOf('@')<=0 || str.indexOf('@')>=(str.length-1))
		return false;
	if(str.indexOf('.')<=0 || str.charAt(str.length-1)=='.' || str.charAt(str.length-2)=='.')
		return false;
	if(str.length<6)
		return false;
	if(Check_String(str)==false)
		return false;
	var flag1=0;
	var flag2=0;
	for(i=0;i<str.length;i++)
	{
		if(str.charAt(i)=='.' && flag1==1)
			return false;
		if(str.charAt(i)=='@' || str.charAt(i)=='.')
			flag1=1;
		else
			flag1=0;
		if(str.charAt(i)=='@')
			flag2++; 
	}
	if(flag2!=1)
		return false;
	return true;	
}

