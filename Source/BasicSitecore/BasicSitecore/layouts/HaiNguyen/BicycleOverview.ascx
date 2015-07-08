<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BicycleOverview.ascx.cs" Inherits="BasicSitecore_HN.layouts.HaiNguyen.BicycleOverview" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>

<div class="indentedSection">
    <table class="bikes">
        <tr>
            <th>Type</th>
            <td><sc:Text Field="Type" runat="server" /></td>
        </tr>
        <tr>
            <th>Suitability</th>
            <td><sc:Text Field="Suitability" runat="server" /></td>
        </tr>
    </table>
</div>
