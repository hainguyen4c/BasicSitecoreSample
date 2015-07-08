<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Subnavigation.ascx.cs" Inherits="BasicSitecore_HN.layouts.HaiNguyen.Subnavigation" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>
<div class="indentedSection">
    <!-- Notice that we are using model binding - the repeater's ItemType is set to the Item class -->
    <asp:Repeater ID="rpSubnavigation" ItemType="Sitecore.Data.Items.Item" runat="server">
        <HeaderTemplate>
            <ul class="bikes">
        </HeaderTemplate>
        <ItemTemplate>
            <li>
                <!-- Add hyperlink here -->
                <!-- See tip in book - you do not need to use the OnItemDataBound property on the repeater for this exercise -->
                <asp:HyperLink Text="<%#: Item.Name %>" NavigateUrl="<%#: Sitecore.Links.LinkManager.GetItemUrl( Item, new Sitecore.Links.UrlOptions { UseDisplayName=true }) %>" runat="server" />
            </li>
        </ItemTemplate>
        <FooterTemplate>
            </ul>
        </FooterTemplate>
    </asp:Repeater>
</div>
