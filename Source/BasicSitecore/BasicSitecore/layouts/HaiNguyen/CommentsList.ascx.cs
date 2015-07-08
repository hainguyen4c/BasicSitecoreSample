namespace BasicSitecore_HN.layouts.HaiNguyen
{
    using Sitecore.Data.Items;
    using Sitecore.Web.UI.WebControls;
    using System;
    using System.Linq;
    using System.Web.UI.WebControls;
    using System.Xml.Linq;


    public partial class CommentsList : System.Web.UI.UserControl
    {
        private void Page_Load(object sender, EventArgs e)
        {
            Sitecore.Data.Database master = Sitecore.Configuration.Factory.GetDatabase("master");
            Sitecore.Data.Items.Item comments = master.GetItem("/sitecore/content/HaiNguyen/Comments");
            // Put user code to initialize the page here
            var children = comments.Children.Where(x => x.TemplateName == "Comment");

            if (children.Any())
            {
                rpComments.DataSource = children; // children; /* Context item's children */;
                rpComments.DataBind();
            }
        }

        protected void rpComments_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                var currentItem = e.Item.DataItem as Item;
                var scCommentAuthor = e.Item.FindControl("CommentAuthor") as FieldRenderer;
                var litPostDate = e.Item.FindControl("CommentCreated") as Literal;
                var scCommentText = e.Item.FindControl("CommentText") as FieldRenderer;
                var scCommentLink = e.Item.FindControl("CommentLink") as FieldRenderer;

                scCommentAuthor.Item = currentItem;
                litPostDate.Text = currentItem.Statistics.Created.ToString("H:mm:ss MM/dd/yy");
                scCommentText.Item = currentItem;
                scCommentLink.Item = currentItem;
            }
        }


    }
}