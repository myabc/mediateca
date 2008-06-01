<!--
/***************************************************
This function takes whatever is in the text box and
uses a regular expression to find it within the 
select box.
***************************************************/

function findText(finder_textbox, finder_selectbox)
{ 
	var searchStr = finder_textbox.value;
	
	var myExp = new RegExp(("^" + searchStr), "i");
	var foundResult = false;
	var i=0;
		
	while ((foundResult = false) || (i < finder_selectbox.options.length))
	{
		if( myExp.test(finder_selectbox.options[i].text))
		{
			finder_selectbox.options[i].selected = true;
			foundResult = true;
		}
		i++;
	}
}
-->