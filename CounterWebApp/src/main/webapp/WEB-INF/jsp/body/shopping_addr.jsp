<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
    
    <head>
        <title>
            选择送货地址-奋斗商城
        </title>
        <meta name="keywords" content="奋斗 服装,直销,衬衣,衬衫,牛津纺,经纬80公里全棉衬衫,领带,毛背心,卡其裤"
        />
        <meta name="description" content="奋斗出品，由欧美著名设计师领衔企划，集结顶级男装品牌经典款式之精华，同时参考亚洲男士体型特点，精选高支面料贴身制作，让用户以中等价位享受奢侈品质，提倡简约、纵深、自在、环保。"
        />
        <link type="text/css" rel="stylesheet" href="css/Reusable.css" />
        <link type="text/css" rel="stylesheet" href="css/gmxx.css" />
        <link href="css/footer.css" type="text/css" rel="stylesheet" />
        <script src="PublicControls/Js/FromCheck.js" language="javascript">
        </script>
        <script src="PublicControls/Js/rest_img.js" language="javascript">
        </script>
        <script src="PublicControls/Js/cookies_oper.js" language="javascript">
        </script>
        <script src="PublicControls/Js/StringTrim.js" language="javascript">
        </script>
        <script src="PublicControls/Js/ShoppingUrl.js" language="javascript">
        </script>
        <script language="javascript" src="PublicControls/Js/ConsigneeCheck.js">
        </script>
        <script src="PublicControls/Js/jquery.js" language="javascript">
        </script>
        <script src="js/Ajax.js" language="javascript">
        </script>
        <script src="js/conn.js" language="javascript">
        </script>
    </head>
    
    <body>
        <center>
            <span id="Label_Error">
            </span>
            <div id="gmxx">
                <script src="PublicControls/Js/jquery.js" language="javascript">
                </script>
                <div id="Head" align="left">
                    <a href="http://www.fendoujiaoyou.com/">
                        <img src="images/log.gif" width="311"
                        height="39" alt="Vancl" border="0" />
                    </a>
                    <p>
                        
                    </p>
                </div>
                <div align="left" id="step_">
                    结算步骤:
                    <span id="shoppingstep_0">
                        1.登录注册
                    </span>
                    &gt;&gt
                    <span id="shoppingstep_2">
                        2.填写核对订单信息
                    </span>
                    &gt;&gt
                    <span id="shoppingstep_3">
                        3.提交订单
                    </span>
                </div>
                <script>
                    var shoppingstep = '2';
                    if (shoppingstep == "0") {
                        DelClass();
                        $('#step_ span[@id=shoppingstep_0]').addClass("shoppingstepcontrol");
                    }
                    if (shoppingstep == "1") {
                        DelClass();
                        $('#step_ ').hide();
                    }

                    if (shoppingstep == "2") {
                        DelClass();
                        $('#step_ span[@id=shoppingstep_2]').addClass("shoppingstepcontrol");
                    }

                    if (shoppingstep == "3") {
                        DelClass();
                        $('#step_ span[@id=shoppingstep_3]').addClass("shoppingstepcontrol");
                    }
                    function DelClass() {
                        $('#step_ span[@id^=shoppingstep_]').removeClass("shoppingstepcontrol");
                    }
                </script>
                <div id="onEdit">
                </div>
                <form id="Form_Select_Address" method="post" action="">
				<div class="bxSty1">
                    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tabSty01"  border="10px">
                                <tr bgcolor="#7a7f89" class="trSty01">
                                    <td height="30" align="left" class="reusableColor5 xxSty01">
                                        &nbsp;&nbsp;&nbsp;&nbsp;您以前用过的
                                        <strong>
                                            配送地址
                                        </strong>
                                    </td>
                                </tr>
								<tr>							
									<td>
										<input type="radio" name="addr1"/>黑龙江省哈尔滨市呼兰区学院路长青大街111号<br/>
										<input type="radio" name="addr1"/>黑龙江省哈尔滨市呼兰区学院路长青大街111号<br/>
										<input type="radio" name="addr1"/>黑龙江省哈尔滨市呼兰区学院路长青大街111号<br/>
										<input type="radio" name="addr1"/>黑龙江省哈尔滨市呼兰区学院路长青大街111号<br/>
									</td>
								</tr>
								<tr>
									<td>
										 <input style="" type="image" src="images/button_ps.gif"
                                                class="buttonSty" />
									</td>
								</tr>
					</table>
					</div>

                </form>
             
				<div id="edit">

                    <script language="javascript" src="PublicControls/Js/ConsigneeCheck.js">
                    </script>
                    <script language="javascript" src="PublicControls/Js/EmailCheck.js">
                    </script>
                    <script language="javascript" src="PublicControls/Js/Area.js">
                    </script>
                    <script src="PublicControls/Js/jquery.js" language="javascript">
                    </script>
					

                   <form name="Form_Consignee" id="Form_Consignee" method="post" action="/shoppingDemo02/Shopping_DeliveryType.html"
                    onsubmit="return Check_Consignee(this);">
                        <div class="bxSty1">
                            <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tabSty01">
                                <tr bgcolor="#7a7f89" class="trSty01">
                                    <td height="30" align="left" class="reusableColor5 xxSty01">
                                        &nbsp;&nbsp;&nbsp;&nbsp;请输入新的
                                        <strong>
                                            配送地址
                                        </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" valign="top">
                                        <ul class="psAdd" align="left">
                                            <li>
                                                <p align="right" class="pSty01">
                                                    收货人姓名：
                                                </p>
                                                <p class="pSty02 reusableColor3" align="left">
                                                    <input type="text" name="Name" id="Name" value="" size="22" onChange="ChecktheForm_Name()"
                                                    />
                                                    &nbsp;&nbsp;
                                                    <span class="reusableColor4">
                                                        *
                                                    </span>
                                                    &nbsp;&nbsp; 请准确填写真实姓名，以便确保商品准确无误送达。
                                                </p>
                                            </li>
                                            <li class="conLi1">
                                                <span class="errorstring" id="errorName">
                                                </span>
                                            </li>
                                            <li>
                                                <p align="right" class="pSty01">
                                                    配送省份/直辖市：
                                                </p>
                                                <p>
                                                    <select id="ProvinceID" name="ProvinceID" onChange="ShowCity(this.options[selectedIndex].text);CheckProvince()">
                                                        <option value=''>
                                                            --请选择--
                                                        </option>
                                                    </select>
                                                    &nbsp;&nbsp;市：
                                                    <select id="CityID" name="CityID" onChange="ShowArea(this.options[selectedIndex].text);CheckCity()">
                                                        <option value=''>
                                                            --请选择--
                                                        </option>
                                                    </select>
                                                    &nbsp;&nbsp;县/区：
                                                    <select id="AreaID" name="AreaID" onChange="GetPostalCodeNew(this.options[this.selectedIndex].text,'CityID','ProvinceID'),ShowV(this.options[this.selectedIndex].text);CheckArea()">
                                                        <option value=''>
                                                            --请选择--
                                                        </option>
                                                    </select>
                                                    <input type="hidden" id="SelectedValue" value=",," />
                                                    <input id="provincev" name="provincev" type="hidden" />
                                                    <input id="cityv" name="cityv" type="hidden" />
                                                    <input id="areav" name="areav" type="hidden" />
                                                    <!-- <script language="javascript">
                                                        var provinceV = "";
                                                        var formnameop = "Form_Consignee";
                                                        var SelectedValue = ",,";
                                                        var text = "%e5%8c%97%e4%ba%ac,北京$%e5%a4%a9%e6%b4%a5,天津$%e6%b2%b3%e5%8c%97,河北$%e5%b1%b1%e8%a5%bf,山西$%e5%86%85%e8%92%99%e5%8f%a4,内蒙古$%e8%be%bd%e5%ae%81,辽宁$%e5%90%89%e6%9e%97,吉林$%e9%bb%91%e9%be%99%e6%b1%9f,黑龙江$%e4%b8%8a%e6%b5%b7,上海$%e6%b1%9f%e8%8b%8f,江苏$%e6%b5%99%e6%b1%9f,浙江$%e5%ae%89%e5%be%bd,安徽$%e7%a6%8f%e5%bb%ba,福建$%e6%b1%9f%e8%a5%bf,江西$%e5%b1%b1%e4%b8%9c,山东$%e6%b2%b3%e5%8d%97,河南$%e6%b9%96%e5%8c%97,湖北$%e6%b9%96%e5%8d%97,湖南$%e5%b9%bf%e4%b8%9c,广东$%e5%b9%bf%e8%a5%bf,广西$%e6%b5%b7%e5%8d%97,海南$%e9%87%8d%e5%ba%86,重庆$%e5%9b%9b%e5%b7%9d,四川$%e8%b4%b5%e5%b7%9e,贵州$%e4%ba%91%e5%8d%97,云南$%e8%a5%bf%e8%97%8f,西藏$%e9%99%95%e8%a5%bf,陕西$%e7%94%98%e8%82%83,甘肃$%e9%9d%92%e6%b5%b7,青海$%e5%ae%81%e5%a4%8f,宁夏$%e6%96%b0%e7%96%86,新疆";
                                                        var ProvinceText = "";
                                                        var CityText = "";
                                                        var AreaText = "";
                                                        var Province = "";
                                                        var City = "";
                                                        var Area = "";
                                                        if (SelectedValue == ",,") {
                                                            add_form("ProvinceID", text, "");
                                                        } else {
                                                            if (ProvinceText != "") {
                                                                add_form("ProvinceID", ProvinceText, Province);
                                                            }
                                                            if (CityText != "") {
                                                                add_form("CityID", CityText, City);
                                                            }
                                                            if (AreaText != "") {
                                                                add_form("AreaID", AreaText, Area);
                                                            }
                                                        }
                                                        function rtID(s) {
                                                            return document.getElementById(s);
                                                        }
                                                        var pChoose = "--请选择--";

                                                        //二级(加载获取市级数据)   

                                                        var provinceCurrent = "ProvinceID";
                                                        var cityIdV = "CityID";
                                                        var areaIdV = "AreaID";
                                                        function ShowCity(province) {
                                                            provinceV = province;
                                                            rtID("provincev").value = province;
                                                            var id = "";
                                                            provinceV = province;
                                                            rtID(cityIdV).options.length = 0;
                                                            rtID(cityIdV).options.add(new Option(pChoose, 0));
                                                            rtID(areaIdV).options.length = 0;
                                                            rtID(areaIdV).options.add(new Option(pChoose, 0));　　
                                                            var webFileUrl = "/PublicControls/xmldata/CityData.aspx?povinceid=" + escape(province);
                                                            $.ajax({
                                                                url: webFileUrl,
                                                                //传递到得网址URL
                                                                cache: false,
                                                                datatype: "text",
                                                                contentType: "text/xml",
                                                                error: function() {
                                                                    alert('没有加载到数据');
                                                                },
                                                                success: function(result) {

                                                                    LoadData(cityIdV, result);
                                                                }
                                                            });
                                                        }
                                                        //三级（加载获取区县级数据）
                                                        function ShowArea(city) {
                                                            rtID("cityv").value = city;
                                                            if (provinceV == "") provinceV = rtID("provincev").value; //当点击修改赋值时，并且只改市，不改省的情况下 
                                                            rtID(areaIdV).options.length = 0;
                                                            rtID(areaIdV).options.add(new Option(pChoose, 0));
                                                            var webFileUrl = "/PublicControls/xmldata/AreaData.aspx?cityid=" + escape(city) + "&povinceid=" + escape(provinceV);　　$.ajax({
                                                                url: webFileUrl,
                                                                //传递到得网址URL
                                                                cache: false,
                                                                datatype: "text",
                                                                contentType: "text/xml",
                                                                error: function() {
                                                                    alert('没有加载到数据');
                                                                },
                                                                success: function(result) {
                                                                    LoadData(areaIdV, result);
                                                                }
                                                            });
                                                        }
                                                        function ShowV(area) {
                                                            rtID("areav").value = area;
                                                        }
                                                        function LoadData(byId, data) {
                                                            var byId_obj = document.getElementById(byId);
                                                            var arrData = data.split("$");
                                                            for (i = 0; i < arrData.length; i++) {
                                                                v = arrData[i].split(",");
                                                                byId_obj.length = byId_obj.length + 1;
                                                                byId_obj[i + 1].value = v[0];
                                                                byId_obj[i + 1].text = v[1];
                                                            }
                                                        }
                                                        function CheckProvince() {
                                                            var formEval = eval(formnameop + "." + provinceCurrent);
                                                            var forEvalValue = formEval.options[formEval.selectedIndex].value;
                                                            if (forEvalValue == pChoose || forEvalValue == "0" || forEvalValue == "") {
                                                                $("#errorArea").addClass("Error2");
                                                                $("#errorArea").html("<font color=#A10000>请选择省份</font>");
                                                                return (false);
                                                            } else {
                                                                $("#errorArea").removeClass("Error2");
                                                                $("#errorArea").html("");
                                                            }
                                                            return (true);
                                                        }
                                                        function CheckCity() {
                                                            formEval = eval(formnameop + "." + cityIdV);
                                                            var forEvalValue = formEval.options[formEval.selectedIndex].value;
                                                            if (forEvalValue == pChoose || forEvalValue == "0" || forEvalValue == "") {
                                                                $("#errorArea").addClass("Error2");
                                                                $("#errorArea").html("<font color=#A10000>请选择城市</font>");
                                                                return (false);
                                                            } else {
                                                                $("#errorArea").removeClass("Error2");
                                                                $("#errorArea").html("");
                                                            }
                                                            return (true);
                                                        }
                                                        function CheckArea() {
                                                            formEval = eval(formnameop + "." + areaIdV);
                                                            var forEvalValue = formEval.options[formEval.selectedIndex].value;
                                                            if (forEvalValue == pChoose || forEvalValue == "0" || forEvalValue == "") {
                                                                $("#errorArea").addClass("Error2");
                                                                $("#errorArea").html("<font color=#A10000>请选择区县</font>");
                                                                return (false);
                                                            } else {
                                                                $("#errorArea").removeClass("Error2");
                                                                $("#errorArea").html("");
                                                            }
                                                            return (true);
                                                        }
                                                        function Form_Check_ProductArea() {
                                                            if (!CheckProvince()) return false;
                                                            if (!CheckCity()) return false;
                                                            if (!CheckArea()) return false;
                                                            return true;
                                                        }
                                                        if (document.getElementById("SelectedValue").value != "") {
                                                            var oldValue = document.getElementById("SelectedValue").value;
                                                            var sarray = oldValue.split(",");
                                                            var Index = 0;
                                                            if (sarray.length > 0) {
                                                                rtID("provincev").value = sarray[0];
                                                            }
                                                            if (sarray.length > 1) {
                                                                rtID("cityv").value = sarray[1];
                                                            }
                                                            if (sarray.length > 1) {
                                                                rtID("areav").value = sarray[2];
                                                            }

                                                        }
                                                        function add_form(form_obj, text, currentKey) {
                                                            ///var form_obj=eval("parent."+form_obj);
                                                            var form_obj = document.getElementById(form_obj);

                                                            var arr_text = text.split("$");
                                                            for (i = 0; i < arr_text.length; i++) {
                                                                v = arr_text[i].split(",");
                                                                form_obj.length = form_obj.length + 1;
                                                                form_obj[i + 1].value = v[0];
                                                                form_obj[i + 1].text = v[1];
                                                                //alert(form_obj[i+1].value);
                                                                if (form_obj[i + 1].text == currentKey) {
                                                                    form_obj[i + 1].selected = true;
                                                                }

                                                            }
                                                        }
                                                    </script> -->
                                                    &nbsp;&nbsp;
                                                    <span class="reusableColor4">
                                                        *
                                                    </span>
                                                    &nbsp;&nbsp;
                                                </p>
                                            </li>
                                            <li class="conLi2">
                                                <span id="errorArea">
                                                </span>
                                            </li>
                                            <li>
                                                <p align="right" class="pSty01">
                                                    详细地址：
                                                </p>
                                                <p class="pSty02">
                                                    <input name="Address" id="Address" type="text" size="40" onChange="ChecktheForm_Address()"
                                                    maxlength="500" value="">
                                                    &nbsp;&nbsp;
                                                    <span class="reusableColor4">
                                                        *
                                                    </span>
                                                    &nbsp;&nbsp;
                                                    <br />
                                                    <span class="fontSty reusableColor3">
                                                        <span class="reusableColor1">
                                                           <!--  <a href="http://www.vancl.com/help/Transfer.htm" target="_blank">
                                                                查看详细的配送范围
                                                            </a> -->
                                                        </span>
                                                    </span>
                                                </p>
                                            </li>
                                            <li class="conLi3">
                                                <span id="errorAddress" class="errorstring">
                                                </span>
                                            </li>
                                            <li>
                                                <p align="right" class="pSty01">
                                                    邮政编码：
                                                </p>
                                                <p class="pSty02 reusableColor3">
                                                    <input name="Zip" type="text" id="Zip" size="7" onChange="ChecktheForm_Zip()"
                                                    value="">
                                                    &nbsp;&nbsp;
                                                    <span class="reusableColor4">
                                                        *
                                                    </span>
                                                    &nbsp;&nbsp;
                                                    <span id="SetPostalCode">
                                                    </span>
                                                </p>
                                            </li>
                                            <li class="conLi4">
                                                <span id="errorPostal" class="errorstring">
                                                </span>
                                            </li>
                                            <li>
                                                <p align="right" class="pSty01">
                                                    固定电话：
                                                </p>
                                                <p class="pSty02">
                                                    <input name="Tel" id="Tel" type="text" onChange="ChecktheForm_Tel()" size="12"
                                                    value="" />
                                                    <span id="PhoneCode">
                                                    </span>
                                                </p>
                                            </li>
                                            <li class="conLi5">
                                                <span id="errorPhone" class="errorstring">
                                                </span>
                                            </li>
                                            <li>
                                                <p align="right" class="pSty01">
                                                    手机：
                                                </p>
                                                <p class="pSty02 reusableColor3">
                                                    <input name="Mobile" type="text" id="Mobile" size="22" onChange="ChecktheForm_Tel()"
                                                    value="">
                                                    手机与固定电话至少有一项必填
                                                </p>
                                            </li>
                                            <li class="conLi6">
                                                <span id="errorMobile">
                                                </span>
                                            </li>
                                            <li class="conLi7">
                                                <input style="" type="image" src="images/button_ps.gif"
                                                class="buttonSty" />
                                            </li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr bgcolor="#dcdfe5" class="trSty01">
                                    <td height="26" align="left" class="reusableColor3 xxSty01">
                                        &nbsp;&nbsp;&nbsp;&nbsp;接下来您还需要选择 配送方式、支付方式、送货时间。
                                    </td>
                                </tr>
                            </table>
                            <input type="hidden" name="Consignee_Action" value="true">
                        </div>
                    </form>
                    <script language="javascript">
                        function focusInput(i) {
                            var r = i.createTextRange();
                            r.collapse(false);
                            r.select();
                        }
                    </script>
                </div>
            </div>           
            <!--Bottom-->
            <div id="bottom" align="center">
                <div id="bottoms">
                   
                    <p class="bZp3">
                        Copyright 2007 - 2011 fendoujiaoyu.com All Rights Reserved 京ICP证100557号
                    </p>
                    <p class="bZp2">
                        <a href="http://www.ectrustprc.org.cn/seal/splash/1000020.htm" target="_blank">
                            <img src="images/redlogo.gif" border="0" />
                        </a>
                        <img src="images/costumeorg.gif" border="0" />
                        <a href="http://www.315online.com.cn/member/315090053.html" target="_blank">
                            <img src="images/wsjybzzx.gif" border="0"
                            />
                        </a>
                    </p>
                </div>
            </div>
            <!--Bottom End-->
        </center>
    </body>

</html>

