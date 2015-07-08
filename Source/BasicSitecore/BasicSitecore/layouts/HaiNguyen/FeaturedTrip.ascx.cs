namespace BasicSitecore_HN.layouts.HaiNguyen
{
    using System;

    public partial class FeaturedTrip : System.Web.UI.UserControl
    {
        public string CssClass { get; set; }

        private void Page_Load(object sender, EventArgs e)
        {
            // Put user code to initialize the page here
            var datasource = Attributes["sc_datasource"];
            var parameters = Attributes["sc_parameters"];


            Heading.DataSource = datasource;
            MainImage.DataSource = datasource;
            MainContent.DataSource = datasource;
               

            System.Collections.Specialized.NameValueCollection nvc = Sitecore.Web.WebUtil.ParseUrlParameters(parameters);
            CssClass = nvc["CssClass"];
        }
    }
}