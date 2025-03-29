<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TSEE.Login" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            max-width: 400px;
            margin-top: 100px;
            padding: 30px;
            background: white;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
        .btn-google {
            background: white;
            border: 1px solid #ddd;
            color: #555;
        }
        .btn-google img {
            width: 20px;
            margin-right: 10px;
        }
    </style>
</head>
<body>

<div class="container">
    <h3 class="text-center">ScanX</h3>
    <form runat="server">
        <asp:TextBox ID="txtEmail" CssClass="form-control mb-3" runat="server" Placeholder="Email address"></asp:TextBox>
        <asp:TextBox ID="txtPassword" CssClass="form-control mb-3" runat="server" TextMode="Password" Placeholder="Password"></asp:TextBox>
        
        <asp:Button ID="btnLogin" CssClass="btn btn-primary w-100" runat="server" Text="Log in" OnClick="btnLogin_Click" />
        
        <div class="text-center mt-2">
            <a href="ForgotPassword.aspx">Forgot your password?</a>
            <br />
            <a href="Signup.aspx">Sign-Up</a>
        </div>

        <div class="text-center mt-3">
            <span>or</span>
        </div>

        <asp:Button ID="btnGoogleLogin" CssClass="btn btn-google w-100 mt-2" runat="server" Text="Log in with Google" />
    </form>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
