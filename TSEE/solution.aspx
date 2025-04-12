<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="features.aspx.cs" Inherits="TSEE.features" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ScanX Solutions</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
    <style>
        body {
            background: linear-gradient(to bottom right, #f5f7fa, #fbeaff);
            font-family: 'Segoe UI', sans-serif;
        }

        h2 {
            font-weight: 700;
            font-size: 2.5rem;
            color: #5e35b1;
        }

        .feature-card {
            border: none;
            border-radius: 18px;
            background: rgba(255, 255, 255, 0.85);
            backdrop-filter: blur(10px);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .feature-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.15);
        }

        .feature-icon {
            font-size: 2.5rem;
            color: white;
            background: linear-gradient(135deg, #6a1b9a, #8e44ad);
            width: 60px;
            height: 60px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 20px;
        }

        .card-title {
            color: #4a148c;
            font-weight: 600;
        }

        .card-text {
            color: #555;
        }

        .btn-custom {
            background: linear-gradient(to right, #6a1b9a, #8e44ad);
            color: #fff;
            font-weight: 600;
            padding: 12px 28px;
            border: none;
            border-radius: 8px;
            transition: all 0.3s ease;
        }

        .btn-custom:hover {
            background: #4a148c;
            box-shadow: 0 0 15px rgba(106, 27, 154, 0.5);
        }

        .btn-outline-light {
            color: #6a1b9a;
            border: 2px solid #6a1b9a;
            font-weight: 600;
            border-radius: 8px;
        }

        .btn-outline-light:hover {
            background: #6a1b9a;
            color: #fff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container py-5">
            <h2 class="text-center mb-5">✨ ScanX Solutions</h2>
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="card feature-card text-center p-4 h-100">
                        <div class="feature-icon"><i class="fas fa-file-pdf"></i></div>
                        <h5 class="card-title">PDF Management</h5>
                        <p class="card-text">Organize, tag, and access your files from anywhere with a clean dashboard.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card feature-card text-center p-4 h-100">
                        <div class="feature-icon"><i class="fas fa-pen-nib"></i></div>
                        <h5 class="card-title">Smart Notes</h5>
                        <p class="card-text">Take and sync AI-assisted notes directly on your PDFs with one click.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card feature-card text-center p-4 h-100">
                        <div class="feature-icon"><i class="fas fa-search"></i></div>
                        <h5 class="card-title">Advanced Search</h5>
                        <p class="card-text">Find keywords, highlights, and summaries instantly across your files.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card feature-card text-center p-4 h-100">
                        <div class="feature-icon"><i class="fas fa-shield-alt"></i></div>
                        <h5 class="card-title">Data Security</h5>
                        <p class="card-text">Your documents are protected with industry-grade encryption and access control.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card feature-card text-center p-4 h-100">
                        <div class="feature-icon"><i class="fas fa-users"></i></div>
                        <h5 class="card-title">Collaboration</h5>
                        <p class="card-text">Work with teams, assign notes, and track document interactions in real-time.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card feature-card text-center p-4 h-100">
                        <div class="feature-icon"><i class="fas fa-brain"></i></div>
                        <h5 class="card-title">AI Summarizer</h5>
                        <p class="card-text">Instantly get clean, actionable summaries from long documents using AI.</p>
                    </div>
                </div>
            </div>

            <div class="text-center mt-5">
                <asp:Button ID="btnStartFree" runat="server" Text="Try ScanX Now" CssClass="btn btn-custom me-3" />
                <asp:Button ID="btnPricing" runat="server" Text="Pricing Plans" CssClass="btn btn-outline-light" />
            </div>
        </div>
    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
