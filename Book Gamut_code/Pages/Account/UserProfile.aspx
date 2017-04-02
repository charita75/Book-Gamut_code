<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="Pages_Account_UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <asp:Literal ID="litStatus" runat="server"></asp:Literal>
</p>
<p>
    Email:</p>
<p>
    <asp:TextBox ID="txtEmail" runat="server" CssClass="inputs" Enabled="False" ReadOnly="True"></asp:TextBox>
</p>
<p>
    First Name:</p>
<p>
    <asp:TextBox ID="txtFirstName" runat="server" CssClass="inputs"></asp:TextBox>
</p>
<p>
    Last Name:</p>
<p>
    <asp:TextBox ID="txtLastName" runat="server" CssClass="inputs"></asp:TextBox>
</p>
<p>
    Address:</p>
<p>
    <asp:TextBox ID="txtAddress" runat="server" CssClass="inputs"></asp:TextBox>
</p>
<p>
    Postal Code:</p>
<p>
    <asp:TextBox ID="txtPostalCode" runat="server" CssClass="inputs"></asp:TextBox>
</p>
<p>
    <asp:Button ID="Update" runat="server" CssClass="button" OnClick="Update_Click" Text="Update" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="ChngPswd" runat="server" CssClass="button" Text="Change Password" PostBackUrl="~/Pages/Account/ChangePswd.aspx" />
</p>
</asp:Content>

