function QueryString() {
    var name, value, i;
    var str = location.href;
    var num = str.indexOf("?")
    str = str.substr(num + 1);
    var arrtmp = str.split("&");
    for (i = 0; i < arrtmp.length; i++) {
        num = arrtmp[i].indexOf("=");
        if (num > 0) {
            name = arrtmp[i].substring(0, num);
            value = arrtmp[i].substr(num + 1);
            this[name] = value;
        }
    }
   }

   function AddParameter(key, value, oldurl) {
   	var url = oldurl.length < 4 ? document.location.href : oldurl;
   	var len = url.indexOf("?");

   	if (len < 0) {
   		url = url + "?" + key + "=" + value;
   	}
   	else {
   		var urlBegin = url.substr(0, len + 1);
   		var paras = url.substr(len + 1, url.length - len).split("&");
   		var keyAndValue;
   		var hasKey = false;
   		for (var i = 0; i < paras.length; i++) {
   			keyAndValue = paras[i].split("=");

   			if (keyAndValue[0] == key) {
   				paras[i] = key + "=" + value;
   				hasKey = true;
   				break;
   			}
   		}

   		if (hasKey) {
   			url = urlBegin + paras.join("&");
   		}
   		else {
   			url = url + "&" + key + "=" + value;
   		}
   	}
   	return url;
   }