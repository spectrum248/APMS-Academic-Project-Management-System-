<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Guide_profile.aspx.cs" Inherits="apms_app_.Account.Guide.Guide_profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Coordinator profile</title>
    <link href="style.css" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Play" rel="stylesheet"/>
</head>
<body style="background:url(spbg.jpg);">
    <div class="signup">
    <center>
        
    <form id="form1" runat="server">
    
    <h2 style="color:#fff;">Profile</h2>
       
      
        <asp:TextBox ID="TextBox2" placeholder="Name" runat="server"></asp:TextBox>
        
        <asp:TextBox ID="TextBox1" placeholder="Employee ID" runat="server"></asp:TextBox>

        
        <asp:TextBox ID="TextBox3" runat="server" placeholder="Domain"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" CssClass="sign" OnClick="Button1_Click" Text="Save" />
        <br />
        <br />
        
        Go to<a href="Guide_home.aspx" style="text-decoration: none; font-family: 'Play', sans-serif; color: yellow;">&nbsp;Homepage</a>
    
        </form>
    </center>
    </div>
</body>
</html>
