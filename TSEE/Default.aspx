<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TSEE.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="hero-section">
        <h1>Simplify <span class="highlight-red">PDF</span> <span class="highlight-blue">Note</span>-Taking</h1>
        <h2>with AI-Powered</h2>
        <p>Elevate your note-taking experience with our AI-powered PDF app. Seamlessly extract key insights, summaries, and annotations from any PDF with just a few clicks.</p>
        <div class="buttons">
            <asp:Button ID="btnGetStarted" runat="server" Text="Get Started" CssClass="btn primary" OnClick="btnGetStarted_Click" />
            <asp:Button ID="btnLearnMore" runat="server" Text="Learn More" CssClass="btn secondary" OnClick="btnLearnMore_Click" />
        </div>
    </div>
</asp:Content>
