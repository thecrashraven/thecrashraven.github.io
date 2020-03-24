<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="ViewClinicSites.aspx.vb" Inherits="DentalSurvey.ViewClinicSites" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Site_Code,Year" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="Site_Code" HeaderText="Site_Code" ReadOnly="True" SortExpression="Site_Code" />
        <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
        <asp:BoundField DataField="County" HeaderText="County" SortExpression="County" />
        <asp:BoundField DataField="Year" HeaderText="Year" ReadOnly="True" SortExpression="Year" />
        <asp:BoundField DataField="Start_Date" HeaderText="Start_Date" SortExpression="Start_Date" />
        <asp:BoundField DataField="End_Date" HeaderText="End_Date" SortExpression="End_Date" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Clinic_Sites]"></asp:SqlDataSource>
</asp:Content>
