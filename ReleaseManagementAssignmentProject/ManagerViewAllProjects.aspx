<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerPage.Master" AutoEventWireup="true" CodeBehind="ManagerViewAllProjects.aspx.cs" Inherits="ReleaseManagementAssignmentProject.ManagerViewAllProjects" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>The Projects are :</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="pid" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="pid" HeaderText="pid" ReadOnly="True" SortExpression="pid" />
            <asp:BoundField DataField="pname" HeaderText="pname" SortExpression="pname" />
            <asp:BoundField DataField="pdesc" HeaderText="pdesc" SortExpression="pdesc" />
            <asp:BoundField DataField="preq" HeaderText="preq" SortExpression="preq" />
            <asp:BoundField DataField="pstatus" HeaderText="pstatus" SortExpression="pstatus" />
        </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ReleaseManagementConnectionString3 %>" SelectCommand="SELECT * FROM [project]"></asp:SqlDataSource>
</asp:Content>

