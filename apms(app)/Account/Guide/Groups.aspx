<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Groups.aspx.cs" Inherits="apms_app_.Account.Guide.Groups" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>groups</title>
    <link href="style.css" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Play" rel="stylesheet"/>
</head>
<body style="background:url(spbg.jpg);">
    <div class="signup">
        <center>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" CssClass="sign" OnClick="Button1_Click" Text="Show Groups" />
    
        <br />
    
    </div>
        <asp:GridView ID="GroupDetails" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="205px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="G_id" HeaderText="Group ID" />

        
             </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <br />
        
        
        <asp:TextBox ID="TextBox1" Placeholder="Enter Group ID" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button2" CssClass="sign" runat="server" OnClick="Button2_Click1" Text="View" />

          <br />

          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="GridView1_RowCommand" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="File">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("File") %>' CommandName="DownLoad" Text='<%# Eval("File") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="size" HeaderText="Size in bytes" />
                <asp:BoundField DataField="type" HeaderText="File Type" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
  
        <br />
        <asp:TextBox ID="TextBox4" runat="server" Placeholder="Group ID"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="386px" Placeholder="File Name"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="TextBox2" runat="server" Height="100px" Width="383px" Placeholder="Comment"></asp:TextBox>
        <br />
        <br />
        <asp:Button CssClass="sign" ID="Button3" runat="server" OnClick="Button2_Click" Text="Send " Width="101px" />
    
        <br />
        <br />
        Go to<a href="Guide_home.aspx" style="text-decoration: none; font-family: 'Play', sans-serif; color: yellow;">&nbsp;Homepage</a>
    
    </form>
        </center>
        </div>
</body>
</html>
