<%@ Page Title="Sign Up" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="TSEE.Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="signup-container">
        <h1 class="logo">ScanX</h1>
        <h2>Create your account</h2>

        <button class="google-btn">
            <img src="google-icon.png" alt="Google" />
            Log in with Google
        </button>

        <div class="divider">or</div>

        <asp:TextBox ID="txtName" runat="server" CssClass="input-field" Placeholder="Enter your name"></asp:TextBox>
        <asp:TextBox ID="txtEmail" runat="server" CssClass="input-field" Placeholder="Enter your email"></asp:TextBox>
        <asp:TextBox ID="txtPassword" runat="server" CssClass="input-field" Placeholder="Enter your password" TextMode="Password"></asp:TextBox>

        <asp:Button ID="btnSignup" runat="server" Text="Continue" CssClass="btn primary" OnClick="btnSignup_Click" />

        <p class="signin-text">Already have an account? <a href="Login.aspx">Sign in</a></p>
    </div>
</asp:Content>
