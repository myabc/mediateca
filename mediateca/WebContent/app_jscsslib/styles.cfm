<cfsetting enablecfoutputonly="yes">

<cflock scope="SESSION" type="READONLY" timeout="5">
<cfif session.browser.isNs4>
	<cfset variables.notNs4 = false>
<cfelse>
	<cfset variables.notNs4 = true>
</cfif>
</cflock>


<cfcontent type="text/css">

<cfoutput>
	body {color:###request.library.interface.colors.body#;background:###request.library.interface.colors.bodybackground#}
	form {margin:0px;padding:0px}
	.leftHead {font-size:11px;font-family:#request.library.interface.fonts.controls#;font-weight:bold;color:###request.library.interface.colors.leftboxhead#;text-align:center}
	.leftContent,.leftContent a {font-size:10px;font-family:#request.library.interface.fonts.controls#;color:###request.library.interface.colors.leftbox#;background-color:###request.library.interface.colors.leftboxbackground#}
	.leftDrop {font-size:10px;font-family:#request.library.interface.fonts.controls#;color:###request.library.interface.colors.leftbox#;line-height:14px;width:125px}
	.leftInput {font-size:10px;font-family:#request.library.interface.fonts.controls#;color:###request.library.interface.colors.leftbox#;line-height:14px;width:125px;<cfif variables.notNs4>border:1px solid ###request.library.interface.colors.leftbox#</cfif>}
	.leftSubmit {font-size:10px;font-family:#request.library.interface.fonts.controls#;font-weight:bold;color:###request.library.interface.colors.leftboxhead#;background-color:###request.library.interface.colors.leftboxheadbackground#;<cfif variables.notNs4>border:1px solid ###request.library.interface.colors.leftbox#;</cfif>}
	.leftFunctions {font-size:10px;font-family:#request.library.interface.fonts.controls#;}
	.leftFunctions a:link,.leftFunctions a:hover,.leftFunctions a:active,.leftFunctions a:visited {text-decoration:none;color:###request.library.interface.colors.leftarea#;background-color:###request.library.interface.colors.leftareabackground#;}
	.copyright {font-size:9px;font-family:#request.library.interface.fonts.controls#;}
	p.bodyText,ul,li {font-size:11px;font-family:#request.library.interface.fonts.body#;line-height:16px}
	h1 {font-size:22px;font-family:#request.library.interface.fonts.headers#;font-weight:bold;color:###request.library.interface.colors.headers#;}
	h2 {font-size:18px;font-family:#request.library.interface.fonts.headers#;font-weight:bold;color:###request.library.interface.colors.headers#;}
	h3 {font-size:16px;font-family:#request.library.interface.fonts.headers#;font-weight:bold;color:###request.library.interface.colors.headers#;}
	h4 {font-size:12px;font-family:#request.library.interface.fonts.headers#;font-weight:bold;color:###request.library.interface.colors.headers#;}
	h5 {font-size:11px;font-family:#request.library.interface.fonts.headers#;font-weight:bold;color:###request.library.interface.colors.headers#;}
	h6 {font-size:10px;font-family:#request.library.interface.fonts.headers#;font-weight:bold;color:###request.library.interface.colors.headers#;}
	a:link,a:visited {text-decoration:underline;color:###request.library.interface.colors.alink#;background:###request.library.interface.colors.alinkbackground#}
	a:hover,a:active {text-decoration:underline;color:###request.library.interface.colors.ahover#;background:###request.library.interface.colors.ahoverbackground#}
	
	legend {font-size:12px;font-family:#request.library.interface.fonts.body#;font-weight:bold;color:###request.library.interface.colors.headers#;}
	td.tabs {background:###request.library.interface.colors.tabsbackground#;color:###request.library.interface.colors.tabs#;font-size:14px;font-family:#request.library.interface.fonts.headers#;font-weight:bold;}
	td.tabs a:link,td.tabs a:hover,td.tabs a:visited, td.tabs a:active {background:###request.library.interface.colors.tabsbackground#;color:###request.library.interface.colors.tabs#;text-decoration:none;}
	hr.laBreak {color:###request.library.interface.colors.leftarea#}
	div.laSideBar {font-size:11px;font-family:#request.library.interface.fonts.body#;color:###request.library.interface.colors.leftarea#}
	.na {color:##999999}

	.resultNumber {
		font-size:14px;
		font-family:#request.library.interface.fonts.headers#;
		font-weight:bold;
		color:###request.library.interface.colors.contentbackground#;
		background-color:###request.library.interface.colors.headers#;
	
	}
	.resultFieldName {
		font-size:11px;
		font-family:#request.library.interface.fonts.body#;
		font-weight:bold;
	}
	.resultFieldData {
		font-size:11px;
		font-family:#request.library.interface.fonts.body#;
	}
	.displayOptions {
		font-size:11px;
		font-family:#request.library.interface.fonts.controls#;
		<cfif variables.notNs4>border:1px ###request.library.interface.colors.controls2# solid;</cfif>
		color:###request.library.interface.colors.controls2#;
	}
	.displayOptions a,.displayOptions a:hover,.displayOptions a:visited,.displayOptions a:active {
		color:###request.library.interface.colors.controls2#;
		background-color:###request.library.interface.colors.controls2background#;
	}
	.displayOptionsSelected {
		color:###request.library.interface.colors.controls2background#;
		background-color:###request.library.interface.colors.controls2#;
	}
	.queryInfoNav {
		font-size:11px;
		font-family:#request.library.interface.fonts.controls#;
		color:###request.library.interface.colors.controls1#;
		background-color:###request.library.interface.colors.controls1background#;
	}
	.queryInfoNav a,.queryInfoNav a:hover,.queryInfoNav a:visited,.queryInfoNav a:active {
		color:###request.library.interface.colors.controls1#;
		background-color:###request.library.interface.colors.controls1background#;
	}
.formLegend {
	font-size:12px;
	font-family:#request.library.interface.fonts.controls#;
	font-weight:bold;
	color:##CC6600;
}
input.formSubmit
{
font-size:12px;
font-family:#request.library.interface.fonts.headers#;
font-weight:bold;
color:###request.library.interface.colors.contentbackground#;
background-color:###request.library.interface.colors.headers#;
}
input.formReset {
font-size:12px;
font-family:#request.library.interface.fonts.headers#;
font-weight:bold;
color:###request.library.interface.colors.headers#;
background-color:###request.library.interface.colors.contentbackground#;
}
.formLabel {
font-size:11px;
font-family:#request.library.interface.fonts.body#;
}
.formTextInput {
font-size:12px;
font-family:#request.library.interface.fonts.body#;
}
fieldset {
border-color: ##000066;
border-style: solid;
border-width: 1px;
}


.recordDataField {

	font-size:11px;font-family:#request.library.interface.fonts.body#;
	background-color:###request.library.interface.colors.resultscell1a#;
	
}
.recordData {
	font-size:11px;font-family:#request.library.interface.fonts.body#;
}
.recordDataGroup {
	
	font-size:13px;font-family:#request.library.interface.fonts.headers#;font-weight:bold;color:###request.library.interface.colors.headers#;
	border-bottom:1px solid ###request.library.interface.colors.headers#;
	
}
</cfoutput>
<cfsetting enablecfoutputonly="no"> 