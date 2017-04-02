<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Management.aspx.cs" Inherits="Pages_Manage_Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="button" PostBackUrl="~/Pages/Manage/ManageBooks.aspx">Add New Book</asp:LinkButton>
    <br />
    <br />
    <asp:GridView ID="grdBooks" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ISBN" DataSourceID="sdsBooks" Width="100%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ISBN" HeaderText="ISBN" ReadOnly="True" SortExpression="ISBN" />
            <asp:BoundField DataField="TypeId" HeaderText="TypeId" SortExpression="TypeId" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
            <asp:BoundField DataField="Publication" HeaderText="Publication" SortExpression="Publication" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
</asp:GridView>
<asp:SqlDataSource ID="sdsBooks" runat="server" ConnectionString="<%$ ConnectionStrings:c563316sp01g3ConnectionString %>" DeleteCommand="DELETE FROM [Imgs] WHERE [ISBN] = @ISBN;DELETE FROM [Books] WHERE [ISBN] = @ISBN" InsertCommand="INSERT INTO [Books] ([ISBN], [TypeId], [Title], [Price], [Description], [Author], [Publication], [Image]) VALUES (@ISBN, @TypeId, @Title, @Price, @Description, @Author, @Publication, @Image)" SelectCommand="SELECT * FROM [Books]" UpdateCommand="UPDATE [Books] SET [TypeId] = @TypeId, [Title] = @Title, [Price] = @Price, [Description] = @Description, [Author] = @Author, [Publication] = @Publication, [Image] = @Image WHERE [ISBN] = @ISBN">
    <DeleteParameters>
        <asp:Parameter Name="ISBN" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ISBN" Type="String" />
        <asp:Parameter Name="TypeId" Type="Int32" />
        <asp:Parameter Name="Title" Type="String" />
        <asp:Parameter Name="Price" Type="Int32" />
        <asp:Parameter Name="Description" Type="String" />
        <asp:Parameter Name="Author" Type="String" />
        <asp:Parameter Name="Publication" Type="String" />
        <asp:Parameter Name="Image" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="TypeId" Type="Int32" />
        <asp:Parameter Name="Title" Type="String" />
        <asp:Parameter Name="Price" Type="Int32" />
        <asp:Parameter Name="Description" Type="String" />
        <asp:Parameter Name="Author" Type="String" />
        <asp:Parameter Name="Publication" Type="String" />
        <asp:Parameter Name="Image" Type="String" />
        <asp:Parameter Name="ISBN" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="button" PostBackUrl="~/Pages/Manage/ManageBookType.aspx">Add New Book Type</asp:LinkButton>
    <br />
    <br />
    <asp:GridView ID="grdBooksTypes" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" datasourceid="sdsBookTypes" Width="50%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" EnablePersistedSelection="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
</asp:GridView>
<asp:SqlDataSource ID="sdsBookTypes" runat="server" ConnectionString="<%$ ConnectionStrings:c563316sp01g3ConnectionString %>" DeleteCommand="DELETE FROM [BookType] WHERE [Id] = @Id" InsertCommand="INSERT INTO [BookType] ([Name]) VALUES (@Name)" SelectCommand="SELECT * FROM [BookType]" UpdateCommand="UPDATE [BookType] SET [Name] = @Name WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Name" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
<br />
</asp:Content>

