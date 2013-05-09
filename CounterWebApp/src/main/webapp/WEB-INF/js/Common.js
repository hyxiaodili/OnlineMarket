/***This File forbidden relative  path，please use variable 'vanclwww'***/
if (!vanclwww || typeof (vanclwww) != "string") var vanclwww = "";
/* Vancl tracking system*/
try
{
    $(document).ready(
    function(){
    var sb = [];
    sb.push(vanclwww+"/track.aspx?ref=");
    sb.push(escape(window.document.referrer));
    var url = sb.join("");
    var reporterFrame = document.createElement("iframe");
    reporterFrame.src = url;
    reporterFrame.style.border = "0";
    reporterFrame.style.height = "0";
    document.getElementsByTagName("body")[0].appendChild(reporterFrame);
    });
}catch(err)
{}