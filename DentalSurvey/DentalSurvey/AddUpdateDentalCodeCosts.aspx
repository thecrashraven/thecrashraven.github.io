<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="AddUpdateDentalCodeCosts.aspx.vb" Inherits="DentalSurvey.AddUpdateDentalCodeCosts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Dental_Code" DataSourceID="SqlDataSource1">
    <ItemTemplate>
        Dental_Code:
        <asp:Label ID="Dental_CodeLabel" runat="server" Text='<%# Eval("Dental_Code") %>' />
        <br />
        Site_Code:
        <asp:Label ID="Site_CodeLabel" runat="server" Text='<%# Eval("Site_Code") %>' />
        <br />
        Year:
        <asp:Label ID="YearLabel" runat="server" Text='<%# Eval("Year") %>' />
        <br />
        Cost:
        <asp:Label ID="CostLabel" runat="server" Text='<%# Eval("Cost") %>' />
        <br />
<br />
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Dental_Code_Costs]"></asp:SqlDataSource>
</asp:Content>
