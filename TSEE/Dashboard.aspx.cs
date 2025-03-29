using System;
using System.Web;
using System.Web.UI;

namespace TSEE
{
    public partial class Dashboard : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserEmail"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            // Implement file upload logic here
            Response.Write("Upload button clicked! Implement file upload logic.");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            // Clear session and redirect to login page
            Session.Clear();
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}
