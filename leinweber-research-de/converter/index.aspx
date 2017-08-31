<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="leinweber_research_de.converter.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title>Konverter | LeinweberResearch.de</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<script>
	'use strict';
	$(document).ready(function () {
		$('#inputData').on('keyup', process);
		$('.convProp').change(process);
	});
	function process() {
		var input = $('#inputData').val();
		var output = "";
		var outputFormat = $('#ddlOutput').val()
		for (var i = 0; i < input.length; i++) {
			var cc = input.charCodeAt(i);
			if(outputFormat == 'dec')
				output += cc;
			else if (outputFormat == 'bool')
				output += cc.toString(2);
			else if (outputFormat == 'hex')
				output += cc.toString(16);
			if ($('#cbSpaces')[0].checked)
				output += " ";
		}
		if (output.substr(output.length - 1) == " ")
			output = output.substr(0, output.length - 1)
		$('#outputData').val(output);
		}
		function escapeRegExp(str) {
			return str.replace(/([.*+?^=!:${}()|\[\]\/\\])/g, "\\$1");
		}
		function replaceAll(str, find, replace) {
			return str.replace(new RegExp(escapeRegExp(find), 'g'), replace);
		}
	</script>
	<textarea  id="inputData" placeholder="input" rows="10" cols="100"></textarea>
	<select id="ddlInput" class="convProp">
		<option value="0">Unicode</option>
	</select>
	<br />
	<textarea  id="outputData"  placeholder="output" rows="10" cols="100"></textarea>
	<select id="ddlOutput" class="convProp">
		<option value="bool">Binary</option>
		<option value="dec">Decimal</option>
		<option value="hex" selected="selected">Hex</option>
	</select>
	<input id="cbSpaces" class="convProp" type="checkbox">Seperate with spaces<br>
</asp:Content>
