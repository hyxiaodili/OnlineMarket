<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��Ŀ����ϵͳ by www.mycodes.net</title>
<link rel="stylesheet" rev="stylesheet" href="../css/style.css" type="text/css" media="all" />


<script language="JavaScript" type="text/javascript">
function tishi()
{
  var a=confirm('���ݿ��б����и���Ա������Ϣ���������޸Ļ�������Ϣ��');
  if(a!=true)return false;
  window.open("��ͻҳ.htm","","depended=0,alwaysRaised=1,width=800,height=400,location=0,menubar=0,resizable=0,scrollbars=0,status=0,toolbar=0");
}

function check()
{
document.getElementById("aa").style.display="";
}

</script>
<style type="text/css">
<!--
.atten {font-size:12px;font-weight:normal;color:#F00;}
-->
</style>
</head>

<body class="ContentBody">
  <form action="" method="post" enctype="multipart/form-data" name="form" target="sypost" >
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >�½���Ϣ</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
		<tr><td align="left">
		<input type="button" name="Submit" value="����" class="button" onclick="alert('����ɹ�');"/>��
			
			<input type="button" name="Submit2" value="����" class="button" onclick="window.history.go(-1);"/>
		</td></tr>
		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>�����Ʒ��Ϣ</legend>
					  <table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
					
                  <tr bgcolor="#FFFFFF" height="20">
				    <td width="10%" align="right">������Ʒ����:</td>
					<td colspan="3">
                    <select name="type" class="maxclass">
					</select >
					<select name="type" class="maxclass">
					</select >
					<select name="type" class="maxclass">
					</select >
					</td>
					
                   </tr>
                  <tr bgcolor="#FFFFFF">
				    <td align="right">��Ʒ����:</td>
				    <td><input type="text"></td>
					<td align="right">�г��۸�</td>
				    <td><input type="text"></td>
                    </tr>
                  <tr bgcolor="#FFFFFF">
				    <td align="right">�̳Ǽ۸�:</td>
				    <td><input type="text"></td>
					<td align="right" height="30">�Ƿ��ؼ�:</td>
				    <td>
						<select ame="type" class="maxclass">
							<option name="��" value="��"/>��
							<option name="��" value="��"/>��
						</select >
					</td>
                   </tr>
                	<tr bgcolor="#FFFFFF" >
						<td height="30" rowspan="2">&nbsp;��ƷͼƬ��</td>
						<td colspan="4">
					  ��ͼƬ��
                       <input type="file" name="pricute" size=50><br/><br/>
					   ��ͼƬ��
                       <input type="file" name="pricute" size=50><br/><br/>
					   СͼƬ��
                       <input type="file" name="pricute" size=50><br/>
					   
                   </tr>
				   <tr bgcolor="#FFFFFF" >
						<td colspan="3" align="center" >
							<input size="40px" type="button" value="�ϴ�....." onclick=""/>
							<input size="40px" type="button" value="���ͼƬ��" onclick=""/>
					   </td>
			
							
				
					</tr>
				
				   
				   <tr bgcolor="#FFFFFF">
				    <td height="103">&nbsp;��Ʒ��飺</td>
                    <td colspan="3"><span class="style5">&nbsp; </span>
                        <textarea name="introduce" cols="60" rows="5" class="textarea" id="introduce"></textarea></td>
                   </tr>
                </table>
			  <br />
				</fieldset>			</TD>
			
		</TR>
		
		

		
		
		
		</TABLE>
	
	
	 </td>
  </tr>
  
  
		
		
		
		<TR>
			<TD colspan="2" align="center" height="50px">
			<input type="button" name="Submit" value="����" class="button" onclick="alert('����ɹ���');"/>��
			
			<input type="button" name="Submit2" value="����" class="button" onclick="window.history.go(-1);"/></TD>
		</TR>
		</TABLE>
	
	
	 </td>
  </tr>
  
  
  
  </table>

</div>
</form>
</body>
</html>

