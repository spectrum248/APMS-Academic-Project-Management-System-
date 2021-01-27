<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Stud_group.aspx.cs" Inherits="apms_app_.Account.Student.Stud_group" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>stud group</title>
    
    <link href="style.css" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Play" rel="stylesheet"/>
</head>
<body style="background:url(spbg.jpg)">
     <div class="signup">
         <center>
    <form id="form1" runat="server">
   
    
        <asp:Button ID="Button4" runat="server" CssClass="sign" Onclick="SignOut_Click" Text="SignOut" />
        <br />
        <br />
        <br />
        <br />
    
        Group Details<br />
        <br />
        <asp:GridView ID="GroupDetails" runat="server" AutoGenerateColumns="false" OnSelectedIndexChanged="GroupDetails_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="S_nm" HeaderText="Student Name" />
                <asp:BoundField DataField="prn" HeaderText="PRN no" />
                <asp:BoundField DataField="g_id" HeaderText="Group ID" />
            </Columns>
            </asp:GridView>
        
        <br />
        <asp:Button ID="Button1" runat="server" CssClass="sign" Text="Home" OnClick="Button1_Click" />
    
   
    </form>
    </center>
    </div>
</body>
</html>
