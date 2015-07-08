<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CommentsForm.ascx.cs" Inherits="BasicSitecore_HN.layouts.HaiNguyen.CommentsForm" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>


<div class="indentedSection">
    <div class="formRow">
        <asp:Label ID="lblAuthor" Text="Author" AssociatedControlID="txtAuthor" runat="server" />
        <asp:TextBox ID="txtAuthor" runat="server" />
    </div>
    <div class="formRow">
        <asp:Label ID="lblContent" Text="Comment" AssociatedControlID="txtContent" runat="server" />
        <asp:TextBox ID="txtContent" runat="server" />
    </div>
    <!-- Link field form row -->
    <div class="formRow">
        <asp:Label ID="lblLink" Text="Link" AssociatedControlID="txtLink" runat="server" />
        <asp:TextBox ID="txtLink" runat="server" />
    </div>
	<!-- -->

    <div class="formRow">
        <asp:Button Text="Submit comment" ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" />
    </div>
</div>