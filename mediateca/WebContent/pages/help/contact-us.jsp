<cfif variables.isSystem>
	
<cfelse>

	<cfquery name="getLibInfo" datasource="#request.site.mainDSN#">
	SELECT *
	FROM libraries
	WHERE library_Id='#session.library_id#'
	</cfquery>

</cfif>




<h1>Help: Contact Us</h1>

<h3>Library Requests</h3>

<cfif variables.isSystem>
<img src="app_images/help/contactus.gif"
	width="140" height="50" border="0"
	alt="Illustration of 'Contact Us about this Resource' link" />
<p class="bodyText">You may contact the originating library for each resource by
clicking the "Get more information" link on record display pages.</p>

<cfelse>

<cfoutput>
<p class="bodyText">
The contact for the #getLibInfo.libraryName# is <strong><a href="mailto:#getLibInfo.contactEmail#">#getLibInfo.contactName#</a></strong>.</p>

<table>
<tr>
	<td></td>
	<td align="right" class="recordDataField">Email: </td>
	<td class="recordData">#getLibInfo.contactEmail#</td></tr>
<cfif len(getLibInfo.contactTel)>
<tr>
	<td></td>
	<td align="right" class="recordDataField">Telephone:</td>
	<td class="recordData">#getLibInfo.contactTel#</td></tr>
</cfif>
<cfif len(getLibInfo.contactFax)>
<tr>
	<td></td>
	<td align="right" class="recordDataField">Fax:</td>
	<td class="recordData">#getLibInfo.contactFax#</td></tr>
</cfif>
</table>
</cfoutput>
</cfif>

<!---
<FORM NAME="CFForm_1" ACTION="default.cfm" METHOD=POST onSubmit="return _CF_checkCFForm_1(this)">
	
	<input type="HIDDEN" name="fuseaction" value="records.getmoreinfosend" />
		
	<input type="HIDDEN" name="fromEmail_required"
	value="Sorry, but we do need an email address to answer your request." />


<p class="bodyText">This information request form is <strong>optional</strong>.
However, we do need an email address to answer your request.</p>
	
<table>
<tr valign="top">
	<td align="right" class="formLabel">Your name:</td>
	<td class="formLabel"><INPUT TYPE="TEXT" NAME="fromName" CLASS="formTextInput"></td></tr>
<tr valign="top">
	<td align="right" class="formLabel">Your email address:</td>
	<td class="formLabel"><INPUT TYPE="TEXT" NAME="fromEmail" CLASS="formTextInput"></td></tr>
<tr valign="top">
	<td align="right" class="formLabel">Additional comments:</td>
	<td class="formLabel"><textarea name="comments"
		rows="8" cols="25" class="formTextInput">Please write any additional comments here</textarea></td></tr>
<tr valign="top">
	<td></td>
	<td><input type="SUBMIT" value="Send request" class="formSubmit" /></td></tr>
</table>

</FORM>
--->

<a href="<cfoutput>#request.Site.cfRoot#/#request.page.defaultPage#?fuseaction=help.reportbugs&#request.URLToken#</cfoutput>">Report Bugs</a>