<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="ReleaseManagementAssignmentProject.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <style>
body {
  background-color: lightblue;
}

h1 {
  color: white;
  text-align: center;
}


</style>
    <form id="form1" runat="server">
        <div>
            <h1>Please Sign In</h1>
            <table>
            <tr>
                <td>
                    <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label> 
                </td>
                <td>
                    <asp:TextBox ID="txtUsername" runat="server" placeholder="Enter Username"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblPassword" runat="server" Text="Password"></asp:Label> 
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" placeholder="Enter Password" textmode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button runat="server" Text="Login" ID="btnLogin" OnClick="btnLogin_Click" />
                </td>
                <td>
                    <asp:Button runat="server" Text="Reset" ID="Reset" />
                </td>
            </tr>
        </table>
        <asp:Label ID="lblMessage" runat="server" />
        </div>
    </form>
</body>
</html>
