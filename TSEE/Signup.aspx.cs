using System;
using System.Data.SqlClient;
using System.Web.UI;

public partial class Signup : Page
{
    protected void btnSignup_Click(object sender, EventArgs e)
    {
        string email = txtEmail.Text.Trim();
        string password = txtPassword.Text.Trim();

        string connString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=UserDB;Integrated Security=True";

        using (SqlConnection conn = new SqlConnection(connString))
        {
            string query = "INSERT INTO Users (Email, Password) VALUES (@Email, @Password)";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Password", password);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
        }
    }
}
