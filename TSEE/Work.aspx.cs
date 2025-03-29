using System;
using System.Web.UI;

namespace TSEE
{
    public partial class Work : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserEmail"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}
