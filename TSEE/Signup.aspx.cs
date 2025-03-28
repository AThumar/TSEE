using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace TSEE
{
    public partial class Signup : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            string password = txtPassword.Text;  // Store securely in a real app

            string connString = @"Server=(localdb)\MSSQLLocalDB;Database=TSEE;Integrated Security=True;";

            using (SqlConnection conn = new SqlConnection(connString))
            {
                conn.Open();
                string query = "INSERT INTO Users (Email, Password) VALUES (@Email, @Password)";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Password", password);
                    cmd.ExecuteNonQuery();
                }
            }

            Response.Write("<script>alert('Signup Successful!');</script>");
        }
    }
}
