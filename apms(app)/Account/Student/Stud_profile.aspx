<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Stud_profile.aspx.cs" Inherits="apms_app_.Account.Student.Stud_profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile</title>
    <link href="style.css" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Play" rel="stylesheet"/>
</head>
<body style="background:url(spbg.jpg);">
    <div class ="signup">
    <center>
        <form id="form1" runat="server" >
                     <h2 style="color:#fff;">Profile</h2>
    
    
       
        <asp:TextBox ID="TextBox1" runat="server"  placeholder="Name" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        
   
        
        <asp:TextBox ID="TextBox3" runat="server" placeholder="PRN Number" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
        <br />
        
        <asp:TextBox ID="TextBox4" runat="server" placeholder="Mobile Number" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
   <br /><br />     
        <asp:DropDownList ID="DropDownList1" runat="server" Width="150px" CssClass="drop" placeholder="Class" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>--Select Class--</asp:ListItem>
            <asp:ListItem>SE</asp:ListItem>
            <asp:ListItem>TE</asp:ListItem>
            <asp:ListItem>BE</asp:ListItem>
        </asp:DropDownList>     
        <asp:Button ID="Button1" runat="server" Text="Save" CssClass="sign" OnClick="Button1_Click" /><br/>
        Go to<a href="Stud_home.aspx" style="text-decoration: none; font-family: 'Play', sans-serif; color: yellow;">&nbsp;Homepage</a>
       
    
    </form>
</center>
         </div>
   </body>
</html>
