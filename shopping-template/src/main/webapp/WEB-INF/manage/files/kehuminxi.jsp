<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>奋斗商城后台</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.tabfont01 {	
	font-family: "宋体";
	font-size: 9px;
	color: #555555;
	text-decoration: none;
	text-align: center;
}
.font051 {font-family: "宋体";
	font-size: 12px;
	color: #333333;
	text-decoration: none;
	line-height: 20px;
}
.font201 {font-family: "宋体";
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}
.button {
	font-family: "宋体";
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
                    <td height="20" colspan="2" align="center" bgcolor="#EEEEEE"class="tablestyle_title"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 订单详细内容</td>
                    </tr>
                  <tr>
				    <td width="16%" height="20" align="right" bgcolor="#FFFFFF">订单编号:</td>
                    <td width="84%" colspan="2" bgcolor="#FFFFFF"> 2011022800001</td>
                    </tr>
                  <tr>
				    <td height="20" align="right" bgcolor="#FFFFFF">订单状态:</td>
				    <td colspan="2" bgcolor="#FFFFFF">已发货</td>
                    </tr>
                  <tr>
				    <td height="20" align="right" bgcolor="#FFFFFF">商品列表:</td>
				    <td colspan="2" bgcolor="#FFFFFF">
					<table border="1">
						<tr>
							<td width="100">商品名称</td>
							<td width="100">订购数量</td>
							<td width="100">价格</td>
							<td width="100">金额小计</td>
						</tr>
						<tr>
							<td>羽绒服</td>
							<td>2</td>
							<td>350￥</td>
							<td>700￥</td>
						</tr>
						<tr>
							<td colspan="4" align="right">订单总额：700元+费用：10元&nbsp;共计：710元</td>
							
						</tr>
					</table>
					</td>
                    </tr>
                  <tr>
                    <td height="20" align="right" bgcolor="#FFFFFF">收货人姓名:</td>
                    <td colspan="2" bgcolor="#FFFFFF">李四</td>
                  </tr>
                  <tr>
                    <td height="20" align="right" bgcolor="#FFFFFF">收货人地址:</td>
                    <td colspan="2" bgcolor="#FFFFFF">哈尔滨市香坊区XX小区</td>
                  </tr>
               
                  <tr>
				    <td height="20" align="right" bgcolor="#FFFFFF">邮编:</td>
				    <td colspan="2" bgcolor="#FFFFFF">123456 </td>
                  </tr>
				   <tr>
				    <td height="20" align="right" bgcolor="#FFFFFF">联系电话:</td>
				    <td colspan="2" bgcolor="#FFFFFF">1320000000 </td>
                  </tr>
				   <tr>
				    <td height="20" align="right" bgcolor="#FFFFFF">Email地址:</td>
				    <td colspan="2" bgcolor="#FFFFFF">whj@126.com </td>
                  </tr>
				   <tr>
				    <td height="20" align="right" bgcolor="#FFFFFF">送货方式:</td>
				    <td colspan="2" bgcolor="#FFFFFF">普通平邮</td>
                  </tr>
				   <tr>
				    <td height="20" align="right" bgcolor="#FFFFFF">支付方式:</td>
				    <td colspan="2" bgcolor="#FFFFFF">货到付款</td>
                  </tr>
				   <tr>
				    <td height="20" align="right" bgcolor="#FFFFFF">下单日期:</td>
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
                <td width="50%">共 <span class="right-text09">5</span> 页 | 第 <span class="right-text09">1</span> 页</td>
                <td width="49%" align="right">[<a href="#" class="right-font08">首页</a> | <a href="#" class="right-font08">上一页</a> | <a href="#" class="right-font08">下一页</a> | <a href="#" class="right-font08">末页</a>] 转至：</td>
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

