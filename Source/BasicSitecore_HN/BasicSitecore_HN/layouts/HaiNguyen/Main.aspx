<%@ Page language="c#" Codepage="65001" AutoEventWireup="true" Inherits="BasicSitecore_HN.layouts.Main" CodeBehind="Main.aspx.cs" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>
<%@ OutputCache Location="None" VaryByParam="none" %>

<!DOCTYPE html>
<!--[if (gte IE 9)|!(IE)]><!--><html> <!--<![endif]-->
	<head>
		<meta charset="utf-8" />
		<title>Campaign Page</title>
		<meta name="description" content="Test" />
		<meta name="author" content="" />
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
		<link rel="stylesheet" href="/css/campaigns.css" /> 
		
	</head>
	<body>
		<form id="Form1" runat="server" method="post">
			<div class="container">
				<div class="indentedSection content">
					<!-- HEADING -->
					<h1>Cycling holidays</h1>
					<!-- MAIN IMAGE -->
					<img src="/img/main-image.png" class="right" />
					<!-- MAIN CONTENT -->
					<ul>
					<li><a href="campaign-page-holiday-detail.html">Cycle London</a></li>
					<li><a href="campaign-page-holiday-detail.html">Discover Helsinki in 5 Days</a></li>
					<li><a href="campaign-page-holiday-detail.html">Discover Copenhagen</a></li>	
					</ul>
					<p>Would you like to win a holiday to the Welsh mountains for you and your family? 3 days of <a href="#">mountain biking and adventures</a>. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi scelerisque dui at nunc scelerisque eu molestie dolor porttitor. Donec aliquam mi eget sem consequat tempor.</p>
					<p>Vestibulum ultricies viverra viverra. Proin laoreet velit in erat sollicitudin iaculis. Ut et vehicula leo. Curabitur non dolor elit. Morbi ac ante volutpat ante sollicitudin posuere. Sed ut nibh ut felis hendrerit vulputate at vel tortor. Suspendisse dui nibh, rutrum nec tempus vestibulum, tristique eget mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut at mollis eros. Suspendisse potenti. Duis ornare ornare tincidunt. Donec pellentesque aliquet urna in facilisis. In hac habitasse platea dictumst. Proin tempor ultricies velit, sit amet aliquam nunc aliquet eget.</p>
					<p>Sed non pulvinar orci. In est nunc, adipiscing pharetra ornare consectetur, iaculis non mauris. Suspendisse suscipit ligula non dolor interdum posuere luctus enim accumsan. Morbi consectetur turpis quis turpis ultricies imperdiet. Sed eu pellentesque elit. Ut eget purus libero. Cras tempor sodales euismod. Donec ultricies mauris quis nulla bibendum vitae placerat sapien imperdiet.</p>
				</div>
			</div>
		</form>
	</body>
</html>

