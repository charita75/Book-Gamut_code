<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Book.aspx.cs" Inherits="Pages_Book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td rowspan="4">
                <asp:Image ID="imgBook" runat="server" CssClass="detailsImage" />
            </td>
            <td>
                <h2><asp:Label ID="lblTitle" runat="server"></asp:Label><hr /></h2>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LabelDescription" runat="server" CssClass="detailsDescription"></asp:Label></td>
            <td>
                <asp:Label ID="LabelPrice" runat="server" CssClass="detailsPrice"></asp:Label>
            <br />
            Quantity:
            <asp:DropDownList ID="ddlAmount" runat="server"></asp:DropDownList><br />
                <asp:Button ID="btnAdd" runat="server" CssClass="button" OnClick="btnAdd_Click" Text="Add Book" />
                <br />
            <asp:Label ID="lblResult" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td>ISBN Number: <asp:Label ID="lblItemNumber" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" CssClass="productPrice"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

