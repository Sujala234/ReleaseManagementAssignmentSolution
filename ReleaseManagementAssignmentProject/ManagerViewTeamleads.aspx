<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerPage.Master" AutoEventWireup="true" CodeBehind="ManagerViewTeamleads.aspx.cs" Inherits="ReleaseManagementAssignmentProject.ManagerViewTeamleads" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>The Team Leads are :</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="teamleadid" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="teamleadid" HeaderText="teamleadid" ReadOnly="True" SortExpression="teamleadid" />
            <asp:BoundField DataField="teamid" HeaderText="teamid" SortExpression="teamid" />
            <asp:BoundField DataField="managerid" HeaderText="managerid" SortExpression="managerid" />
        </Columns>
</asp:GridView>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ReleaseManagementConnectionString4 %>" SelectCommand="SELECT * FROM [TeamLead]"></asp:SqlDataSource>

</asp:Content>
