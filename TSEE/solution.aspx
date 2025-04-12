<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="features.aspx.cs" Inherits="TSEE.features" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ScanX Features</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Font Awesome for icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" />
    <style>
        body {
            background: linear-gradient(to right, #e0f7fa, #e1bee7);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .feature-card {
            transition: transform 0.2s, box-shadow 0.2s;
            border-radius: 15px;
        }
        .feature-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0,0,0,0.2);
        }
        .feature-icon {
            font-size: 2rem;
            margin-bottom: 15px;
            color: #fff;
        }
        .btn-custom {
            background-color: #6a1b9a;
            color: #fff;
            border: none;
        }
        .btn-custom:hover {
            background-color: #4a148c;
            color: #fff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container py-5">
            <h2 class="text-center mb-4">🌟 ScanX Features</h2>
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="card feature-card bg-primary text-white text-center p-4">
                        <div class="feature-icon"><i class="fas fa-file-pdf"></i></div>
                        <h5 class="card-title">PDF Management</h5>
                        <p class="card-text">Organize and access your PDFs effortlessly.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card feature-card bg-success text-white text-center p-4">
                        <div class="feature-icon"><i class="fas fa-pen"></i></div>
                        <h5 class="card-title">Smart Notes</h5>
                        <p class="card-text">Annotate and take notes directly on your documents.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card feature-card bg-warning text-white text-center p-4">
                        <div class="feature-icon"><i class="fas fa-search"></i></div>
                        <h5 class="card-title">Advanced Search</h5>
                        <p class="card-text">Quickly find documents with powerful search tools.</p>
                    </div>
                </div>
                <!-- Add more feature cards as needed -->
            </div>
            <div class="text-center mt-5">
                <asp:Button ID="btnStartFree" runat="server" Text="Get Started for Free" CssClass="btn btn-custom px-4 me-2" />
                <asp:Button ID="btnPricing" runat="server" Text="See Pricing Plans" CssClass="btn btn-outline-light px-4" />
            </div>
        </div>
    </form>
    <!-- Bootstrap JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
