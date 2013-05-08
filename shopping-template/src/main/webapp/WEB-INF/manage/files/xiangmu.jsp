<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>奋斗商城</title>
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
      <th class="tablestyle_title" >会员添加录入</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
		<tr><td align="left">
		<input type="button" name="Submit" value="保存" class="button" onclick="alert('保存成功！');"/>　
			
			<input type="button" name="Submit2" value="返回" class="button" onclick="window.history.go(-1);"/>
		</td></tr>
		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>会员信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td nowrap align="right" width="15%">用户名:</td>
					    <td width="35%"><input name='txt3' type="text" class="text" style="width:154px" value="" />
				        <span class="red">*</span></td>
				        	
					    <td nowrap align="right" width="18%">真实姓名:</td>
					    <td width="35%"><input name='txt3' type="text" class="text" style="width:154px" value="" />
				        <span class="red">*</span></td>
					    </tr>
						
						<tr>
					    <td nowrap align="right" width="15%">性别:</td>
					    <td width="35%"><select id="select1" name="select1">
									<option>男</option>
									<option>女</option>
									
								</select>					        </td>
				         <td nowrap align="right" width="18%">详细地址:</td>
					    <td width="35%"><input name='txt3' type="text" class="text" style="width:154px" value="" />				        </td>	
						</tr>
						<tr>	
							<td nowrap align="right" width="15%">Email地址:</td>
							<td width="35%">
								<input name='txt3' type="text" class="text" style="width:154px" value="" />							</td>
							<td nowrap align="right" width="18%">手机:</td>
							<td width="35%">
							<input name='txt3' type="text" class="text" style="width:154px" value="" />							</td>
				        </tr>
						<tr>	
							<td nowrap align="right" width="15%">邮编:</td>
							<td width="35%"><input name='txt3' type="text" class="text" style="width:154px" value="" />							</td>
							
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
			<input type="button" name="Submit" value="保存" class="button" onclick="alert('保存成功！');"/>　
			
			<input type="button" name="Submit2" value="返回" class="button" onclick="window.history.go(-1);"/></TD>
		</TR>
		</TABLE>
	
	
	 </td>
  </tr>
  
  
  
  
  </table>

</div>
</form>
</body>
</html>

