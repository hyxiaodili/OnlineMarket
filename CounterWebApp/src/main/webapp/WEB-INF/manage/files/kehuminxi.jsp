<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ܶ��̳Ǻ�̨</title>
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
<script type="text/JavaScript">

</script>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
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
    document.getElementById("fom").action="xuqiumingxi.html";
   document.getElementById("fom").submit();
}
</SCRIPT>

<body>
<form name="fom" id="fom" method="post">
<table width="100%" border="0" cellspacing="0" cellpadding="0">

  <tr>
    <td height="30">      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="62" background="../images/nav04.gif">
            
		   <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
		    <tr>
			  <td width="21">&nbsp;</td>
			  </tr>
          </table></td>
        </tr>
    </table></td></tr>
  <tr>
    <td><table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
         
              <tr>
                <td height="40" class="font42"><table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">

					                  <tr>
                    <td height="20" colspan="2" align="center" bgcolor="#EEEEEE"class="tablestyle_title"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ������ϸ����</td>
                    </tr>
                  <tr>
				    <td width="16%" height="20" align="right" bgcolor="#FFFFFF">�������:</td>
                    <td width="84%" colspan="2" bgcolor="#FFFFFF"> 2011022800001</td>
                    </tr>
                  <tr>
				    <td height="20" align="right" bgcolor="#FFFFFF">����״̬:</td>
				    <td colspan="2" bgcolor="#FFFFFF">�ѷ���</td>
                    </tr>
                  <tr>
				    <td height="20" align="right" bgcolor="#FFFFFF">��Ʒ�б�:</td>
				    <td colspan="2" bgcolor="#FFFFFF">
					<table border="1">
						<tr>
							<td width="100">��Ʒ����</td>
							<td width="100">��������</td>
							<td width="100">�۸�</td>
							<td width="100">���С��</td>
						</tr>
						<tr>
							<td>���޷�</td>
							<td>2</td>
							<td>350��</td>
							<td>700��</td>
						</tr>
						<tr>
							<td colspan="4" align="right">�����ܶ700Ԫ+���ã�10Ԫ&nbsp;���ƣ�710Ԫ</td>
							
						</tr>
					</table>
					</td>
                    </tr>
                  <tr>
                    <td height="20" align="right" bgcolor="#FFFFFF">�ջ�������:</td>
                    <td colspan="2" bgcolor="#FFFFFF">����</td>
                  </tr>
                  <tr>
                    <td height="20" align="right" bgcolor="#FFFFFF">�ջ��˵�ַ:</td>
                    <td colspan="2" bgcolor="#FFFFFF">���������㷻��XXС��</td>
                  </tr>
               
                  <tr>
				    <td height="20" align="right" bgcolor="#FFFFFF">�ʱ�:</td>
				    <td colspan="2" bgcolor="#FFFFFF">123456 </td>
                  </tr>
				   <tr>
				    <td height="20" align="right" bgcolor="#FFFFFF">��ϵ�绰:</td>
				    <td colspan="2" bgcolor="#FFFFFF">1320000000 </td>
                  </tr>
				   <tr>
				    <td height="20" align="right" bgcolor="#FFFFFF">Email��ַ:</td>
				    <td colspan="2" bgcolor="#FFFFFF">whj@126.com </td>
                  </tr>
				   <tr>
				    <td height="20" align="right" bgcolor="#FFFFFF">�ͻ���ʽ:</td>
				    <td colspan="2" bgcolor="#FFFFFF">��ͨƽ��</td>
                  </tr>
				   <tr>
				    <td height="20" align="right" bgcolor="#FFFFFF">֧����ʽ:</td>
				    <td colspan="2" bgcolor="#FFFFFF">��������</td>
                  </tr>
				   <tr>
				    <td height="20" align="right" bgcolor="#FFFFFF">�µ�����:</td>
				    <td colspan="2" bgcolor="#FFFFFF">2011-2-28</td>
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
</body>
</html>
