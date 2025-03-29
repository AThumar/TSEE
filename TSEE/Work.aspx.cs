using System;
using System.IO;
using System.Web;
using System.Web.UI;

namespace TSEE  // ✅ Ensure this matches your project namespace
{
    public partial class Work : Page  // ✅ Ensure this extends Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userEmail = Request.QueryString["user"];
            string fileName = Request.QueryString["file"];

            if (!string.IsNullOrEmpty(userEmail) && !string.IsNullOrEmpty(fileName))
            {
                // ✅ Sanitize userEmail and fileName (remove invalid characters)
                userEmail = SanitizeFileName(userEmail);
                fileName = SanitizeFileName(fileName);

                string filePath = Server.MapPath("~/Uploads/" + userEmail + "/" + fileName);

                if (File.Exists(filePath))
                {
                    // Redirect to PDF Viewer or Process the PDF
                    Response.Redirect("PDFViewer.aspx?file=" + Server.UrlEncode(filePath));
                }
                else
                {
                    Response.Write("<script>alert('File not found!'); window.location='Dashboard.aspx';</script>");
                }
            }
        }

        // ✅ Utility Function to Remove Invalid Characters
        private string SanitizeFileName(string input)
        {
            foreach (char c in Path.GetInvalidFileNameChars())
            {
                input = input.Replace(c, '_'); // Replace invalid characters with '_'
            }
            return input;
        }

    }
}
