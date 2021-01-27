<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create_group.aspx.cs" Inherits="apms_app_.Account.Student.Create_group" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>create group</title>
     <link href="style.css" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Play" rel="stylesheet"/>
</head>
<body style="background:url(spbg.jpg)">
    <div class ="signup" style="height:600px; width:300px">
    <center>

    <form id="form1" runat="server">
   
    

       <h2 style="color:#fff;">Group Creation</h2>
        
        <asp:TextBox ID="TextBox2" runat="server" placeholder="Domain"></asp:TextBox>
        <br />
        
        <asp:TextBox ID="TextBox3" runat="server" placeholder="PRN Number" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
        <br />
        
        <asp:TextBox ID="TextBox4" runat="server" Placeholder="Project Title"></asp:TextBox>
        <br />
        
        <asp:Button ID="Button1" runat="server" CssClass="sign" Text="Add" OnClick="Button1_Click" />

        <asp:Button ID="Button2" runat="server" CssClass="sign" Text="Remove" OnClick="Button2_Click" />
        <br />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Group Details"></asp:Label>
        <br />
        
        <asp:GridView ID="GroupDetails" runat="server" AutoGenerateColumns="false" OnRowCommand="GroupDetails_RowCommand" OnSelectedIndexChanged="GroupDetails_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="S_nm" HeaderText="Student Name" />
                <asp:BoundField DataField="prn" HeaderText="PRN no" />
                <asp:BoundField DataField="g_id" HeaderText="Group ID" />
            </Columns>
            </asp:GridView>
        <br />
        <asp:Button CssClass="sign" ID="Button3" runat="server" Text="Proceed For Validation" OnClick="Button3_Click" />
    
   <br />
        Go to<a href="Stud_home.aspx" style="text-decoration: none; font-family: 'Play', sans-serif; color: yellow;">&nbsp;Homepage</a>
    
    
    </form>
    <p>
      
          &nbsp;</p>
        </center>
</div>
</body>
</html>
