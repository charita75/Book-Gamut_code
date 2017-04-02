<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChangePswd.aspx.cs" Inherits="Pages_Account_ChangePswd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
    Change Password:</p>
<p>
    Current Password:</p>
<p>
    <asp:TextBox ID="crPswd" runat="server" CssClass="inputs"></asp:TextBox>
</p>
<p>
    New Password:</p>
<p>
    <asp:TextBox ID="newPswd" runat="server" CssClass="inputs"></asp:TextBox>
</p>
<p>
    Re-Type New Password:</p>
<p>
    <asp:TextBox ID="newRePswd" runat="server" CssClass="inputs"></asp:TextBox>
</p>
<p>
    <asp:Button ID="chngPswd" runat="server" CssClass="button" OnClick="chngPswd_Click" Text="Change Password" />
</p>
<p>
    <asp:Literal ID="litMsg" runat="server"></asp:Literal>
</p>
</asp:Content>

