namespace BasicSitecore_HN.layouts.HaiNguyen
{
    using System;

    public partial class Subnavigation : System.Web.UI.UserControl
    {
        private void Page_Load(object sender, EventArgs e)
        {

            //Context Item:
            //Retrieve the current item with the Context Item: Sitecore.Data.Items.Item item = Sitecore.Context.Item

            //Commonly Used Item Properties
            //item.Name the item’s name
            //item.ID the GUID (Globally Unique ID)
            //item.ParentID the GUID of the item’s parent
            //item.Children a Collection of type ChildList of the first level descendants


            //Sub-Items: Retrieve the children of an item with either item.GetChildren() or item.Children: Sitecore.Collections.ChildList children = Sitecore.Context.Item.GetChildren();

            // Content API Cookbook
            //http://sdn.sitecore.net/upload/sitecore6/64/content_api_cookbook_sc64_and_later-a4.pdf

            //Data Definition API Cookbook http://sdn.sitecore.net/Reference/Sitecore%207/Data%20Definition%20API%20Cookbook.aspx

            //The following resource continue to be useful in Sitecore 8.  http://sdn.sitecore.net/upload/sitecore6/64/content_api_cookbook-a4.pdf

            rpSubnavigation.DataSource = Sitecore.Context.Item.Children;
            rpSubnavigation.DataBind();
        }
    }
}