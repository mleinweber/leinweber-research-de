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
	<div class="wrapper">
		<div class="leftDiv">
			<textarea  id="inputData" placeholder="input" rows="10" cols="100"></textarea>
			<select id="ddlInput" class="convProp">
				<option value="0">Unicode</option>
			</select>
		</div>
		<div class="rightDiv">
			<h4>7-bit ASCII Table:</h4>
			<table id="asciiTable">
				<tr><th></th><th>0</th><th>1</th><th>2</th><th>3</th><th>4</th><th>5</th><th>6</th><th>7</th><th>8</th><th>9</th><th>A</th><th>B</th><th>C</th><th>D</th><th>E</th><th>F</th></tr>
				<tr><td><b>0</b></td><td>NUL</td><td>SOH</td><td>STX</td><td>ETX</td><td>EOT</td><td>ENQ</td><td>ACK</td><td>BEL</td><td>BS</td><td>HT</td><td>LF</td><td>VT</td><td>FF</td><td>CR</td><td>SO</td><td>SI</td></tr>
				<tr><td><b>1</b></td><td>DLE</td><td>DC1</td><td>DC2</td><td>DC3</td><td>DC4</td><td>NAK</td><td>SYN</td><td>ETB</td><td>CAN</td><td>EM</td><td>SUB</td><td>ESC</td><td>FS</td><td>GS</td><td>RS</td><td>US</td></tr>
				<tr><td><b>2</b></td><td>SP</td><td>!</td><td>"</td><td>#</td><td>$</td><td>%</td><td>&</td><td>'</td><td>(</td><td>)</td><td>*</td><td>+</td><td>,</td><td>-</td><td>.</td><td>/</td></tr>
				<tr><td><b>3</b></td><td>0</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td>:</td><td>;</td><td><</td><td>=</td><td>></td><td>?</td></tr>
				<tr><td><b>4</b></td><td>@</td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td><td>H</td><td>I</td><td>J</td><td>K</td><td>L</td><td>M</td><td>N</td><td>O</td></tr>
				<tr><td><b>5</b></td><td>P</td><td>Q</td><td>R</td><td>S</td><td>T</td><td>U</td><td>V</td><td>W</td><td>X</td><td>Y</td><td>Z</td><td>[</td><td>\</td><td>]</td><td>^</td><td>_</td></tr>
				<tr><td><b>6</b></td><td>`</td><td>a</td><td>b</td><td>c</td><td>d</td><td>e</td><td>f</td><td>g</td><td>h</td><td>i</td><td>j</td><td>k</td><td>l</td><td>m</td><td>n</td><td>o</td></tr>
				<tr><td><b>7</b></td><td>p</td><td>q</td><td>r</td><td>s</td><td>t</td><td>u</td><td>v</td><td>w</td><td>x</td><td>y</td><td>z</td><td>{</td><td>|</td><td>}</td><td>~</td><td>DEL</td></tr>
			</table>
		</div>
	</div>
	<div class="wrapper">
		<textarea  id="outputData"  placeholder="output" rows="10" cols="100"></textarea>
		<select id="ddlOutput" class="convProp">
			<option value="bool">Binary</option>
			<option value="dec">Decimal</option>
			<option value="hex" selected="selected">Hex</option>
		</select>
		<input id="cbSpaces" class="convProp" type="checkbox">Seperate with spaces<br>
	</div>
</asp:Content>
