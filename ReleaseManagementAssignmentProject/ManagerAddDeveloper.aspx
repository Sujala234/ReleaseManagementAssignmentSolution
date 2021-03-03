<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerPage.Master" AutoEventWireup="true" CodeBehind="ManagerAddDeveloper.aspx.cs" Inherits="ReleaseManagementAssignmentProject.ManagerAddDeveloper" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Please Add a Developer</h1>
    <form>
        <table>
            <tr>
                <td><asp:Label id ="lblDeveloperID" runat="server" Text ="Developer ID"></asp:Label></td>
                <td><asp:TextBox ID="txtDeveloperID" runat="server" placeholder="Enter Developer ID"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label id ="lblDeveloperName" runat="server" Text ="Developer Name"></asp:Label></td>
                <td><asp:TextBox ID="txtDeveloperName" runat="server" placeholder="Enter Developer Name"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label id ="lblGithubLink" runat="server" Text ="GitHub Link"></asp:Label></td>
                <td><asp:TextBox ID="txtGithubLink" runat="server" placeholder="Add GitHub Link"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label id ="lblTeamID" runat="server" Text ="Team ID"></asp:Label></td>
                <td><asp:TextBox ID="txtTeamID" runat="server" placeholder="Enter Team ID"></asp:TextBox></td>
            </tr>
             <tr>
                <td>
                    <asp:Button runat="server" Text="Add Developer" ID="btnAddDeveloper" OnClick="btnAddDeveloper_Click" />
                </td>
                <td>
                    <asp:Button runat="server" Text="Reset" ID="Reset" />
                </td>
            </tr>
        </table>
    </form>
    <asp:Label ID="lblAddDeveloperMessage" runat="server" Text="Add Developer Status"></asp:Label>
</asp:Content>
