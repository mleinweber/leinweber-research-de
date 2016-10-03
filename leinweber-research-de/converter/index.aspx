<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="leinweber_research_de.converter.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title>Konverter | LeinweberResearch.de</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<script>
	"use strict";
		$(document).ready(function () {
			$('#inputData').on('keyup', function () {
				var t = $(this).val();
				var o = "";
				for (var i = 0; i < t.length; i++)
					o += t.charCodeAt(i);
				$('#outputData').val(o);
			});
		});
	</script>
	<input id="inputData" type="text" value="" size="10" placeholder="input" />
	<input id="outputData" type="text" value="" size="10" placeholder="output" />
</asp:Content>
