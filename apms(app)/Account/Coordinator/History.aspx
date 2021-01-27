<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="apms_app_.History" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>History</title>
    <link href="style.css" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Play" rel="stylesheet"/>
</head>
<body style="background:url(spbg.jpg)">
    <div class="signup">
        <center>
    <form id="form1" runat="server">
        <h2 style="color:#fff;">Search Project</h2>
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Year" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <br /><br /><br />
        <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
            <asp:ListItem>--Select Domain--</asp:ListItem>
            <asp:ListItem>WEB</asp:ListItem>
            <asp:ListItem>ANDROID</asp:ListItem>
            <asp:ListItem>IOT</asp:ListItem>
            <asp:ListItem>ARTIFICIAL INTELIGENCE</asp:ListItem>
            <asp:ListItem>CLOULD COMPUTING</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Button ID="Button1" runat="server" CssClass="sign" OnClick="Button1_Click" Text="Search" />
        <br />
        <br />
        <asp:GridView ID="History_search" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="History_search_SelectedIndexChanged1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="year" HeaderText="Year" />
                <asp:BoundField DataField="report_nm" HeaderText="file" />
                <asp:BoundField DataField="domain" HeaderText="Domain name" />
                <asp:BoundField DataField="project_title" HeaderText="Project Name" />
                <asp:BoundField DataField="g_id" HeaderText="Group ID" />
                <asp:HyperLinkField DataNavigateUrlFields="report_nm" HeaderText="Project Report" Text="View and Download" />
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
       Go to<a href="co_home.aspx" style="text-decoration: none; font-family: 'Play', sans-serif; color: yellow;">&nbsp;Homepage</a>
        <br />
    
    
    </form>
        </center>
        </div>
</body>
</html>
