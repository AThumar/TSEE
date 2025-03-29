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

        /* Sidebar */
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
    background: #007bff; /* Change to blue */
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
    background: #0056b3; /* Darker blue */
}


        .upgrade-btn {
            background: transparent;
            border: none;
            color: gray;
            text-align: left;
            cursor: pointer;
        }

       .content {
    flex-grow: 1;
    padding: 20px;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    text-align: center;
}

        /* Logout Button */
        .logout-container {
            position: absolute;
            top: 10px;
            right: 10px;
        }

        .logout-btn {
            width: auto;
            padding: 8px 15px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <!-- Sidebar -->
        <div class="sidebar">
            <h2>ScanX</h2>
            <asp:Button ID="btnUpload" runat="server" Text="+ Upload PDF" CssClass="button" OnClick="btnUpload_Click" />
            <asp:Button ID="btnWorkshop" runat="server" Text="📂 Workshop" CssClass="button" />
            <asp:Button ID="btnUpgrade" runat="server" Text="🛡️ Upgrade" CssClass="upgrade-btn" />
            <p style="font-size: 12px; color: gray;">4 out of 5 PDFs Uploaded</p>
            <progress value="4" max="5"></progress>
        </div>

        <!-- Main Content -->
        <div class="content">
            <h1>Welcome to ScanX Dashboard</h1>
            <p>Your uploaded PDFs will appear here.</p>
        </div>

        <!-- Logout Button in Top-Right -->
        <div class="logout-container">
            <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="logout-btn" OnClick="btnLogout_Click" />
        </div>
    </form>

</body>
</html>
