<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ܶ������̳Ǻ�̨����ϵͳ by www.fendoujiaoyu.org</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.tabfont01 {	
	font-family: "����";
	font-size: 9px;
	color: #555555;
	text-decoration: none;
	text-align: center;
}
.font051 {font-family: "����";
	font-size: 12px;
	color: #333333;
	text-decoration: none;
	line-height: 20px;
}
.font201 {font-family: "����";
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}
.button {
	font-family: "����";
	font-size: 14px;
	height: 37px;
}
html { overflow-x: auto; overflow-y: auto; border:0;} 
-->
</style>

<link href="../css/css.css" rel="stylesheet" type="text/css" />
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/xiangmu.js"></script>
</head>
<SCRIPT language=JavaScript>
function sousuo(){
	window.open("gaojisousuo.htm","","depended=0,alwaysRaised=1,width=800,height=510,location=0,menubar=0,resizable=0,scrollbars=0,status=0,toolbar=0");
}
function selectAll(){
	var obj = document.fom.elements;
	for (var i=0;i<obj.length;i++){
		if (obj[i].name == "delid"){
			obj[i].checked = true;
		}
	}
}

function unselectAll(){
	var obj = document.fom.elements;
	for (var i=0;i<obj.length;i++){
		if (obj[i].name == "delid"){
			if (obj[i].checked==true) obj[i].checked = false;
			else obj[i].checked = true;
		}
	}
}

function link(){
    document.getElementById("fom").action="sendxiaoxi.htm";
   document.getElementById("fom").submit();
}

function on_load(){
	var loadingmsg=document.getElementById("loadingmsg");
	var mainpage=document.getElementById("mainpage");
	loadingmsg.style.display="";
	mainpage.style.display="none";
	
	loadingmsg.style.display="none";
	mainpage.style.display="";
}
</SCRIPT>

<body onload="on_load()">
<form name="fom" id="fom" method="post" action="">
<table id="mainpage" width="100%" border="0" cellspacing="0" cellpadding="0">

  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="62" background="../images/nav04.gif">
          
		   <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
		  <tr>
			<td width="21"><img src="../images/ico07.gif" width="20" height="18" /></td>
			<td width="550">�鿴��Ʒ�������
			 <select name="type" class="textarea">
					  <option value="0" selected>ȫ������</option>
					  <option value="1" >��װ</option>
					  <option value="2" >Ůװ</option>
					  <option value="3" >ͯװ</option>
					  <option value="4" >�Ҿ�</option>
					  <option value="5" >����</option>
			</select>

			 ����Ʒ���ƣ�<input type="text" value=""  name="goodsname"/>
			 <input name="Submit" type="button" class="right-button02" value="����" />
			 </td>	
		  </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">

        <tr>
          <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">

          	 <tr>
               <td height="20"><span class="newfont07">ѡ��<a href="#" class="right-font08" onclick="selectAll();">ȫѡ</a>-<a href="#" class="right-font08" onclick="unselectAll();">��ѡ</a></span>
                 <input name="Submit3" type="button" class="right-button08" value="ɾ����ѡ��Ʒ" />
                 <input name="Submit2" type="button" class="right-button08" value="�½���Ʒ��Ϣ" onclick="link();"/></td>
          	 </tr>
              <tr>
                <td height="40" class="font42"><table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
                  <tr>
                    <td height="20" colspan="9" align="center" bgcolor="#EEEEEE"class="tablestyle_title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ��Ʒ��Ϣ�б� &nbsp;</td>
                  </tr>
                  <tr>
                    <td width="5%" align="center" bgcolor="#EEEEEE">ѡ��</td>
                    <td width="13%" height="20" align="center" bgcolor="#EEEEEE">��Ʒ����</td>
                    <td width="10%" align="center" bgcolor="#EEEEEE">��������</td>
                    <td width="10%" align="center" bgcolor="#EEEEEE">�̳Ǽ۸�</td>
					<td width="10%" align="center" bgcolor="#EEEEEE">�г��۸�</td>
					<td width="10%" align="center" bgcolor="#EEEEEE">��Ʒ����</td>
					<td width="21%" align="center" bgcolor="#EEEEEE">��������</td>
					<td width="10%" align="center" bgcolor="#EEEEEE">ʱ�Ƿ��ؼ�</td>
                    <td width="26%" align="center" bgcolor="#EEEEEE">����</td>
					
                  </tr>
                  <tr align="center">
                    <td bgcolor="#FFFFFF"><input type="checkbox" name="delid"/></td>
                    <td height="20" bgcolor="#FFFFFF">xxxxx</td>
                    <td bgcolor="#FFFFFF">��װ</td>
                    <td bgcolor="#FFFFFF">��200</td>
					<td bgcolor="#FFFFFF">��500</td>
					<td bgcolor="#FFFFFF">50</td>
					<td bgcolor="#FFFFFF">12</td>
					<td bgcolor="#FFFFFF">��</td>
                    <td bgcolor="#FFFFFF"><a href="edit.html">�޸�</a>|<a href="#">ɾ��</a>|<a href="takexiaoximingxi.htm">�鿴</a></td>
                  </tr>
                  <tr align="center">
                    <td bgcolor="#FFFFFF"><input type="checkbox" name="delid"/></td>
                    <td height="20" bgcolor="#FFFFFF">xxxxx</td>
                    <td bgcolor="#FFFFFF">��װ</td>
                    <td bgcolor="#FFFFFF">��200</td>
					<td bgcolor="#FFFFFF">��500</td>
					<td bgcolor="#FFFFFF">50</td>
					<td bgcolor="#FFFFFF">12</td>
					<td bgcolor="#FFFFFF">��</td>
                     <td bgcolor="#FFFFFF"><a href="edit.html">�޸�</a>|<a href="#">ɾ��</a>|<a href="takexiaoximingxi.htm">�鿴</a></td>
                  </tr>
                  <tr align="center">
                    <td bgcolor="#FFFFFF"><input type="checkbox" name="delid"/></td>
                    <td height="20" bgcolor="#FFFFFF">xxxxx</td>
                    <td bgcolor="#FFFFFF">��װ</td>
                    <td bgcolor="#FFFFFF">��200</td>
					<td bgcolor="#FFFFFF">��500</td>
					<td bgcolor="#FFFFFF">50</td>
					<td bgcolor="#FFFFFF">12</td>
					<td bgcolor="#FFFFFF">��</td>
                     <td bgcolor="#FFFFFF"><a href="edit.html">�޸�</a>|<a href="#">ɾ��</a>|<a href="takexiaoximingxi.htm">�鿴</a></td>
                  </tr>
                  <tr align="center">
                    <td bgcolor="#FFFFFF"><input type="checkbox" name="delid"/></td>
                    <td height="20" bgcolor="#FFFFFF">xxxxx</td>
                    <td bgcolor="#FFFFFF">��װ</td>
                    <td bgcolor="#FFFFFF">��200</td>
					<td bgcolor="#FFFFFF">��500</td>
					<td bgcolor="#FFFFFF">50</td>
					<td bgcolor="#FFFFFF">12</td>
					<td bgcolor="#FFFFFF">��</td>
                     <td bgcolor="#FFFFFF"><a href="edit.html">�޸�</a>|<a href="#">ɾ��</a>|<a href="takexiaoximingxi.htm">�鿴</a></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
        </tr>
      </table>
      <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="6"><img src="../images/spacer.gif" width="1" height="1" /></td>
        </tr>
        <tr>
          <td height="33"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="right-font08">
              <tr>
                <td width="50%">�� <span class="right-text09">5</span> ҳ | �� <span class="right-text09">1</span> ҳ</td>
                <td width="49%" align="right">[<a href="#" class="right-font08">��ҳ</a> | <a href="#" class="right-font08">��һҳ</a> | <a href="#" class="right-font08">��һҳ</a> | <a href="#" class="right-font08">ĩҳ</a>] ת����</td>
                <td width="1%"><table width="20" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="1%"><input name="textfield3" type="text" class="right-textfield03" size="1" /></td>
                      <td width="87%"><input name="Submit23222" type="submit" class="right-button06" value=" " />
                      </td>
                    </tr>
                </table></td>
              </tr>
          </table></td>
        </tr>
      </table></td>
  </tr>
</table>
</form>

<div id="loadingmsg" style="width:100px; height:18px; top:0px; display:none;">
	<img src="file:///F|/��Ŀ�����������/��Ŀ����ϵͳҳ��/images/loadon.gif" />
</div>

</body>
</html>
