<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PaymentPage.aspx.cs" Inherits="PaymentPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
            <h1>Shipping method:</h1>
            <table id="rblShipping">
	<tr>
		<td><input id="rblShipping_0" type="radio" name="rblShipping" value="UPS Ground" checked="checked" /><label for="rblShipping_0">UPS Ground</label></td>
	</tr><tr>
		<td><input id="rblShipping_1" type="radio" name="rblShipping" value="UPS Second Day" /><label for="rblShipping_1">UPS Second Day</label></td>
	</tr><tr>
		<td><input id="rblShipping_2" type="radio" name="rblShipping" value="Federal Express Overnight" /><label for="rblShipping_2">Federal Express Overnight</label></td>
	</tr>
</table>
            <h2>Payment information:</h2>
            <div id="payment">
                <select size="3" name="lstCardType" id="lstCardType" style="width:155px;">
	
	<option value="VISA">VISA</option>
	<option value="MC">MasterCard</option>
	<option value="AMEX">American Express</option>

</select>
                <span id="RequiredFieldValidator2" class="validator" style="display:none;">You must select a credit card.</span><br /><br />
                
                <label>Card number:</label>
                <asp:TextBox ID="txtCardNumber" runat="server" CssClass="inputs"></asp:TextBox>
                
                    <span id="RequiredFieldValidator1" class="validator" style="display:none;">Credit card number is required.</span><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red" ControlToValidate="txtCardNumber">Card Number is Required</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter a Valid card Number" ForeColor="Red" ControlToValidate="txtCardNumber" ValidationExpression="\d{16}"></asp:RegularExpressionValidator>
                <br />
                <label>Expiration date:</label>
                    <select name="ddlMonth" id="ddlMonth" class="entry" style="width:100px;">
	<option value="1">January</option>
	<option value="2">February</option>
	<option value="3">March</option>
	<option value="4">April</option>
	<option value="5">May</option>
	<option value="6">June</option>
	<option value="7">July</option>
	<option value="8">August</option>
	<option value="9">September</option>
	<option value="10">October</option>
	<option value="1">November</option>
	<option value="12">December</option>

</select>
                    <select name="ddlYear" id="ddlYear" class="entry" style="width:58px;">
	<option value="2017">2017</option>
	<option value="2018">2018</option>
	<option value="2019">2019</option>
	<option value="2020">2020</option>
	<option value="2021">2021</option>
	<option value="2022">2022</option>
	<option value="2023">2016</option>

</select><br />
            </div>
            
            
            
            <p id="buttons">
                <asp:Button ID="Button1" runat="server" Text="Accept order" class="button" OnClick="Button1_Click" PostBackUrl="~/Pages/Success.aspx"/>
                
                <asp:Button ID="Button3" runat="server" Text="Continue Shopping" class="button" CausesValidation="False" PostBackUrl="~/Home.aspx"/>
                
            </p>
        
    </p>
</asp:Content>

