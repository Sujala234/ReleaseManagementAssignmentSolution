<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerPage.Master" AutoEventWireup="true" CodeBehind="ManagerAddTester.aspx.cs" Inherits="ReleaseManagementAssignmentProject.ManagerAddTester" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Please Add Tester</h1>
     <form>
        <table>
            <tr>
                <td><asp:Label id ="lblTesterID" runat="server" Text ="Tester ID"></asp:Label></td>
                <td><asp:TextBox ID="txtTesterID" runat="server" placeholder="Enter Tester ID"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label id ="lblTesterName" runat="server" Text ="Tester Name"></asp:Label></td>
                <td><asp:TextBox ID="txtTesterName" runat="server" placeholder="Enter Tester Name"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label id ="lblTesterStatus" runat="server" Text ="Testing Status"></asp:Label></td>
                <td><asp:TextBox ID="txtTesterStatus" runat="server" placeholder="Enter testing Status"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label id ="lblTeamID" runat="server" Text ="Team ID"></asp:Label></td>
                <td><asp:TextBox ID="txtTeamID" runat="server" placeholder="Enter Team ID"></asp:TextBox></td>
            </tr>
             <tr>
                <td>
                    <asp:Button runat="server" Text="Add Tester" ID="btnAddTester" OnClick="btnAddTester_Click" />
                </td>
                <td>
                    <asp:Button runat="server" Text="Reset" ID="Reset" />
                </td>
            </tr>
        </table>
    </form>
    <asp:Label ID="lblAddTesterMessage" runat="server" Text="Add Tester Status"></asp:Label>
</asp:Content>
