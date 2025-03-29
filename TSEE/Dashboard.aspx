<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="TSEE.Dashboard" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            height: 100vh;
        }

        .sidebar {
            width: 250px;
            background: #f8f8f8;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: start;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
        }

        .sidebar h2 {
            margin-bottom: 20px;
        }

        .sidebar button, .logout-btn {
            background: #007bff;
            color: white;
            border: none;
            padding: 12px;
            width: 100%;
            margin: 5px 0;
            cursor: pointer;
            border-radius: 8px;
            font-size: 16px;
            font-weight: bold;
            transition: 0.3s;
        }

        .sidebar button:hover, .logout-btn:hover {
            background: #0056b3;
        }

        .content {
            flex-grow: 1;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
        }

        .file-list {
            margin-top: 20px;
            width: 60%;
            text-align: left;
        }

        .file-list a {
            text-decoration: none;
            color: #007bff;
            font-size: 16px;
            display: block;
            margin: 5px 0;
        }

        .file-list a:hover {
            text-decoration: underline;
        }

        .logout-container {
            position: absolute;
            top: 10px;
            right: 10px;
        }

        .logout-btn {
            width: auto;
            padding: 8px 15px;
        }

        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.4);
        }

        .modal-content {
            background-color: white;
            margin: 10% auto;
            padding: 20px;
            border-radius: 10px;
            width: 40%;
            text-align: center;
        }

        .close {
            float: right;
            font-size: 24px;
            cursor: pointer;
        }

        .button, .upload-btn, .close-btn {
            background: black;
            color: white;
            border: none;
            padding: 10px 20px;
            margin: 5px;
            cursor: pointer;
            border-radius: 5px;
        }

        .close-btn {
            background: #ccc;
            color: black;
        }

    </style>
    <script>
        function openModal() {
            document.getElementById("uploadModal").style.display = "block";
        }

        function closeModal() {
            document.getElementById("uploadModal").style.display = "none";
        }
    </script>
</head>
<body>

    <form id="form1" runat="server">
        <!-- Sidebar -->
        <div class="sidebar">
            <h2>ScanX</h2>
            <asp:Button ID="btnUpload" runat="server" Text="+ Upload PDF" CssClass="button" OnClientClick="openModal(); return false;" />
            <asp:Button ID="btnWorkshop" runat="server" Text="📂 Workshop" CssClass="button" />
            <asp:Button ID="btnUpgrade" runat="server" Text="🛡️ Upgrade" CssClass="button" />
        </div>

        <!-- Modal -->
        <div id="uploadModal" class="modal">
            <div class="modal-content">
                <span class="close" onclick="closeModal()">&times;</span>
                <h2>Upload Pdf File</h2>
                <p>Select a file to Upload</p>

                <asp:FileUpload ID="fileUpload" runat="server" />
                <br /><br />

                <label>File Name *</label>
                <asp:TextBox ID="txtFileName" runat="server" CssClass="input-box" />

                <br /><br />
                <asp:Button ID="btnClose" runat="server" Text="Close" CssClass="close-btn" OnClientClick="closeModal(); return false;" />
                <asp:Button ID="btnUploadFile" runat="server" Text="Upload" CssClass="upload-btn" OnClick="btnUploadFile_Click" />
            </div>
        </div>

        <!-- Main Content -->
        <div class="content">
            <h1>Welcome to ScanX Dashboard</h1>
            <p>Your uploaded PDFs will appear here.</p>

            <!-- Uploaded Files List -->
            <div class="file-list">
              <asp:Repeater ID="rptUploadedFiles" runat="server">
    <ItemTemplate>
       <a href='<%# "Work.aspx?user=" + Server.UrlEncode(System.IO.Path.GetDirectoryName(Container.DataItem.ToString())) + "&file=" + Server.UrlEncode(System.IO.Path.GetFileName(Container.DataItem.ToString())) %>'>
    📄 <%# System.IO.Path.GetFileName(Container.DataItem.ToString()) %>
</a>

        <br />
    </ItemTemplate>
</asp:Repeater>



            </div>
        </div>

        <!-- Logout Button -->
        <div class="logout-container">
            <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="logout-btn" OnClick="btnLogout_Click" />
        </div>
    </form>

</body>
</html>
