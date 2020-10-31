<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddUpdateDelete.aspx.cs" Inherits="WebFormsApp.AddUpdateDelete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center">
        <tr>
            <td>ID</td>
            <td>
                <asp:TextBox ID="txtID" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
            <td>Name</td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
            <td>Phone</td>
            <td><asp:TextBox ID="txtPhone" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Address</td>
            <td>
                <asp:TextBox ID="txtAdd" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" /></td>
            <td>
                <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" /></td>
            <td>
                </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
