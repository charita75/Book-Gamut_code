<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Pages_Account_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    <br />
</p>
<p>
    UserName:</p>
<p>
    <asp:TextBox ID="TxtUname" runat="server" CssClass="inputs"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtUname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p>
    Password:</p>
<p>
    <asp:TextBox ID="TxtPwd" runat="server" CssClass="inputs" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtPwd" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p>
    <asp:Button ID="Button1" runat="server" CssClass="button" OnClick="Button1_Click" Text="Sign In" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" CssClass="button" PostBackUrl="~/Pages/Account/RecoverPwd.aspx" Text="Forgot Password" CausesValidation="False" />
</p>
</asp:Content>

