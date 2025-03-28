using System;
namespace TSEE

{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Any initialization if needed
        }

        protected void btnGetStarted_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signup.aspx");
        }

        protected void btnLearnMore_Click(object sender, EventArgs e)
        {
            Response.Redirect("about.aspx");
        }
    }
}
