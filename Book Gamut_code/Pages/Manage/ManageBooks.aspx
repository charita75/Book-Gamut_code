<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManageBooks.aspx.cs" Inherits="Pages_Manage_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <strong style="font-size: 24px">ADD NEW BOOK</strong></p>
    <p>
        &nbsp;</p>
    <p>
    ISBN:</p>
    <p>
        <asp:TextBox ID="TxtISBN" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtISBN" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Should Contain Only Numbers" ForeColor="Red" ValidationExpression="\d{1,10}" ControlToValidate="TxtISBN"></asp:RegularExpressionValidator>
</p>
<p>
    Title:</p>
    <p>
        <asp:TextBox ID="TxtTitle" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtTitle" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p>
    Author:</p>
    <p>
        <asp:TextBox ID="TxtAuthor" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtAuthor" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p>
    Publication:</p>
    <p>
        <asp:TextBox ID="TxtPublication" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtPublication" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p>
    Type:</p>
    <p>
        <asp:DropDownList ID="ddlBookType" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Id">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:c563316sp01g3ConnectionString %>" SelectCommand="SELECT * FROM [BookType] ORDER BY [Name]"></asp:SqlDataSource>
</p>
<p>
    Price:</p>
    <p>
        <asp:TextBox ID="TxtPrice" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtPrice" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Should contain only numbers" ForeColor="Red" ValidationExpression="\d{1,4}" ControlToValidate="TxtPrice"></asp:RegularExpressionValidator>
</p>
<p>
    Description:</p>
    <p>
        <asp:TextBox ID="TxtDescription" runat="server" Height="53px" TextMode="MultiLine" Width="193px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TxtDescription" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p>
    Image:
    </p>
    <p>
    <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="FileUpload1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p>
    <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" />
</p>
<p>
    <asp:Label ID="LblResult" runat="server"></asp:Label>
</p>
</asp:Content>

