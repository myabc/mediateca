function checkQuickSearch(qsF) {
	if(qsF.kw.value.length) {	// Something was entered
		return true;
	} else {
		alert("You did not enter any search criteria.\nPlease enter keywords to perform a search.");
		return false;
	}
}

// Toggles content
function dspCntToggle(id) {
	if(document.all)
		c = document.all[id];
	else if(document.getElementById)
		c = document.getElementById(id);
	if(c.style.display == 'none')
		c.style.display = 'block';
	else
		c.style.display = 'none';
}


function displayStatusMsg(msgStr) { //v1.0
	status=msgStr;
	document.returnValue = true;
}

function addAsFavorite(name,url){
  if((navigator.appVersion.indexOf("MSIE") > 0) && (parseInt(navigator.appVersion) >= 4)) {
	window.external.AddFavorite(url,name);
  }
  else {
		window.alert("Netscape/Other Browser User:\n\n" +
					"To bookmark this web page:\n\n"+
					"1. Click Bookmarks. On Mac OS, open the\n"+
					"Bookmarks menu--the green bookmark icon to\n"+
					"the right of the Go menu.\n"+
					"2. Choose Add Bookmark.");
	}
}

// FUNCTION: Make Homepage (IE only)
function makeMyHomepage(name,url,id){
	if((navigator.appVersion.indexOf("MSIE") > 0) && (parseInt(navigator.appVersion) >= 4)) {
		src=document.getElementById(id);
		src.style.behavior='url(#default#homepage)';
		src.setHomePage(url);
	}
	else {
		window.alert("Netscape/Other Browser User:\n\n" +
					"To make this web page your homepage:\n\n"+
					"1. From the Edit menu, choose Preferences.\n"+
					"2. Click the Navigator category.\n"+
					"3. Click Use Current Page to select the current\n"+
					"page as your home page.");	
	}
}

