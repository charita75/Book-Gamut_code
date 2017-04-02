<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="Pages_ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="pnlCart" runat="server">
    </asp:Panel>
    <table>
        <tr>
            <td><b> Total:</b></td>
            <td><asp:Literal ID="LitTotal" runat="server"/></td>
        </tr>
        <tr>
            <td><b> Vat:</b></td>
            <td><asp:Literal ID="LitVAT" runat="server"/></td>
        </tr>
        <tr>
            <td><b> Shipping:</b></td>
            <td><asp:Literal ID="Literal2" runat="server"/></td>
        </tr>
        <tr>
            <td><b> Total:</b></td>
            <td><asp:Literal ID="LitTotalAmount" runat="server"/></td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton text="Continue Shopping" ID="lnkContinue" runat="server" PostBackUrl="~/Home.aspx"/>
                OR
                <asp:Button ID="btnCheckOut" runat="server" Text="Continue Checkout" CssClass="button" PostBackUrl="~/PaymentPage.aspx" />
            </td>
        </tr>
    </table>
</asp:Content>

