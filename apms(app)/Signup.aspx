<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="apms_app_.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUP</title>
    <link href="style.css" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Play" rel="stylesheet"/>
</head>
<body>
<div class ="signup">
    <center>
        
    <form runat="server">
         <h2 style="color:#fff;">Sign Up</h2>
   
            <asp:TextBox ID="TextBox2" placeholder="Username" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            <asp:TextBox ID="TextBox3" placeholder="Email" runat="server" OnTextChanged="TextBox3_TextChanged" ></asp:TextBox>
            <asp:TextBox ID="TextBox4" placeholder="Password" runat="server" TextMode="Password" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
      <br />
        <br />
        <center><asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
            <asp:ListItem>Student</asp:ListItem>
            <asp:ListItem>Guide</asp:ListItem>
            <asp:ListItem>Coordinator</asp:ListItem>
        </asp:RadioButtonList>
         </center>
        <asp:Button ID="Button1"  runat="server" OnClick="Button1_Click" CssClass="sign" Text="Sign up"/><br />
        Already have account?<a href="Signin.aspx" style="text-decoration: none; font-family: 'Play', sans-serif; color: yellow;">&nbsp;Sign In</a>
</div>
    </form>
    </center>
</body>

</body>
</html>
