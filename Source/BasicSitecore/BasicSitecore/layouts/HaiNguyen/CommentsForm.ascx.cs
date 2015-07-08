namespace BasicSitecore_HN.layouts.HaiNguyen
{
    using BasicSitecore_HN.common;
    using Sitecore.Data;
    using Sitecore.Data.Fields;
    using System;

    public partial class CommentsForm : System.Web.UI.UserControl
    {
        private void Page_Load(object sender, EventArgs e)
        {
            // Put user code to initialize the page here
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Get master database

            // Get the context item from the master database (e.g. by ID)

            // Use a simple method of disabling security for the duration of your editing

            // Add a new comment item - use DateUtil.IsoNow to give it a timestamp name

            // Begin editing

            // Set the author and text field values from the form

            // End editing

            using (new Sitecore.SecurityModel.SecurityDisabler())
            {

                Sitecore.Data.Database master = Sitecore.Configuration.Factory.GetDatabase("master");
                Sitecore.Data.Items.Item comments = master.GetItem("/sitecore/content/HaiNguyen/Comments");

                Sitecore.Data.Items.Item templateItem = master.GetItem(new ID(TemplateReferences.COMMENT_TEMPLATE_ID));
                Sitecore.Data.TemplateID templateID = new TemplateID(templateItem.ID);

                Sitecore.Data.Items.Item newComment = comments.Add(txtAuthor.Text, templateID);

                //TODO: eliminate SecurityDisabler if possible
                newComment.Editing.BeginEdit();
                try
                {
                    newComment.Name = txtAuthor.Text;
                    newComment["Comment Author"] = txtAuthor.Text;
                    newComment["Comment Text"] = txtContent.Text;

                    LinkField link = newComment.Fields["Comment Author Website"];
                    link.Url = txtLink.Text;
                    link.Text = txtLink.Text;
                    link.Target = "_blank";
                    link.LinkType = "external";

                    //TODO: update home
                    newComment.Editing.EndEdit();
                }
                catch (Exception ex)
                {
                    newComment.Editing.CancelEdit();
                }



            }
        }		
    }
}