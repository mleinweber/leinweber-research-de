<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="leinweber_research_de.lia._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title>Lineare Algebra | LeinweberResearch.de</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<script>
	"use strict";
		$(document).ready(function () {
			$('.inputVector').on('keyup', function () {
				$('#c1').val($('#a2').val() + '*' + checkParentheses($('#b3').val()) + '-' + checkParentheses($('#b3').val()) + '*' + checkParentheses($('#b2').val()));
				$('#c2').val($('#a3').val() + '*' + checkParentheses($('#b1').val()) + '-' + checkParentheses($('#a1').val()) + '*' + checkParentheses($('#b3').val()));
				$('#c3').val($('#a1').val() + '*' + checkParentheses($('#b2').val()) + '-' + checkParentheses($('#a2').val()) + '*' + checkParentheses($('#b1').val()));
				try {
					d1 = eval($('#c1').val());
					d2 = eval($('#c2').val());
					d3 = eval($('#c3').val());
				}
				catch (err) {
					d1 = NaN;
					d2 = NaN;
					d3 = NaN;
				}
				$('#d1').val(d1);
				$('#d2').val(d2);
				$('#d3').val(d3);
			});
		});
		function  checkParentheses(s){return s > 0 ? s : "(" + s + ")";}
	</script>
	<div>
		<h3>Kreuzprodukt im R³</h3>
		<table>
			<tr>
				<td>
					<input id="a1" type="text" name="name" value="" size="3" class="inputVector" /></td>
				<td></td>
				<td>
					<input id="b1" type="text" name="name" value="" size="3" class="inputVector" /></td>
				<td></td>
				<td>
					<input id="c1" type="text" name="name" value="" size="8" readonly /></td>
				<td></td>
				<td>
					<input id="d1" type="text" name="name" value="" size="3" readonly/></td>
			</tr>
			<tr>
				<td>
					<input id="a2" type="text" name="name" value="" size="3" class="inputVector" /></td>
				<td>X</td>
				<td>
					<input id="b2"type="text" name="name" value="" size="3" class="inputVector" /></td>
				<td>=</td>
				<td>
					<input id="c2" type="text" name="name" value="" size="8" readonly /></td>
				<td>=</td>
				<td>
					<input id="d2" type="text" name="name" value="" size="3" readonly/></td>
			</tr>
			<tr>
				<td>
					<input id="a3" type="text" name="name" value="" size="3" class="inputVector" /></td>
				<td></td>
				<td>
					<input id="b3" type="text" name="name" value="" size="3" class="inputVector" /></td>
				<td></td>
				<td>
					<input id="c3" type="text" name="name" value="" size="8" readonly /></td>
				<td></td>
				<td>
					<input id="d3" type="text" name="name" value="" size="3" readonly/></td>
			</tr>
		</table>
	</div>
</asp:Content>
