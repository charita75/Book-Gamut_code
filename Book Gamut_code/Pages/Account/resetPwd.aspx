<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="resetPwd.aspx.cs" Inherits="Pages_Account_resetPwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <asp:Literal ID="LitMsg" runat="server" ></asp:Literal>
    </p>
<p>
        Change your Password</p>
    <p>
        Password:</p>
    <p>
        <asp:TextBox ID="pswd" runat="server" CssClass="inputs" TextMode="Password"></asp:TextBox>
    </p>
    <p>
        Confirm Password:</p>
    <p>
        <asp:TextBox ID="cnfPswd" runat="server" CssClass="inputs" TextMode="Password"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="updatePswd" runat="server" CssClass="button" OnClick="updatePswd_Click" Text="Reset Password" />
    </p>
</asp:Content>

