<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dump.aspx.cs" Inherits="leinweber_research_de.dump" Trace="true" TraceMode="SortByCategory" %> 

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"> 
	<title>ASP.NET Diagnostic Page</title> 
</head> 
<body> 
	<form id="form1" runat="server"> 
	 <p>thx to <a href="https://social.msdn.microsoft.com/profile/omar%20alzabir/">Omar ALZabir</a> - from <a href="https://code.msdn.microsoft.com/ASPNET-Diagnostic-page-to-9a029c20">here</a> - under <a href="https://www.apache.org/licenses/LICENSE-2.0.html">Apache License 2.0</a></p>
	<h2>Environment Variables</h2> 
	<pre> 
	<table>     
<% 
		var variables = Environment.GetEnvironmentVariables(); 
		foreach (DictionaryEntry entry in variables) 
		{ 
			Response.Write("<tr><td>"); 
			Response.Write(entry.Key); 
			Response.Write("</td><td>"); 
			Response.Write(entry.Value); 
			Response.Write("</td></tr>"); 
		} 
	%> 
	</table> 
	</pre> 
 
	<h2>Misc</h2> 
	<pre> 
	Response.Filter = <%= Request.Filter.ToString() %> 
	Request.ApplicationPath = <%= Request.ApplicationPath %> 
	Request.PhysicalApplicationPath = <%= Request.PhysicalApplicationPath %> 
	Request.PhysicalPath = <%= Request.PhysicalPath %> 
	Request.UrlReferrer = <%= Request.UrlReferrer %> 
	Request.UserLanguages = <%= string.Join(",", (Request.UserLanguages ?? new string[0])) %> 
	</pre> 
	 
	</form> 
</body> 
</html>
