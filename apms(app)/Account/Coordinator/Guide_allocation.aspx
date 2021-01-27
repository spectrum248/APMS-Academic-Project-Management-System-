<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Guide_allocation.aspx.cs" Inherits="apms_app_.Account.Coordinator.Guide_allocation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>guide allocation</title>
    <link href="style.css" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Play" rel="stylesheet"/>
</head>
<body style="background:url(spbg.jpg)">
     <div class="signup" style="height:500px; width:300px;">
         <center>
    <form id="form1" runat="server">
   
    <h2 style="color:#fff;">Guide Allocation</h2>
        <asp:Button ID="Button1" runat="server" CssClass="sign" OnClick="Button1_Click" Text="Refresh Group Table" />
        <br />
        <br />
           <asp:GridView ID="Groups" runat="server" AutoGenerateColumns="false" OnSelectedIndexChanged="GroupDetails_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="g_id" HeaderText="GroupID" />
                <asp:BoundField DataField="Project_nm" HeaderText="Project Name" />
                <asp:BoundField DataField="Group_Domain" HeaderText="Group_Domain" />      <asp:BoundField DataField="Allo_Guide" HeaderText="Guide allocation" />
                
            </Columns>
            </asp:GridView>
     
    
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" CssClass="sign" Text="Refresh Guide Table" />
           <br />
        <br />
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Button" />
           <asp:GridView ID="Guides" runat="server" AutoGenerateColumns="false" OnSelectedIndexChanged="GroupDetails_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="Guide_nm" HeaderText="Guide Name" />
                <asp:BoundField DataField="Guide_Domain" HeaderText="Domain" />
                <asp:BoundField DataField="Guide_Emp_id" HeaderText="Employee ID" />      
                <asp:BoundField DataField="no_Groups" HeaderText="No of Groups allocated" />  

            </Columns>
            </asp:GridView>
     
    
        <br />
        <asp:Label ID="Label3" runat="server" Text="If you want to assign guide externaly fill the following and click on update"></asp:Label>
        
        <br />
        <asp:TextBox ID="TextBox1" placeholder="Enter Group ID" runat="server"></asp:TextBox>


        <asp:TextBox ID="TextBox2" placeholder="Enter Guide ID" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button4" runat="server" CssClass="sign" OnClick="Button4_Click" Text="Update" />
     
    
        <br />
Go to<a href="co_home.aspx" style="text-decoration: none; font-family: 'Play', sans-serif; color: yellow;">&nbsp;Homepage</a>
     
    
    
    </form>
    </center>
         </div>
</body>
</html>
