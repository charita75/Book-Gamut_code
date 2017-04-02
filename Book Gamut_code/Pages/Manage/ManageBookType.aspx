<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManageBookType.aspx.cs" Inherits="Pages_Manage_ManageBookType" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <strong style="font-size: 24px">ADD BOOK TYPE</strong></p>
    <p>
        Name:</p>
    <p>
        <asp:TextBox ID="Name" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Name" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit"/>
    </p>
    <p>
        <asp:Label ID="LblResult" runat="server"></asp:Label>
    </p>
</asp:Content>

