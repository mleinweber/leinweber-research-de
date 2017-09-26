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
			$('#inBaseConv').on('keyup', convert);
			$('#OutBaseConv').on('keyup', convert);
			$('#baseIn').change(convert);
			$('#baseOut').change(convert);
		});
		function process() {
			var input = $('#inputData').val();
			var output = "";
			var outputFormat = $('#ddlOutput').val()
			for (var i = 0; i < input.length; i++) {
				var cc = input.charCodeAt(i);
				if (outputFormat == 'dec')
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

		function convert() {
			var inputFormat = parseInt($('#baseIn').val());
			var input = parseInt($('#inBaseConv').val(), inputFormat);
			var outputFormat = parseInt($('#baseOut').val());
			console.log(inputFormat);
			console.log(input);
			console.log(outputFormat);
			$('#OutBaseConv').val(input.toString(outputFormat));
		}
	</script>
	<div class="wrapper">
	<div>
		<h3>Natürliche Zahl konvertieren</h3>
		<input id="inBaseConv" type="text" placeholder="input"/>
		<label for="baseIn">base:</label>
		<select id="baseIn">
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
			<option value="8">8</option>
			<option value="9">9</option>
			<option value="10" selected="selected">10</option>
			<option value="11">11</option>
			<option value="12">12</option>
			<option value="13">13</option>
			<option value="14">14</option>
			<option value="15">15</option>
			<option value="16">16</option>
			<option value="17">17</option>
			<option value="18">18</option>
			<option value="19">19</option>
			<option value="20">20</option>
			<option value="21">21</option>
			<option value="22">22</option>
			<option value="23">23</option>
			<option value="24">24</option>
			<option value="25">25</option>
			<option value="26">26</option>
			<option value="27">27</option>
			<option value="28">28</option>
			<option value="29">29</option>
			<option value="30">30</option>
			<option value="31">31</option>
			<option value="32">32</option>
			<option value="33">33</option>
			<option value="34">34</option>
			<option value="35">35</option>
			<option value="36">36</option>
		</select>
		<br/>
		<input id="OutBaseConv" type="text" placeholder="output"/ readonly>
		<label for="baseIn">base:</label>
		<select id="baseOut">
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
			<option value="8">8</option>
			<option value="9">9</option>
			<option value="10" selected="selected">10</option>
			<option value="11">11</option>
			<option value="12">12</option>
			<option value="13">13</option>
			<option value="14">14</option>
			<option value="15">15</option>
			<option value="16">16</option>
			<option value="17">17</option>
			<option value="18">18</option>
			<option value="19">19</option>
			<option value="20">20</option>
			<option value="21">21</option>
			<option value="22">22</option>
			<option value="23">23</option>
			<option value="24">24</option>
			<option value="25">25</option>
			<option value="26">26</option>
			<option value="27">27</option>
			<option value="28">28</option>
			<option value="29">29</option>
			<option value="30">30</option>
			<option value="31">31</option>
			<option value="32">32</option>
			<option value="33">33</option>
			<option value="34">34</option>
			<option value="35">35</option>
			<option value="36">36</option>
		</select>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	</div>
		<div class="leftDiv">
			<h3>Text konvertieren</h3>
			<textarea  id="inputData" placeholder="input" rows="10" cols="100"></textarea>
			<br/>
			<select id="ddlInput" class="convProp">
				<option value="0">Unicode</option>
			</select>
		</div>
		<div class="rightDiv">
			<h3>7-bit ASCII Table:</h3>
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
		<br/>
		<select id="ddlOutput" class="convProp">
			<option value="bool">Binary</option>
			<option value="dec">Decimal</option>
			<option value="hex" selected="selected">Hex</option>
		</select>
		<input id="cbSpaces" class="convProp" type="checkbox">Seperate with spaces<br>
	</div>
</asp:Content>