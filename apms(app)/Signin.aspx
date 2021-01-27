<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="apms_app_.Signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signin</title>
    <link href="style.css" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Play" rel="stylesheet"/>
</head>
    <body>
        <center>
            <div class="signup">
    <form id="form1" runat="server" submitdisabledcontrols="False">
        <h2 style="color:#fff;">Sign In</h2>
        
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Username"></asp:TextBox>
        <br />
        
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" placeholder="Password" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
        <br /><br />
       <center> <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
            <asp:ListItem>Student</asp:ListItem>
            <asp:ListItem>Guide</asp:ListItem>
            <asp:ListItem>Coordinator</asp:ListItem>
        </asp:RadioButtonList></center>
        <br />
        <br />
        <center><asp:Button ID="Button1" runat="server" CssClass="sign" Text="Log in" OnClick="Button1_Click1" /></center>
    
        Already have account?<a href="Signup.aspx" style="text-decoration: none; font-family: 'Play', sans-serif; color: yellow;">&nbsp;Sign Up</a>
    </form>
                </div>
        </center>
</body>
</html>
