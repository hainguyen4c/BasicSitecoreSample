<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CommentsList.ascx.cs" Inherits="BasicSitecore_HN.layouts.HaiNguyen.CommentsList" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>

<asp:Repeater ID="rpComments" ItemType="Sitecore.Data.Items.Item" runat="server" OnItemDataBound="rpComments_ItemDataBound">
    <HeaderTemplate>
        <div class="indentedSection">
	        <h3>Comments</h3>
    </HeaderTemplate>
    <ItemTemplate>
		<p><strong>
            <sc:FieldRenderer runat="server" ID="CommentAuthor" FieldName="Comment Author" DisableWebEditing="True" />
            @ <asp:Literal runat="server" ID="CommentCreated"></asp:Literal> 

		   </strong></p>
		<p><sc:FieldRenderer runat="server" ID="CommentText" FieldName="Comment Text" DisableWebEditing="True" /> </p>
		<p><sc:FieldRenderer runat="server" ID="CommentLink" FieldName="Comment Author Website" DisableWebEditing="True" /></p>
    </ItemTemplate>
    <FooterTemplate>
        </div>
    </FooterTemplate>
</asp:Repeater>

