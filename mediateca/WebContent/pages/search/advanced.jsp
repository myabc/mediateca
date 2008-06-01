<!--- dsp_form.cfm --->
<cfif request.library.virtual>
	<cfquery name="getTypeName" datasource="#request.site.mainDSN#">
	SELECT	typeName
	FROM	types
	WHERE	type_Id = '#request.library.virtualType#'
	</cfquery>
<cfelse>
	<cfquery name="getTypes" datasource="#request.site.mainDSN#">
	SELECT	type_Id, typeName
	FROM	types
	</cfquery>
</cfif>


<!-- Load the additional Javascript files that are required for this page -->

	<script src="/app_jscsslib/advsearch.js" language="JavaScript" type="text/javascript"></script>




<h1>advanced search</h1>

<p class="bodyText"><strong>Fill out one or more of the search fields below.</strong>
Remember, more complex searches may take longer to perform
(i.e. those searches with a greater number of specific search parameters).</p>

	
<html:form action="Search" onsubmit="return chkSearchForm(this)">


<fieldset>
<legend>By Keyword:</legend>

<table>
<tr><td>&nbsp;</td><td colspan="2" align="left" class="formLabel">EITHER <strong>Quick Search:</strong><br />search in Title, Alternative Title, Subject and Description:</td></tr>
<tr>
	<td align="right" class="formLabel"></td>
	<td class="formLabel"><input type="TEXT" name="kw"
			size="25" maxlength="200" class="formTextInput" /></td>
	<td class="formLabel"><select name="kwt" class="formTextInput"><option value="ex">Exact</option><option value="bl">Boolean</option><option value="ss">Smart Search</option></select></td></tr>
<tr><td>&nbsp;</td><td colspan="2" align="left" class="formLabel">OR <strong>Specific Search:</strong><br />search fields individually:</td></tr>
<tr>
	<td align="right" class="formLabel">Title:</td>
	<td class="formLabel"><input type="TEXT" name="tt"
			size="25" maxlength="200" class="formTextInput" /></td>
	<td class="formLabel"><select name="ttt" class="formTextInput"><option value="ex">Exact</option><option value="bl">Boolean</option><option value="ss">Smart Search</option></select></td></tr>
<tr>
	<td align="right" class="formLabel">Alternative Title:</td>
	<td class="formLabel"><input type="TEXT" name="ta"
			size="25" maxlength="200" class="formTextInput" /></td>
	<td class="formLabel"><select name="tat" class="formTextInput"><option value="ex">Exact</option><option value="bl">Boolean</option><option value="ss">Smart Search</option></select></td></tr>
<tr>
	<td align="right" class="formLabel">Subject:</td>
	<td class="formLabel"><input type="TEXT" name="sb"
			size="25" maxlength="400" class="formTextInput" /></td>
	<td class="formLabel"><select name="sbt" class="formTextInput"><option value="ex">Exact</option><option value="bl">Boolean</option><option value="ss">Smart Search</option></select></td></tr>
<tr>
	<td align="right" class="formLabel">Description - Abstract:</td>
	<td class="formLabel"><input type="TEXT" name="da"
			size="25" maxlength="400" class="formTextInput" /></td>
	<td class="formLabel"><select name="dat" class="formTextInput"><option value="ex">Exact</option><option value="bl">Boolean</option><option value="ss">Smart Search</option></select></td></tr>
<tr><td>&nbsp;</td><td colspan="2" align="left" class="formLabel"><strong>Additional Optional Fields:</strong></td></tr>
<tr>
	<td align="right" class="formLabel">Creator:</td>
	<td colspan="2" class="formLabel"><input type="TEXT" name="ct"
			size="35" maxlength="200" class="formTextInput" /></td></tr>
<tr>
	<td align="right" class="formLabel">Contributor:</td>
	<td colspan="2" class="formLabel"><input type="TEXT" name="cr"
			size="35" maxlength="200" class="formTextInput" /></td></tr>
</table>
</fieldset>


<fieldset>
<legend>By Date:</legend>

<table>
<tr>
	<td align="right" class="formLabel"><strong>Created</strong></td>
	<td class="formLabel">before</td>
	<td class="formLabel"><input type="TEXT" name="dcb" size="10" maxlength="10" class="formTextInput"></td>
	<td class="formLabel">after</td>
	<td class="formLabel"><input type="TEXT" name="dca" size="10" maxlength="10" class="formTextInput"></td></tr>
<tr>
	<td align="right" class="formLabel"><strong>Available</strong></td>
	<td class="formLabel">before</td>
	<td class="formLabel"><input type="TEXT" name="dab" size="10" maxlength="10" class="formTextInput"></td>
	<td class="formLabel">after</td>
	<td class="formLabel"><input type="TEXT" name="daa" size="10" maxlength="10" class="formTextInput"></td></tr>
</table>
</fieldset>


<cfif request.library.virtual>
<!--- Virtual Library --->

<fieldset>
<legend>By Libraries/Formats</legend>


	<table>
	<tr>
		<cfoutput>
		<td class="formLabel"><input type="radio" name="tp" id="typesThis" value="#request.library.virtualType#" checked="checked" /></td>
		<td class="formLabel"><label for="typesThis">#request.library.name# - #getTypeName.typeName# Resources only</label></td></tr>
	<tr>
		<td class="formLabel"><input type="radio" name="tp" id="typesAll" value="" /></td>
		<td class="formLabel"><label for="typesAll">Entire <acronym title="Digital Library System">DLS</acronym></label> - #getTypeName.typeName# and all other Resource (digital media) types</td></tr>
		</cfoutput>
	</table>

</fieldset>
	
<cfelse>
	
<fieldset>
<legend>By Resource Type</legend>

	<table>
	<tr><td>
	<select size="4" name="tp" multiple="multiple" class="formTextInput">
	<!--<option value="" selected="selected">All Types</option>-->
	<cfoutput query="getTypes">
		<option value="#type_Id#">#typeName#</option>
	</cfoutput>
	</select>
	</td></tr>
	</table>

</fieldset>

<fieldset>
<legend>By Library</legend>

<cfif variables.isSystem>
	<cfif not isDefined("getCollections")>	<!--- Query the DB --->
		<cfinclude template="../queries/qry_getcollections.cfm">
	</cfif>
	<table>
	<tr><td>
	<select size="4" name="lb" multiple="multiple"  class="formTextInput">
	<!--<option value="" selected="selected">All Libraries</option>-->
	<cfoutput query="getCollections">
		<option value="#library_Id#">#libraryName#</option>
	</cfoutput>
	</select>
	</td></tr>
	</table>
	

<cfelse>

	<table>
	<tr>
		<cfoutput>
		<td class="formLabel"><input type="radio" name="lb" id="libraryThis" value="#request.library.id#" checked="checked" /></td>
		<td class="formLabel"><label for="libraryThis">#request.library.name# only</label></td>
		<td class="formLabel"><input type="radio" name="lb" id="libraryAll" value="ALL" /></td>
		<td class="formLabel"><label for="libraryAll">All of <acronym title="Digital Library System">DLS</acronym></label></td></tr>
		</cfoutput>
	</table>

</cfif>


</fieldset>

</cfif>

	
<input type="submit" value="Search" class="formSubmit" />
<input type="reset" value="Clear Fields" class="formReset" />


</html:form>
