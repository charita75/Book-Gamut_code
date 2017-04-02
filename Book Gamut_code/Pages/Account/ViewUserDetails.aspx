<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewUserDetails.aspx.cs" Inherits="Pages_Account_ViewUserDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
<br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" CssClass="detailsDescription" DataSourceID="SqlDataSource1" ForeColor="Black" Height="50px" HorizontalAlign="Center" Width="125px">
        <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        </Fields>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
    </asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:c563316sp01g3ConnectionString %>" SelectCommand="SELECT [FirstName], [LastName], [Address], [PostalCode], [Email] FROM [UserDetail] WHERE ([Email] = @Email)">
    <SelectParameters>
        <asp:ControlParameter ControlID="Label1" Name="Email" PropertyName="Text" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<br />
<asp:Button ID="Edit" runat="server" style="margin:auto;margin-left:auto;margin-right:auto" CssClass="button" PostBackUrl="~/Pages/Account/UserProfile.aspx" Text="Edit Profile" />
</asp:Content>

