<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="final_submission.aspx.cs" Inherits="apms_app_.final_submission" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>final submission</title>
    <link href="finalsub.css" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Play" rel="stylesheet"/>
</head>
<body style="background:url(spbg.jpg);">
    <div class="signup">
        <center>
    <form id="form1" runat="server">
    
    <h2 style="color:#fff;">Final Project Submission</h2>
        
        <asp:TextBox ID="TextBox1" placeholder="Group ID" runat="server"></asp:TextBox>
        
        <asp:TextBox ID="TextBox2" placeholder="Your Domain" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
        
        <asp:TextBox ID="TextBox3" runat="server" placeholder="Project Title"></asp:TextBox>

        <asp:TextBox ID="TextBox4" runat="server" placeholder="Year"></asp:TextBox>
        <br /><br />
        <h5 style="color:yellow;">Upload Report</h5>
        <h6>Report Name Format-ProjectTitle_Year_GroupID</h6>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        
        <asp:Button ID="Button2" CssClass="sign" runat="server" OnClick="Button2_Click" Text="Upload" />
        <asp:Button ID="Button1" CssClass="sign" runat="server" OnClick="Button1_Click" Text="Submit" />
    
    
        <br />
        Go to<a href="Stud_home.aspx" style="text-decoration: none; font-family: 'Play', sans-serif; color: yellow;">&nbsp;Homepage</a></form>
    </center>
        </div>
</body>
</html>
