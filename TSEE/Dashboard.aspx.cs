using System;
using System.IO;
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

        protected void btnUploadFile_Click(object sender, EventArgs e)
        {
            if (fileUpload.HasFile)
            {
                string fileName = txtFileName.Text.Trim();
                string fileExtension = Path.GetExtension(fileUpload.FileName);

                if (fileExtension.ToLower() == ".pdf")
                {
                    string savePath = Server.MapPath("~/Uploads/") + fileName + fileExtension;

                    // Ensure directory exists
                    if (!Directory.Exists(Server.MapPath("~/Uploads/")))
                    {
                        Directory.CreateDirectory(Server.MapPath("~/Uploads/"));
                    }

                    fileUpload.SaveAs(savePath);
                    Response.Write("<script>alert('File uploaded successfully!');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Only PDF files are allowed!');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Please select a file.');</script>");
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}
