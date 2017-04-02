<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Group-3</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/mobile.css" media="screen and (max-width : 568px)">
	
	<script type="text/javascript" src="js/mobile.js"></script>

	
	<!-- Google Analytics -->
	<script>
	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
	
	ga('create', 'UA-241068-1', 'auto');
	ga('send', 'pageview');
	
	</script>
	<!-- End Google Analytics -->
	

	<script src="https://freewebsitetemplates.com/js/jquery/jquery-1.11.0.min.js"></script>	
		
	<script src="https://freewebsitetemplates.com/js/xenforo/xenforo.js?_v=9a20bde6"></script>


	<script>
	$(document).ready(function() {
		$("a[data-ga-event='click']").each(
			function() {
				if ($(this).data("gaCategory") && $(this).data("gaAction") && $(this).data("gaLabel")) {
					//console.log($(this).data("gaCategory") + " - " + $(this).data("gaAction") + " - " + $(this).data("gaLabel"));
					$(this).on('click', function() {
						ga('send', 'event', $(this).data("gaCategory"), $(this).data("gaAction"), $(this).data("gaLabel"));
						Piwik.getAsyncTracker().trackEvent($(this).data("gaCategory"), $(this).data("gaAction"), $(this).data("gaLabel"));
					});
				} else {
					console.error("missing attributes for google analytics event tracking");
				}
			}
		);
	});
	</script>

</head>



<body style="align-content:center;background-image:url(~/Images/back.jpg);">
    <div style="height:auto;Width:auto;padding: 1px; margin: auto; background-image: url('Images/back.jpg'); background-repeat: no-repeat; background-attachment: inherit; background-position: center center; position: relative;">
    <div id="header" style="align-content:center;align-self:center;align-self:center;vertical-align:central;text-align:center;background-color:black">
        <h1 style="color:blue;font-family:Harrington;"> BOOK-GAMUT</h1>
        <asp:Image ID="Image7" runat="server" ImageUrl="~/Images/logo.png" Height="150" Width="200" ImageAlign="Middle" />
	</div>
    <form id="form1" runat="server">
	<div id="clearance">&nbsp;</div>
	<!-- End  Fixed Template Info Header -->
	<div style="text-align:center">
        <asp:Button ID="Button1" runat="server" Text="Book-Gamut" BorderColor="#0066FF" BorderStyle="Dotted" PostBackUrl="~/Home.aspx" />
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" BorderColor="#0066FF" BorderStyle="Dotted" Text="About us" />
	</div>
	<div id="body" style="text-align:center">
        <h2>GROUP-3 Team Members</h2>
		
		<asp:Table ID="Table1" runat="server" HorizontalAlign="Center">
                <asp:TableRow Height="300" HorizontalAlign="Justify" VerticalAlign="Middle">
                    <asp:TableCell HorizontalAlign="Justify" VerticalAlign="Middle"  Width="300">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/5.jpg" Height="250" Width="250" />
                        <br />
                        <span>Kanigiri,Uday kumar<br />ID:28<br />KanigiriU3473@UHCL.edu<br />
                        </span>
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Justify" VerticalAlign="Middle"  Width="300">
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/1.jpg" Height="250" Width="250" />
                        <span><br />
                            Kolli,Neeharika
                            <br />
                            ID:3
                            <br />
                            KolliN0181@uhcl.edu
                            <br />
                        </span>
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Justify" VerticalAlign="Middle"  Width="300">
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/2.jpg" Height="250" Width="250" />
                        <span><br />
                            Pallapothu,Radha Venkatanath
                            <br />
                            ID:4
                            <br />
                            PallapothuR9742@uhcl.edu
                            <br />
                        </span>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow Height="300" HorizontalAlign="Justify" VerticalAlign="Middle">
                    <asp:TableCell HorizontalAlign="Justify" VerticalAlign="Middle"  Width="300">
                        <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/3.jpg" Height="250" Width="250" />
                        <span><br />
                            Kotha,Venkata Naga Ashok Teja
                            <br />
                            ID:15
                            <br />
                            KothaV0253@uhcl.edu
                            <br />
                        </span>
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Justify" VerticalAlign="Middle"  Width="300">
                        <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/4.jpg" Height="250" Width="250" />
                        <span><br />
                            Thodimela,Aditya 
                            <br />
                            ID:1
                            <br />
                            thodimelaa9636@uhcl.edu
                            <br />
                        </span>
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Justify" VerticalAlign="Middle"  Width="300">
                        <asp:Image ID="Image6" runat="server" ImageUrl="~/Images/6.jpg" Height="250" Width="250" />
                        <span><br />
                            Gorijala,Lakshmi Charita 
                            <br />
                            ID:17
                            <br />
                            GorijalaL8094@uhcl.edu
                            <br />
                        </span>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
	
	<div id="wix" style="padding:20px 0;text-align:center;">
		
	</div>
	
    </div>
    </form>
        </div>
</body>
</html>