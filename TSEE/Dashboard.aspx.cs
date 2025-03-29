using System;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

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

            if (!IsPostBack)
            {
                LoadUploadedFiles();
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
                    string uploadDir = Server.MapPath("~/Uploads/");
                    string savePath = Path.Combine(uploadDir, fileName + fileExtension);

                    // Ensure Uploads directory exists
                    if (!Directory.Exists(uploadDir))
                    {
                        Directory.CreateDirectory(uploadDir);
                    }

                    fileUpload.SaveAs(savePath);
                    LoadUploadedFiles(); // Refresh file list
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

        private void LoadUploadedFiles()
        {
            string uploadDir = Server.MapPath("~/Uploads/");
            if (!Directory.Exists(uploadDir)) return;

            string[] files = Directory.GetFiles(uploadDir, "*.pdf");
            var fileList = new System.Collections.Generic.List<string>();

            foreach (string file in files)
            {
                fileList.Add(Path.GetFileName(file));
            }

            rptUploadedFiles.DataSource = fileList;
            rptUploadedFiles.DataBind();
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}
