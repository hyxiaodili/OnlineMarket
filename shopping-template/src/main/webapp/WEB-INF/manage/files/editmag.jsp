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
<link rel="stylesheet" rev="stylesheet" href="../css/style.css" type="text/css" media="all" />
 
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
      <th class="tablestyle_title" >��ӹ���Ա</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
		<tr><td align="left">
		<input type="button" name="Submit" value="����" class="button" onclick="alert('����ɹ���');"/>��
			
			<input type="button" name="Submit2" value="����" class="button" onclick="window.history.go(-1);"/>
		</td></tr>
		</TABLE>
	
	
	 </td>
  </tr>
  <TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>����Ա��Ϣ</legend>
					  <table border="0" cellpadding="5" cellspacing="1" style="width:100%">
					    
					    
					  <tr>
                        <td nowrap="nowrap" align="right">����Ա����:</td>
					    <td><span class="red">
                          <input name="txt34222" type="text" class="text" style="width:154px" value="admin1" />
					      *</span></td>
					    <td align="right">����:</td>
					    <td><span class="red">
					      <input name="txt342222" type="password" class="text" style="width:154px" value="******" />
					    </span></td>
					    </tr>
					  <tr>
					    <td width="14%" align="right" nowrap>Ȩ��:</td>
					   <td bgcolor="#FFFFFF">
					<input type="checkbox"  name ="act" value="" checked/>���
					<input type="checkbox" name ="act" value=""/>ɾ��
					<input type="checkbox" name ="act" value=""/>�鿴
					</td>
					  </tr>
					  </table>
			  <br />
				</fieldset>			</TD>
			
		</TR>
		
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


