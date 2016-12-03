<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="primes.aspx.cs" Inherits="leinweber_research_de.primes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<script>
	"use strict";
	$(document).ready(function () {
		$("#btn_primes").on("click", run);
	});
	function run() {
		var i;
		for (i = 2; i <= 115763; i++) {
			var j;
			for (j = 2; j < i; j++) {
				if (i % j == 0)
					break;
				if (j == i - 1)
					$("#primeTable").find("tbody:last").append("<tr><td>" + i + "</td></tr>");
			}
		}
	}
	</script>
	<input id="btn_primes" type="button" value="Primes!">
	<br />
	<table id="primeTable">
		<tbody>
			<tr><td>2</td></tr>
		</tbody>
	</table>
</asp:Content>
