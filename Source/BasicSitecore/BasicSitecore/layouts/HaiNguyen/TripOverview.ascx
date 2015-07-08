<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TripOverview.ascx.cs" Inherits="BasicSitecore_HN.layouts.HaiNguyen.TripOverview" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>

<!-- THIS IS THE TRIP OVERVIEW SECTION -->
<div class="indentedSection">
	<table>
		<tr>
            
			<th>Date</th>
			<td><sc:Date Field="Start Date" runat="server" /></td>
		</tr>
		<tr>
			<th>Price per  person</th>
			<td><sc:Text Field="Price per person" runat="server" /></td>
		</tr>					
	</table>
</div>			
<!-- END -->
