using System;
using System.Xml.Linq;
namespace TSEE

{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Optional: Add logic for Google OAuth later
        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string email = txtEmail.Text;
            string password = txtPassword.Text;

            // TODO: Add database logic to store user details

            Response.Redirect("Dashboard.aspx"); // Redirect after signup
        }
    }
}
