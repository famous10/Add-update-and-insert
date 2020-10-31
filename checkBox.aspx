<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkBox.aspx.cs" Inherits="WebFormsApp.checkBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:CheckBox ID="CheckBox1" runat="server" Font-Bold="True" OnCheckedChanged="CheckBox1_CheckedChanged" Text="gradute" /><br />
        <asp:CheckBox ID="CheckBox3" runat="server" Font-Bold="True" Font-Italic="True" Text="Dr" /><br />
        <asp:CheckBox ID="CheckBox2" runat="server" Font-Bold="True" OnCheckedChanged="CheckBox2_CheckedChanged" Text="post gradute" /><br />
    
    </div>
        <asp:Button ID="Button1" runat="server" BackColor="Lime" BorderColor="White" OnClick="click_Me" Text="click" Height="40px" Width="90px" />
    </form>
</body>
</html>
