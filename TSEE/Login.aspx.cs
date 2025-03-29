using System;
using System.Data.SqlClient;
using System.Configuration;

namespace TSEE
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserEmail"] != null)
            {
                Response.Redirect("Dashboard.aspx", false);  // ✅ Prevents ThreadAbortException
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();

            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
            {
                lblMessage.Text = "Email and Password cannot be empty!";
                return;
            }

            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["TSEEConnectionString"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    string query = "SELECT COUNT(*) FROM Users WHERE Email=@Email AND Password=@Password";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Password", password);

                        conn.Open();
                        int count = (int)cmd.ExecuteScalar();
                        conn.Close();

                        if (count > 0)
                        {
                            Session["UserEmail"] = email;  // ✅ Store session
                            Response.Redirect("Dashboard.aspx", false);  // ✅ Prevents thread abort issues
                        }
                        else
                        {
                            lblMessage.Text = "Invalid Email or Password!";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
            }
        }
    }
}
