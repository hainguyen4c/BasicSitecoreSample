<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Introduction.ascx.cs" Inherits="BasicSitecore_HN.layouts.HaiNguyen.Introduction" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>

<div class="indentedSection content">
    <!-- HEADING -->
    <h1><sc:Text Field="Heading" runat="server" /></h1>
    <!-- MAIN IMAGE -->
    <sc:Image Field="Main Image" runat="server" />
    <!-- MAIN CONTENT -->
    <sc:Text Field="Main Content" runat="server" />
</div>
