<!-- TODO: This page formerly was customized depending
	on what community was stored in the session.  This particular page
	should provide generic DLS help, with separate 'About this Collection'
	pages.
-->

<%@ page import="org.dspace.core.ConfigurationManager" %>
<% String dspaceName = ConfigurationManager.getProperty("dspace.name"); %>

<h1>help center</h1>

<p class="bodyText">
<a href="<cfoutput>#request.Site.cfRoot#/#request.page.defaultPage#?fuseaction=help.using&#request.URLToken#</cfoutput>">Using the Library</a><br />
<a href="<cfoutput>#request.Site.cfRoot#/#request.page.defaultPage#?fuseaction=help.contactus&#request.URLToken#</cfoutput>">Contact Us</a><br />
<a href="<cfoutput>#request.Site.cfRoot#/#request.page.defaultPage#?fuseaction=help.reportbugs&#request.URLToken#</cfoutput>">Report Bugs</a><br />
<a href="<cfoutput>#request.Site.cfRoot#/#request.page.defaultPage#?fuseaction=help.credits&#request.URLToken#</cfoutput>">Credits</a>
</p>


<a id="about" name="about"/>
<h3>About <%= dspaceName %>

<!--the <cfoutput>#request.library.name#</cfoutput>--></h3>

	<!--
	<cfif request.library.id is "none">
	<p class="bodyText">You are using the Digital Library System.</p>
	<cfelse>
	<p class="bodyText">You are using the <cfoutput>#request.library.name#</cfoutput>,
	part of, and powered by the	<strong>Digital Library System</strong>.
	</cfif>
	-->
	
	<p class="bodyText">[placeholder text] You are using Mediateca / Digital Library System</p>

<a id="copyright" name="copyright"/>
<h3>Copyright</h3>
	<p class="bodyText">Unless otherwise indicated, resources in the <cfoutput>#request.library.name#</cfoutput>
	are in the public domain.
	No restrictions or copyrights are placed upon these materials. You may credit the source
	of the resource using the information contained in the <strong>"Creator"</strong>
	or <strong>"Rights"</strong> field of the resource record.
	For more information, see <a href="http://www.fws.gov/help/policies.html">USFWS policies</a>.</p>

<a id="using" name="using"/>
<h3>Using the Digital Library System</h3>

	<p class="bodyText">[placeholder text] A link to full, pop-up help should be provided here.</p>

<a id="reportBugs" name="reportBugs" />
<h3>Report Bugs</h3>

	<p class="bodyText">This page is pre-alpha.  Bugs should be reported to <a href="mailto:alexander_coles@fws.gov">Alexander Coles</a>.</p>
	
<p>&nbsp;</p>