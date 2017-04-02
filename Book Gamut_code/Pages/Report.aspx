<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Pages_Report" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Design Phase Document:<br />
    <br />
    <iframe id="ifrm" src="http://docs.google.com/gview?url=http://dcm.uhcl.edu/c563316sp01g3/Docs/Design.pdf&embedded=true" style="width:100%; height:500px;" frameborder="0"></iframe>
    <br />
    <br />
    <br />
    Final Project Report:<br /><br />
    <iframe id="I1" src="http://docs.google.com/gview?url=http://dcm.uhcl.edu/c563316sp01g3/Docs/Report.pdf&embedded=true" style="width:100%; height:500px;" frameborder="0" name="I1"></iframe>
</asp:Content>

