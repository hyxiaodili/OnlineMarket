<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
        <title>
            �޸�����
        </title>
        <link rel="stylesheet" rev="stylesheet" href="../css/style.css" type="text/css"
        media="all" />
        <script language="JavaScript" type="text/javascript">
            function tishi() {
                var a = confirm('���ݿ��б����и���Ա������Ϣ���������޸Ļ�������Ϣ��');
                if (a != true) return false;
                window.open("��ͻҳ.htm", "", "depended=0,alwaysRaised=1,width=800,height=400,location=0,menubar=0,resizable=0,scrollbars=0,status=0,toolbar=0");
            }

            function check() {
                document.getElementById("aa").style.display = "";
            }
        </script>
        <style type="text/css">
            <!-- .atten {font-size:12px;font-weight:normal;color:#F00;} -->
        </style>
    </head>
    
    <body class="ContentBody">
        <form action="" method="post" enctype="multipart/form-data" name="form"
        target="sypost">
            <div class="MainDiv">
                <table width="50%" border="0" cellpadding="0" cellspacing="0" class="CContent">
                    <tr>
                        <th class="tablestyle_title">
                            �޸Ĺ���Ա����
                        </th>
                    </tr>
                    <tr>
                        <td class="CPanel">
                            <table border="0" cellpadding="0" cellspacing="0" style="width:100%">                              
                                <TR>
                                    <TD width="100%">
                                        <fieldset style="height:100%;">
                                            <legend>
                                                
                                            </legend>
                                            <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
                                                <tr>
                                                    <td nowrap align="center" width="14%">
                                                        �û���:
                                                    </td>
													<td>
														<input type="text" value="admin1"/ readonly>
													</td>
													</tr>
													<tr>
													<td nowrap align="center" width="14%">
                                                        ԭ���룺
                                                    </td>
													<td>
														<input type="password" value=""/ >
													</td>
                                                    
													</tr>
													<tr>
														<td nowrap align="center" width="14%">
                                                        �����룺
                                                    </td>
													<td>
														<input type="password" value=""/ >
													</td>
													</tr>
													<tr>
														<td nowrap align="center" width="14%">
                                                        ȷ�����룺
                                                    </td>
													<td>
														<input type="password" value=""/ >
													</td>
													</tr>
                                               
                                            </table>
                                            <br />
                                        </fieldset>
                                    </TD>
                                </TR>
                            </TABLE>
                        </td>
                    </tr>
                   
                    <TR>
                        <TD colspan="2" align="center" height="50px">
                            <input type="button" name="Submit" value="����" class="button" onclick="alert('����ɹ���');"
                            />
                            ��
                            <input type="button" name="Submit2" value="����" class="button" onclick="window.history.go(-1);"
                            />
                        </TD>
                    </TR>
                </TABLE>
                </td>
                </tr>
                </table>
            </div>
        </form>
    </body>

</html>