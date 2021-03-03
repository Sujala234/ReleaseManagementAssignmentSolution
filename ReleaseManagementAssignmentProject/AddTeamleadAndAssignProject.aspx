<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerPage.Master" AutoEventWireup="true" CodeBehind="AddTeamleadAndAssignProject.aspx.cs" Inherits="ReleaseManagementAssignmentProject.AddTeamleadAndAssignProject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Please Assign a Project</h1>
     <form>
        <table>
            <tr>
                <td><asp:Label id ="lblTeamID" runat="server" Text ="Team ID"></asp:Label></td>
                <td><asp:TextBox ID="txtTeamID" runat="server" placeholder="Enter  ID"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label id ="lblTeamName" runat="server" Text ="Team Name"></asp:Label></td>
                <td><asp:TextBox ID="txtTeamName" runat="server" placeholder="Enter Team Name"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label id ="lblProjectID" runat="server" Text ="Project ID"></asp:Label></td>
                <td><asp:TextBox ID="txtProjectID" runat="server" placeholder="Enter Project ID"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label id ="lblTeamLeadID" runat="server" Text ="Teamlead ID"></asp:Label></td>
                <td><asp:TextBox ID="txtTeamLeadID" runat="server" placeholder="Enter TeamLead ID"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Button runat="server" Text="Assign Project" ID="btnAssignProject" OnClick="btnAssignProject_Click" />
                </td>
                <td>
                    <asp:Button runat="server" Text="Reset" ID="Reset" />
                </td>
            </tr>
        </table>
    </form>
    <asp:Label ID="lblAssignProjectMessage" runat="server" Text="Assign Project status"></asp:Label>
</asp:Content>
