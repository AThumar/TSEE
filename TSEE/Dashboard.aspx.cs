using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TSEE
{
    public partial class Dashboard : Page
    {
        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    // Ensure user is logged in
        //    if (Session["UserEmail"] == null)
        //    {
        //        Response.Redirect("Login.aspx");
        //    }

        //    if (!IsPostBack)
        //    {
        //        LoadUploadedFiles();
        //    }
        //}
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string uploadPath = Server.MapPath("~/Uploads/");
                if (Directory.Exists(uploadPath))
                {
                    List<string> files = Directory.GetFiles(uploadPath, "*.*", SearchOption.AllDirectories).ToList();
                    rptUploadedFiles.DataSource = files;
                    rptUploadedFiles.DataBind();
                }
            }
        }

        protected void btnUploadFile_Click(object sender, EventArgs e)
        {
            if (fileUpload.HasFile)
            {
                string userEmail = Session["UserEmail"].ToString();  // Get logged-in user email
                string sanitizedEmail = userEmail.Replace("@", "_").Replace(".", "_"); // Safe folder name

                string uploadDir = Server.MapPath($"~/Uploads/{sanitizedEmail}/"); // User-specific folder

                // Ensure the Uploads directory exists
                if (!Directory.Exists(uploadDir))
                {
                    Directory.CreateDirectory(uploadDir);
                }

                string fileName = txtFileName.Text.Trim();
                string fileExtension = Path.GetExtension(fileUpload.FileName);

                if (fileExtension.ToLower() == ".pdf")
                {
                    string savePath = Path.Combine(uploadDir, fileName + fileExtension);
                    fileUpload.SaveAs(savePath);  // Save file

                    LoadUploadedFiles();  // Refresh file list
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
            List<string> fileList = new List<string>();

            foreach (string userFolder in Directory.GetDirectories(uploadDir))
            {
                string userEmail = Path.GetFileName(userFolder);
                string[] files = Directory.GetFiles(userFolder, "*.pdf");

                foreach (string file in files)
                {
                    string fileName = Path.GetFileName(file);
                    fileList.Add(userEmail + "/" + fileName); // Store userEmail + fileName
                }
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
