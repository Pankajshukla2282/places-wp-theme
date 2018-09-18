var Utils = {
	loadScript: function(url, callback){
	    var t = document.createElement("SCRIPT");
	    t.async = true;
	    t.type = 'text/javascript';
	    t.src = url;
	    t.onreadystatechange=function(){
	    	if(t.readyState=='loaded'){
	    		callback();
	    	}
	    };
	    t.onload = function () {
			callback();
	    };
	    document.body.appendChild(t);
	    return true;
	},
	loadStyle: function(url, callback){
	    var t = document.createElement("LINK");
	    t.setAttribute("class","pdDynCSS");
	    t.async = true;
	    t.rel = 'stylesheet';
	    t.type = 'text/css';
	    t.href = url;
	    t.onreadystatechange=function(){
	    	if(t.readyState=='loaded'){
	    		callback();
	    	}
	    };
	    t.onload = function () {
			callback();
	    };
	    document.head.appendChild(t);
	    return true;
	},
	jQAjax: function(url, params, method, callback, responseType){
		params = params||"";
		method = method||"POST";
		callback = callback||null;
		responseType = responseType||"jsonp";

		switch(method){
			case "GET":
				jQuery.get( url, params, callback ,responseType);
				break;
			default:
				jQuery.post( url, params, callback ,responseType);
				break;
		}
		return false;
	}
};