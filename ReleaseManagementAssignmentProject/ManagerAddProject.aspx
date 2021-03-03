<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerPage.Master" AutoEventWireup="true" CodeBehind="ManagerAddProject.aspx.cs" Inherits="ReleaseManagementAssignmentProject.ManagerAddProject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Welcome to Add Project Page</h1>
    <form>
        <table>
            <tr>
                <td><asp:Label id ="lblProjectId" runat="server" Text ="Project ID"></asp:Label></td>
                <td><asp:TextBox ID="txtProjectId" runat="server" placeholder="Enter Project ID"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label id ="lblProjectName" runat="server" Text ="Project Name"></asp:Label></td>
                <td><asp:TextBox ID="txtProjectName" runat="server" placeholder="Enter Project Name"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label id ="lblPRojectDescription" runat="server" Text ="Project Description"></asp:Label></td>
                <td><asp:TextBox ID="txtProjectDescription" runat="server" placeholder="Enter Project Description"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label id ="lblProjectRequirements" runat="server" Text ="Project Requirements"></asp:Label></td>
                <td><asp:TextBox ID="txtProjectRequirements" runat="server" placeholder="Enter Project Requirements"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label id ="lblProjectStatus" runat="server" Text ="Project Status"></asp:Label></td>
                <td><asp:TextBox ID="txtProjectStatus" runat="server" placeholder="Enter Project Status"></asp:TextBox></td>
            </tr>
             <tr>
                <td>
                    <asp:Button runat="server" Text="Add Project" ID="btnAddProject" OnClick="btnAddProject_Click" />
                </td>
                <td>
                    <asp:Button runat="server" Text="Reset" ID="Reset" />
                </td>
            </tr>
        </table>
    </form>
    <asp:Label ID="lblAddProjMessage" runat="server" Text="Adding PRoject Status"></asp:Label>
</asp:Content>
