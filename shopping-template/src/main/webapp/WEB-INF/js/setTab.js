function setTab(name, cursel, n, id, url, cateid) {

    if (id != null && id != "") {
        $("#" + id).attr("href", url + cateid);
    }

    for (i = 1; i <= n; i++) {
        var menu = document.getElementById(name + i);
        var con = document.getElementById("con_" + name + "_" + i);
        menu.className = i == cursel ? "hover" : "0";
        con.style.display = i == cursel ? "block" : "none";
    }
}