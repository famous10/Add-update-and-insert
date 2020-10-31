<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="phoneApp.aspx.cs" Inherits="WebFormsApp.phoneApp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <td>
                           Name:
            </td>
            <td>
               
      <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                     PhoneNum:
            </td>
            <td>
               
            <asp:TextBox ID="txtPhoneNum" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                 Address:
            </td>
            <td>
              
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td></td>
            
            <td>
                <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" Height="26px" />
                
                <asp:Button ID="btnupdate" runat="server" Text="update" OnClick="btnupdate_Click" />
                
                <asp:Button ID="btndelete" runat="server" Text="delete" />

            </td>
  
    </table>
    </div>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
       
    </form>
     
    </body>
</html>
