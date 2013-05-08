document.domain = 'vancl.com'
var ColorBoxTitle = '计算您的尺码';
var PreUrl = window.parent.preUrlArr;
var sizeCalObj = window.parent.sizeCalObj;
var preParam = window.parent.preParam;
var isSizeList = false;
function IniSlider(styleID, SDVFIDs, arrSDVFID,isJYW) {
    var t = encodeURI(SDVFIDs.toString());
    jQuery.get("/SizeCalculate/IniSlider.mvc?styleID=" + styleID + "&SDVFIDs=" + t + "&r=" + Math.random(),
    function(data) {
        if (data == "")
        {
            iframeClose();
            return;
        }
        var r = "var arr = " + data;
        eval(r);
        for (var i = 0; i < arr.length; i++)
        {
            var id = arr[i].Name;
            for (var j = 0; j < arrSDVFID.length; j++)
            {
                if (id == arrSDVFID[j].SDVFID)
                {
                    arrSDVFID[j].min = arr[i].min;
                    arrSDVFID[j].max = arr[i].max;
                    var bgImage = arr[i].backImage;
                    if (isJYW)
                    {

                        bgImage = bgImage.replace(".gif", "_2.gif");
                    }

                    $("#" + arrSDVFID[j].divID).css("background-image", "url(" + bgImage + "?1234)");
                    $("#" + arrSDVFID[j].outputID).attr('name', arr[i].SDVFID);

                    if (preParam[arrSDVFID[j].outputID])
                    {
                        var v = preParam[arrSDVFID[j].outputID];
                        arrSDVFID[j].value = v.split(',')[0];
                    }
                    Slider(arrSDVFID[j]);
                }
            }
        }

    });

}
function Slider(obj) {

    this.range = 'min';
    this.min = 0;
    this.max = 100;
    this.value = 0;
    this.sliderID = "";
    this.outputID = "";
    this.step = 1;
    if (obj.sliderID != "undefined" && obj.sliderID != "")
    {
        if (typeof (obj.range) != "undefined")
        {
            this.range = obj.range;
        }

        if (typeof (obj.min) != "undefined")
        {
            this.min = parseFloat(obj.min);
        }

        if (typeof (obj.max) != "undefined")
        {
            this.max = parseFloat(obj.max);
        }

        if (typeof (obj.value) != "undefined")
        {
            this.value = obj.value;
        }
        else
        {
            this.value = this.min;
        }
        if (typeof (obj.step) != "undefined")
        {
            this.step = obj.step;
        }
        var sliderObj =
         {
             range: this.range,
             value: this.value,
             step: this.step,
             min: this.min,
             max: this.max
         }

        if (typeof (obj.outputID) != "undefined" && obj.outputID != "")
        {
            $("#" + obj.outputID).val(this.value);
            sliderObj.slide = function(e, ui) {
                $("#" + obj.outputID).val(0 + ui.value);
            }
            $("#" + obj.outputID).data("max", this.max);
            $("#" + obj.outputID).data("min", this.min);


            $("#" + obj.outputID).focusout(function() {

                var value = $("#" + obj.outputID).val()

                if (/^[0-9]+(.[0-9]{2})?$/.test(value) || /^[0-9]+(.[0-9]{1})?$/.test(value))
                {

                    $("#" + obj.sliderID).slider('option', 'value', value);
                }
                else
                {

                    alert("请输入两位位小数或整数！！")
                    $("#" + obj.outputID).focus();
                }
            })
        }

        $("#" + obj.sliderID).slider(sliderObj);
    }
}

function ShowHWCompute() {

    ColorboxReload('/views/styles/SizeCalculate/HWCompute.html');
}

function ShowSizeList() {
    if(sizeCalObj.sizelist)
    {
        ColorboxReload('/views/styles/SizeCalculate/' + sizeCalObj.sizelist);
    }
}
function ShowExactCompute() {
    if (sizeCalObj.exact)
    {
        ColorboxReload('/views/styles/SizeCalculate/'+sizeCalObj.exact);
    }
}
function ShowButtocks() {
    if (sizeCalObj.second)
    {
        ColorboxReload('/views/styles/SizeCalculate/' +sizeCalObj.second);
    }
    return false;
}
function ShowContFind() {
    if (sizeCalObj.nofind)
    {
        ColorboxReload('/views/styles/SizeCalculate/' + sizeCalObj.nofind);
    }
    
}
function ShowContFind_E() {
    if (sizeCalObj.nofind_e)
    {
        ColorboxReload('/views/styles/SizeCalculate/' + sizeCalObj.nofind_e);
    }
}
function ShowResult() {
    if (sizeCalObj.result)
    {
        ColorboxReload('/views/styles/SizeCalculate/' + sizeCalObj.result);
    }
}
function ShowResult_E() {
    if (sizeCalObj.result_e)
    {
        //ColorboxReload('/views/styles/SizeCalculate/ResultExact.html');
        ColorboxReload('/views/styles/SizeCalculate/' + sizeCalObj.result_e);
    }
    
}
function showResult4Exact(){
    if(sizeCalObj.result4exact)
    {
        ColorboxReload('/views/styles/SizeCalculate/' + sizeCalObj.result4exact);    
    }
}
function ShowResult_EYW() {
    
    ColorboxReload('/views/styles/SizeCalculate/ResultExactYW.html');
}
function ShowError() {
    if (sizeCalObj.error)
    {
        isSizeList = true;
        ColorboxReload('/views/styles/SizeCalculate/' + sizeCalObj.error);
    }
}
function GoPrevious() {

    if (PreUrl.length > 0)
    {
        var url = PreUrl.pop();
        ColorboxReload(url);
    }
}
function ColorboxReload(url) {
    var c = $(window.parent.document.body);
    var k = c.find("#cboxLoadedContent").find("iframe");
    k.attr("src", url);
    //    $("#showBT").colorbox.element().attr('href', url)
    //    $("#showBT").colorbox.load();
}

function LoadLookList(className, Url,isExact) {
    if (typeof (isExact) != "undefined")
    {
        var sizeHtml = "";
        var exactCal = "";
        if (sizeCalObj.sizelist)
        {
            sizeHtml = '<a href="#" id="sizeList" title="">查看尺码对照表</a>';
        }
        if(isExact)
        {
            if (sizeCalObj.exact)
            {
                exactCal = '<a id="exactCompute" href="#" title="">精确计算</a>';
            }
            else{
                if(typeof($(".Men-JXWbtnUp"))!="undefined")
                {
                    $(".Men-JXWbtnUp").css("margin-left","297px")
                }
                if (typeof ($(".Men-GXbtnUp") != "undefined"))
                {
                    $(".Men-GXbtnUp").css("margin-left", "162px")
                }
            }
            
        }
        $("." + className).html(sizeHtml + exactCal + $("." + className).html());
    }
    $("." + className).find("a").each(function() {
        var key = $(this).attr('id')


        if (key == "sizeList")
        {

            $(this).click(function() {
                pushInputParm();
                PreUrl.push(Url);
                ShowSizeList();
                return false;
            });
        }
        if (key == "exactCompute")
        {
            $(this).click(function() {
                pushInputParm();
                PreUrl.push(Url);
                ShowExactCompute();
                return false;
            });
        }
    })
}

function pushInputParm(){
    $("input[type='text']").each(function() {
        window.parent.preParam[$(this).attr("id")] = $(this).val() + "," + $(this).attr("name");
    });
}
function pushRaidoChecked(){
    $("input[type='radio']").each(function() {
        if($(this).attr("checked"))
        {
            window.parent.preParam.statureRadio = $(this).attr("id");
        }
    })
}
function setRadioChecked(){

    var id = "standard";
    if(typeof(window.parent.preParam.statureRadio)!="undefined")
    {
        var id = window.parent.preParam.statureRadio;    
    }
    $("#" + id).attr("checked", "checked");
}
function UnitSelect(obj) {
    var checkedValue = obj.val();
    var arr = checkedValue.split(',');
    if (arr.length == 2)
    {
        $("#div_" + arr[0]).removeClass('hide').addClass('show');
        $("#div_" + arr[1]).removeClass('show').addClass('hide');


        var preValue = $("#" + arr[1]).val();
        var preText = obj.find("option:selected").text();
        var nowText = ""
        if (preText == 'CM')
        {
            nowText = preValue * 33.33333;
        }
        else
        {
            nowText = preValue / 33.33333;
        }
        var oValue = nowText.toFixed(1);
        if (oValue > $("#" + arr[0]).data("max"))
        {
            oValue = $("#" + arr[0]).data("max");
        }
        if (oValue < $("#" + arr[0]).data("min"))
        {
            oValue = $("#" + arr[0]).data("min");
        }
        
        $("#" + arr[0]).val(oValue);
        $("#" + arr[0]).focusout();
    }

}
function setColorBoxTitle() {
    var _parent = $(window.parent.document.body);
    _parent.find("#boxTitle").html(ColorBoxTitle);
}
function validate(sliderID, ouputID) {

    var _parent = $(window.parent.document.body);
    var max = $("#" + sliderID).slider('option', 'max');
    var min = $("#" + sliderID).slider('option', 'min');
    var value = $("#" + ouputID).val();
    errMess = _parent.find("#sizeCalErrMessage").val();
    if (value == "")
    {
        if (errMess == "")
        {
            _parent.find("#sizeCalErrMessage").val($("#" + ouputID).attr("title"));
        }
        else
        {
            _parent.find("#sizeCalErrMessage").val(errMess + '和' + ("#" + ouputID).attr("title"));
        }
        return false
    }
    else
    {

        if (max < value || min > value)
        {
            if (errMess == "")
            {
                _parent.find("#sizeCalErrMessage").val($("#" + ouputID).attr("title"));
            }
            else
            {
                _parent.find("#sizeCalErrMessage").val(errMess + '和' + $("#" + ouputID).attr("title"));
            }
            return false;
        }
        else
        {
            return true;
        }
    }

}

function iframeClose() {
    ChooseSize();
    parent.$.fn.colorbox.close();
    return false;
}

function colorBoxResize(obj) {
    parent.$.fn.colorbox.resize(obj);
    reSizeC()
}
function reSizeC() {
    ResizeCBbody("cboxMiddleLeft");
    ResizeCBbody("cboxContent");
    ResizeCBbody("cboxMiddleRight");

}
function ResizeCBbody(id) {

    var pa = $(window.parent.document.body);
    var obj = pa.find("#" + id);
    var h = obj.css("height");
    if (h.indexOf("px") > 0)
    {
        h = h.replace("px", "");
        var k = parseInt(h);
        var k = k > 28 ? k - 28 : k;
        obj.css("height", k.toString() + "px");
    }

}
function ChooseSize()
{
    var pa = $(window.parent.document.body);
    var calValue = pa.find("#CalculateResult").val();
    if(calValue&&calValue!="")
    {
        var ulObj = pa.find(".selSize").find("ul")
        ulObj.find("li").each(function() {
            var liText = $.trim($(this).html());
            if (liText == calValue)
            {
                $(this).click();
            }
        });
    }
}

function setSelectParValue()
{
    $("select").each(function() {

        var value = $(this).find("option:selected").text()
        var key = $(this).attr("id");
        sizeCalObj[key] = value;
    });
}

function getSelectValue(){
    $("select").each(function() {
        var key = $(this).attr("id");
        var value = "尺";
        if (typeof (sizeCalObj[key]) != "undefined")
        {
            value = sizeCalObj[key];

        }

        $(this).find("option").each(function() {

            if ($(this).text() == value)
            {

                $(this).attr("selected", "selected");
                var arr = $(this).val().split(",");

                if(arr.length==2)
                {

                    $("#div_" + arr[0]).removeClass('hide').addClass('show');
                    $("#div_" + arr[1]).removeClass('show').addClass('hide');
                }
            }
        });
    });
}