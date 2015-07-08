<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FeaturedTrip.ascx.cs" Inherits="BasicSitecore_HN.layouts.HaiNguyen.FeaturedTrip" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>

<div class='indentedSection widget fill <%= CssClass %>'>
    <div class="indentedSectionInner">
        <h2>
            <sc:Text ID="Heading" Field="Heading" runat="server" />
        </h2>
        <!-- Heading field -->
        <sc:Image ID="MainImage" Field="Main Image" MaxWidth="240" runat="server" />
        <!-- Main Image field -->
        <sc:Text ID="MainContent" Field="Main Content" runat="server" />
        <!-- Main Content field -->
    </div>
</div>
