<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="TSEE.Signup" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Signup</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Create an Account</h2>

        <label>Email:</label>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <br />

        <label>Password:</label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <br />

        <asp:Button ID="btnSignup" runat="server" Text="Sign Up" OnClick="btnSignup_Click" />
    </form>
</body>
</html>
