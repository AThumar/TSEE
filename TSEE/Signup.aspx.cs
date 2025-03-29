using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace TSEE
{
    public partial class Signup : Page
    {
        protected void btnSignup_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();

            // Validate inputs
            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
            {
                Response.Write("<script>alert('Email and Password fields cannot be empty!');</script>");
                return;
            }

            string connString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=TSEE;Integrated Security=True";

            using (SqlConnection conn = new SqlConnection(connString))
            {
                conn.Open();

                // Check if the email already exists
                string checkQuery = "SELECT COUNT(*) FROM Users WHERE Email = @Email";
                using (SqlCommand checkCmd = new SqlCommand(checkQuery, conn))
                {
                    checkCmd.Parameters.AddWithValue("@Email", email);
                    int count = (int)checkCmd.ExecuteScalar();

                    if (count > 0)
                    {
                        Response.Write("<script>alert('Email already exists. Please use a different email.');</script>");
                        return;
                    }
                }

                // Insert new user if email does not exist
                string insertQuery = "INSERT INTO Users (Email, Password) VALUES (@Email, @Password)";
                using (SqlCommand insertCmd = new SqlCommand(insertQuery, conn))
                {
                    insertCmd.Parameters.AddWithValue("@Email", email);
                    insertCmd.Parameters.AddWithValue("@Password", password);
                    insertCmd.ExecuteNonQuery();
                }
            }

            // Redirect to login page after successful signup
            Response.Redirect("Login.aspx");
        }
    }
}
