<%@ Page Title="ViewDentalCodes" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="ViewDentalCodes.aspx.vb" Inherits="DentalSurvey.ViewDentalCodes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Dental_Code" DataSourceID="DentalCodes">
    <Columns>
        <asp:BoundField DataField="Dental_Code" HeaderText="Dental_Code" ReadOnly="True" SortExpression="Dental_Code" />
        <asp:BoundField DataField="Dental_Code_Desc" HeaderText="Dental_Code_Desc" SortExpression="Dental_Code_Desc" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="DentalCodes" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="usp_GetDentalCodes" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
</asp:Content>
