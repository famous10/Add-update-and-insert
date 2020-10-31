<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="designTable.aspx.cs" Inherits="WebFormsApp.employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:CheckBox ID="CheckBox1" runat="server" BorderColor="#009900" BorderStyle="Solid" BackColor="#66CCFF" />
        <asp:Table ID="Table1" runat="server" BackColor="#999999" BorderColor="#3399FF" BorderStyle="Solid" Font-Bold="True" Height="251px" style="margin-right: 29px" Width="587px">
            <asp:TableRow runat="server" BackColor="#663300">
                <asp:TableCell runat="server">Id</asp:TableCell>
                <asp:TableCell runat="server">Name</asp:TableCell>
                <asp:TableCell runat="server">Department</asp:TableCell>
                <asp:TableCell runat="server">SALARY</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server" BackColor="Silver">
                <asp:TableCell runat="server">1</asp:TableCell>
                <asp:TableCell runat="server">Charity</asp:TableCell>
                <asp:TableCell runat="server">IT</asp:TableCell>
                <asp:TableCell runat="server">500000</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server" BackColor="#663300">
                <asp:TableCell runat="server">2</asp:TableCell>
                <asp:TableCell runat="server">Mary</asp:TableCell>
                <asp:TableCell runat="server">IT</asp:TableCell>
                <asp:TableCell runat="server">60000</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server" BackColor="#CCCCCC">
                <asp:TableCell runat="server">3</asp:TableCell>
                <asp:TableCell runat="server">Famous</asp:TableCell>
                <asp:TableCell runat="server">Enginer</asp:TableCell>
                <asp:TableCell runat="server">4000000</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server" BackColor="#996633" BorderColor="#996633">
                <asp:TableCell runat="server">4</asp:TableCell>
                <asp:TableCell runat="server">Jato</asp:TableCell>
                <asp:TableCell runat="server">Enginer</asp:TableCell>
                <asp:TableCell runat="server">70000</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    <div>
    
    </div>
    </form>
</body>
</html>
