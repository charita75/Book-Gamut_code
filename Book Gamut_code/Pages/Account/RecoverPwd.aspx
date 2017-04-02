<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RecoverPwd.aspx.cs" Inherits="Pages_Account_RecoverPwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <asp:Literal ID="litMsg" runat="server"></asp:Literal>
    </p>
    <p>
        Forgot Password:</p>
    <p>
        UserName:</p>
    <p>
        <asp:TextBox ID="UserName" runat="server" CssClass="inputs"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Button ID="ForgotPwdBtn" runat="server" CssClass="button" OnClick="ForgotPwdBtn_Click" Text="Button" />
    </p>
</asp:Content>

