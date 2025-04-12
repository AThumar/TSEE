<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="features.aspx.cs" Inherits="TSEE.features" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ScanX Features</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background: linear-gradient(to bottom right, #f9fbfd, #eef2f7);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .card {
            border: none;
            transition: transform 0.2s ease-in-out, box-shadow 0.2s;
            border-radius: 16px;
        }
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0,0,0,0.1);
        }
        .card h5 {
            color: #34495e;
        }
        .card-body {
            background: linear-gradient(to bottom right, #ffffff, #f2f6fc);
        }
        .section-title {
            color: #2c3e50;
        }
        .highlight {
            color: #0d6efd;
            font-weight: 500;
        }
        .btn-dark {
            background-color: #212529;
            border: none;
        }
        .btn-outline-dark {
            border-color: #212529;
            color: #212529;
        }
        .btn-outline-dark:hover {
            background-color: #212529;
            color: white;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container py-5">
            <h2 class="text-center fw-bold mb-3 section-title">🚀 ScanX Features</h2>
            <p class="text-center mb-5 text-muted">
                Transform how you work with PDFs. ScanX combines powerful document management with intelligent note-taking to boost your productivity.
            </p>

            <div class="row g-4">
                <div class="col-md-4">
                    <div class="card shadow-sm">
                        <div class="card-body">
                            <h5 class="fw-bold">📁 PDF Management</h5>
                            <p>Upload, organize, and access all your PDFs in one central location.</p>
                            <a href="#" class="highlight">Access your documents anywhere, anytime.</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card shadow-sm">
                        <div class="card-body">
                            <h5 class="fw-bold">📝 Smart Notes</h5>
                            <p>Take detailed notes directly on your PDFs with sync across devices.</p>
                            <a href="#" class="highlight">Notes are automatically synced.</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card shadow-sm">
                        <div class="card-body">
                            <h5 class="fw-bold">🔍 Advanced Search</h5>
                            <p>Find documents instantly using powerful filters and tags.</p>
                            <a href="#" class="highlight">Save hours finding exactly what you need.</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card shadow-sm">
                        <div class="card-body">
                            <h5 class="fw-bold">🤖 AI Summaries</h5>
                            <p>Let our AI summarize long documents automatically.</p>
                            <a href="#" class="highlight">Understand documents in seconds.</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card shadow-sm">
                        <div class="card-body">
                            <h5 class="fw-bold">👥 Real-time Collaboration</h5>
                            <p>Collaborate with your team, track changes, and share easily.</p>
                            <a href="#" class="highlight">Perfect for research and projects.</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card shadow-sm">
                        <div class="card-body">
                            <h5 class="fw-bold">🔐 Security & Privacy</h5>
                            <p>Enterprise-level encryption keeps your documents safe.</p>
                            <a href="#" class="highlight">Your data is protected end-to-end.</a>
                        </div>
                    </div>
                </div>
            </div>

            <hr class="my-5" />

            <div class="text-center">
                <h3 class="fw-bold">✨ Ready to Transform Your Workflow?</h3>
                <p class="mb-4 text-muted">Join thousands of professionals using ScanX to work smarter, not harder.</p>
                <asp:Button a href="Signup.aspx" ID="btnStartFree" runat="server" Text="Get Started for Free" CssClass="btn btn-dark px-4 me-2 mb-2" />
                <asp:Button a href"pricing.aspx" ID="btnPricing" runat="server" Text="See Pricing Plans" CssClass="btn btn-outline-dark px-4 mb-2" />
            </div>
        </div>
    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
